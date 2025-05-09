<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Listing;

class ListingController extends Controller
{
    public function index(): JsonResponse
    {
        $listings = Listing::withCount('transaction')->orderBy('transaction_count', 'desc')->paginate(30);
        
        return response()->json([
            'success' => true,
            'message' => 'Get all listings',
            'data' => $listings
        ]);
    }

    public function show(Listing $listing): JsonResponse
    {
        return response()->json([
            'success' => true,
            'message' => 'Get detail listing',
            'data' => $listing
        ]);
    }
}
