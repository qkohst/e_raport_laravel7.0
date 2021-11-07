<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSiswaKeluarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('siswa_keluar', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('siswa_id')->unique()->unsigned();
            $table->string('keluar_karena', 30);
            $table->date('tanggal_keluar');
            $table->string('alasan_keluar')->nullable();
            $table->timestamps();

            $table->foreign('siswa_id')->references('id')->on('siswa');
        });
        // Jenis Registrasi
        // 2 = Keluar
        // 3 = Lulus
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('siswa_keluar');
    }
}
