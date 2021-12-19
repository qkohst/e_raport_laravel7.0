<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateK13NilaiPengetahuansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('k13_nilai_pengetahuan', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('k13_rencana_nilai_pengetahuan_id')->unsigned();
            $table->unsignedBigInteger('anggota_kelas_id')->unsigned();
            $table->integer('nilai');
            $table->timestamps();

            $table->foreign('k13_rencana_nilai_pengetahuan_id')->references('id')->on('k13_rencana_nilai_pengetahuan');
            $table->foreign('anggota_kelas_id')->references('id')->on('anggota_kelas');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('k13_nilai_pengetahuan');
    }
}
