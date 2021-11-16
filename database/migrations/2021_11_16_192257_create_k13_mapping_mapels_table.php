<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateK13MappingMapelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('k13_mapping_mapel', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('mapel_id')->unsigned();
            $table->enum('kelompok', ['A', 'B']);
            $table->integer('nomor_urut');
            $table->timestamps();

            $table->foreign('mapel_id')->references('id')->on('mapel');
        });

        // Digunakan untuk menentukan nomor urut mapel di raport K13
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('k13_mapping_mapel');
    }
}
