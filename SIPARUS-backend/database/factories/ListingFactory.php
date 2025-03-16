<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Listing>
 */
class ListingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => ucwords(join(' ', fake()->words(2))),
            'description' => fake()->paragraph(5),
            'address'=>fake()->address(),
            'luas_kamar_m2'=>fake()->randomNumber(2, true),
            'kapasitas'=>fake()->numberBetween(50, 100),
            'price'=>fake()->randomNumber(6, true),
            'full_support_available'=>fake()->boolean(),
            'mini_canteen_available'=>fake()->boolean(),
        ];
    }
}
