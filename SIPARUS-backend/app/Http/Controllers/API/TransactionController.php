<?php

namespace App\Http\Controllers\API;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Models\Listing;
use App\Models\Transaction;
use Illuminate\Http\JsonResponse;
use App\Http\Requests\Transaction\Store;
use Illuminate\Http\Exceptions\HttpResponseException;
use App\Http\Controllers\API;


class TransactionController extends Controller
{

    public function index()
    {
        $transactions = Transaction::with('listing')->whereUserId(Auth::id())->paginate();

        return response()->json([
            'success' => true,
            'message' => 'List of transaction',
            'data' => $transactions
        ]);
    }
    private function _fullyBookedChecker(Store $request)
    {
        $listing = Listing::find($request->listing_id);
        $runningTransactionCount = Transaction::whereListingId($listing->id)
            ->whereNot('status', 'canceled')
            ->where(function ($query) use ($request) {
                $query->whereBetween('start_date', [
                    $request->start_date,
                    $request->end_date,
                ])
                    ->orWhereBetween('end_date', [
                        $request->start_date,
                        $request->end_date,
                    ])->orWhere(function ($subquery) use ($request) {
                        $subquery->where('start_date', '<', $request->start_date)
                            ->where('end_date', '>', $request->end_date);
                    });
            })
            ->count();

        if ($runningTransactionCount >= $listing->kapasitas) {
            throw new HttpResponseException(
                response()->json([
                    'success' => false,
                    'message' => 'Listing is fully booked',
                ], JsonResponse::HTTP_UNPROCESSABLE_ENTITY)
            );
        }

        return true;
    }

    public function isAvailable(Store $request)
    {
        $this->_fullyBookedChecker($request);

        return response()->json([
            'success' => true,
            'message' => 'Listing is ready to book',
        ]);
    }

    public function store(Store $request): JsonResponse
    {
        $this->_fullyBookedChecker($request);
        $transaction = Transaction::create([
            'start_date' => $request->start_date,
            'end_date' => $request->end_date,
            'listing_id' => $request->listing_id,
            'user_id' => Auth::id(),
        ]);

        $transaction->Listing;

        return response()->json([
            'success' => true,
            'message' => 'Transaction created successfully',
            'data' => $transaction
        ]);
    }

    public function show(Transaction $transaction): JsonResponse
    {
        if ($transaction->user_id !== Auth::id()) {
            return response()->json([
                'success' => false,
                'message' => 'Transaction not found',
            ], JsonResponse::HTTP_UNAUTHORIZED);
        }
        $transaction->Listing;
        return response()->json([
            'success' => true,
            'message' => 'Get Detail of transaction',
            'data' => $transaction
        ]);
    }
}
