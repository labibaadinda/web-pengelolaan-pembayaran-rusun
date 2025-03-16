<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Listing;
use App\Models\Transaction;
use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Factories\Sequence;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Buat user admin
        User::factory()->create([
            'name' => 'Admin Siparus',
            'email' => 'admin@siparus.com',
            'role' => 'admin'
        ]);


        //Buat 10 user dan 10 listing
        $users = User::factory(10)->create();
        $listings = Listing::factory(18)->create();

        //Buat 10 transaksi dengan user_id dan listing_id acak
        Transaction::factory(10)
            ->state(new Sequence(
                fn (Sequence $sequence) => [
                    'user_id' => $users->random(),
                    'listing_id' => $listings->random(),
                ]
            ))
            ->create();
    }
}
