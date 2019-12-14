<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAddressesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('addresses', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('calle',30);
            $table->string('numero_interior',10);
            $table->string('numero_exterior',10);
            $table->string('colonia',30);
            $table->string('codigo_postal',10);
            $table->string('municipio',30);
            $table->string('latitude',30);
            $table->string('longitude',30);
            $table->timestamps();
        });
        Schema::table('addresses', function($table) {
            $table->unsignedBigInteger('contact_id');
            $table->foreign('contact_id')->references('id')->on('contacts')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('addresses');
    }
}
