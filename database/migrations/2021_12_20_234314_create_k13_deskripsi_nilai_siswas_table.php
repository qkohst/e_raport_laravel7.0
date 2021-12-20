<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateK13DeskripsiNilaiSiswasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('k13_deskripsi_nilai_siswa', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('pembelajaran_id')->unsigned();
            $table->unsignedBigInteger('k13_nilai_akhir_raport_id')->unsigned();
            $table->string('deskripsi_pengetahuan', 200);
            $table->string('deskripsi_keterampilan', 200);
            $table->timestamps();
            
            $table->foreign('pembelajaran_id')->references('id')->on('pembelajaran');
            $table->foreign('k13_nilai_akhir_raport_id')->references('id')->on('k13_nilai_akhir_raport');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('k13_deskripsi_nilai_siswa');
    }
}
