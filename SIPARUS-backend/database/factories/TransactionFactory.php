<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Carbon\Carbon;
use Faker\Factory as Faker;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Transaction>
 */
class TransactionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $faker = Faker::create();

        // Menghasilkan tanggal mulai acak dalam satu tahun terakhir
        $startDate = $faker->dateTimeBetween('-1 year', 'now'); 
        $startDateCarbon = Carbon::instance($startDate);
        
        // Menambahkan antara 1 hingga 12 bulan dari tanggal mulai
        $monthsToAdd = $faker->numberBetween(1, 12); 
        $endDate = $startDateCarbon->copy()->addMonths($monthsToAdd);
        
        return [
            'start_date' => $startDate->format('Y-m-d'),
            'end_date' => $endDate->format('Y-m-d'),
            'status' => $faker->randomElement(['waiting', 'approved', 'canceled']),
            'user_id' => \App\Models\User::factory(),
            'listing_id' => \App\Models\Listing::factory(),
        ];
    }
}
