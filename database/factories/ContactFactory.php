<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Contact;
use Faker\Generator as Faker;

$factory->define(Contact::class, function (Faker $faker) {
    return [
        'nombre'=> $faker->name,//text($maxNbChars=30),
        'apellido_paterno'=> $faker->text($maxNbChars=30),
        'apellido_materno'=>$faker->text($maxNbChars=30),
        'edad'=> $faker->numberBetween($min = 5,$max=100),
        'numero_telefono'=>$faker->text($maxNbChars=13),
        'user_id'=> $faker->randomDigitNotNull,

    ];
});
