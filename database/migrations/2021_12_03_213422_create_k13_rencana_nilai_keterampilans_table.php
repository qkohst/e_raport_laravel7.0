<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateK13RencanaNilaiKeterampilansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('k13_rencana_nilai_keterampilan', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('pembelajaran_id')->unsigned();
            $table->unsignedBigInteger('k13_kd_mapel_id')->unsigned();
            $table->string('kode_penilaian', 4);
            $table->enum('teknik_penilaian', ['1', '2', '3', '4', '5']);
            $table->timestamps();

            $table->foreign('pembelajaran_id')->references('id')->on('pembelajaran');
            $table->foreign('k13_kd_mapel_id')->references('id')->on('k13_kd_mapel');

            // Teknik Penilaian
            // 1 = Parktik
            // 2 = Projek
            // 3 = Produk
            // 4 = Teknik 1
            // 5 = Teknik 2
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('k13_rencana_nilai_keterampilan');
    }
}
