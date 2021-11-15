<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnggotaEkstrakulikulersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('anggota_ekstrakulikuler', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('siswa_id')->unsigned();
            $table->unsignedBigInteger('ekstrakulikuler_id')->unsigned();
            $table->timestamps();

            $table->foreign('siswa_id')->references('id')->on('siswa');
            $table->foreign('ekstrakulikuler_id')->references('id')->on('ekstrakulikuler');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('anggota_ekstrakulikuler');
    }
}
