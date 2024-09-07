<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Testing\Fluent\Concerns\Has;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Faker\factory as Faker;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create("id_ID");
        for ($i = 1; $i <= 2000; $i++) {
            User::insert([
                'name' =>$faker->name,
                'email' =>$faker->email,
                'password' =>Hash::make($faker->name),
            ]);
        }
        // User::create([
        //     'name' => 'Admin',
        //     'email' => 'admin@gmail.com',
        //     'password' => Hash::make('12345678'),
        // ]);
    }
}
