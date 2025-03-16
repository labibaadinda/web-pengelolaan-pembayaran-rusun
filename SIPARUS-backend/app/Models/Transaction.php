<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Model;
use App\Models\Listing;
use App\Models\User;
use Carbon\Carbon;
class Transaction extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'listing_id',
        'start_date',
        'end_date',
        'price',
        'total_bulan',
        'fee',
        'total_price',
        'status',
    ];
    

    public function setListingIdAttribute($value)
    {
        $listing = Listing::find($value);
        $totalBulan = Carbon::createFromDate($this->attributes['start_date'])->diffInMonths($this->attributes['end_date']);
        $totalPrice = $listing->price * $totalBulan;
        $fee = $totalPrice * 0.1;
        
        $this->attributes['listing_id'] = $value;
        $this->attributes['price'] = $listing->price;
        $this->attributes['total_bulan'] = $totalBulan;
        $this->attributes['fee'] = $fee;
        $this->attributes['total_price'] = $totalPrice + $fee; 
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function listing(): BelongsTo
    {
        return $this->belongsTo(Listing::class);
    }



}
