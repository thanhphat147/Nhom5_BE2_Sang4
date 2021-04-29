<?php

use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            'productname' => 'Hộp 10 trứng gà tươi QLEgg',
            'producttype' => 'Thịt, cá, tôm, trứng',
            'price' => '27000',
            'description' => '',
            'image' => 't3.jpg',
            'catalogid' => Str::random(10)
        ]);

        DB::table('products')->insert([
            'productname' => 'Ba rọi heo khay 500g',
            'producttype' => 'Thịt, cá, tôm, trứng',
            'price' => '96000',
            'description' => '',
            'image' => 't1.jpg',
            'catalogid' => Str::random(10)
        ]);

        DB::table('products')->insert([
            'productname' => 'Thịt cổ bò Úc Pacow khay 250g',
            'producttype' => 'Thịt, cá, tôm, trứng',
            'price' => '87000',
            'description' => '',
            'image' => 't2.jpg',
            'catalogid' => Str::random(10)
        ]);
    }
}
