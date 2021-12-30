<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateK13NilaiAkhirRaportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('k13_nilai_akhir_raport', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('pembelajaran_id')->unsigned();
            $table->unsignedBigInteger('anggota_kelas_id')->unsigned();
            $table->integer('kkm');
            $table->integer('nilai_pengetahuan');
            $table->enum('predikat_pengetahuan', ['A', 'B', 'C', 'D']);
            $table->integer('nilai_keterampilan');
            $table->enum('predikat_keterampilan', ['A', 'B', 'C', 'D']);
            $table->enum('nilai_spiritual', ['1', '2', '3', '4']);
            $table->enum('nilai_sosial', ['1', '2', '3', '4']);
            $table->timestamps();

            $table->foreign('pembelajaran_id')->references('id')->on('pembelajaran');
            $table->foreign('anggota_kelas_id')->references('id')->on('anggota_kelas');
        });

        // Nilai Sosial & Spiritual
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
        Schema::dropIfExists('k13_nilai_akhir_raport');
    }
}
