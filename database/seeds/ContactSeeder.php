<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class ContactSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('contacts')->insert([
            
            'nombre'=>"Zincri",
            'apellido_paterno'=>"Mendoza",
            'apellido_materno'=>"Lopez",
            'edad'=>22,
            'numero_telefono'=>"9611509663",
            'created_at' => now(),
            'updated_at' => now(),
            'user_id'=>15
        ]);
    }
}
