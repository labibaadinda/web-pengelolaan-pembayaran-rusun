<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Str;


class Listing extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'title',
        'slug',
        'description',
        'address',
        'luas_kamar_m2',
        'kapasitas',
        'price',
        'attachments',
        'full_support_available',
        'mini_canteen_available',
    ];

    protected $casts = [
        'attachments' => 'array',
    ];

    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function setTitleAttribute($value)
    {
        $this->attributes['title'] = $value;
        $this->attributes['slug'] = Str::slug($value);
    }

    public function transaction(): HasMany
    {
        return $this->hasMany(Transaction::class);
    }
}
