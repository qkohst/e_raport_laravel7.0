<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateK13NilaiSosialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('k13_nilai_sosial', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('k13_rencana_nilai_sosial_id')->unsigned();
            $table->unsignedBigInteger('anggota_kelas_id')->unsigned();
            $table->enum('nilai', ['1', '2', '3', '4']);
            $table->timestamps();

            $table->foreign('k13_rencana_nilai_sosial_id')->references('id')->on('k13_rencana_nilai_sosial');
            $table->foreign('anggota_kelas_id')->references('id')->on('anggota_kelas');
        });

        // Nilai 
        // 1 = Kurang 
        // 2 = Cukup
        // 3 = Baik 
        // 4 = Sangat Baik
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('k13_nilai_sosial');
    }
}
