<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateK13DeskripsiSikapSiswasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('k13_deskripsi_sikap_siswa', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('anggota_kelas_id')->unsigned();
            $table->enum('nilai_spiritual', ['1', '2', '3', '4']);
            $table->string('deskripsi_spiritual');
            $table->enum('nilai_sosial', ['1', '2', '3', '4']);
            $table->string('deskripsi_sosial');
            $table->timestamps();

            $table->foreign('anggota_kelas_id')->references('id')->on('anggota_kelas');

            // Nilai 
            // 1 = Kurang 
            // 2 = Cukup
            // 3 = Baik 
            // 4 = Sangat Baik
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('k13_deskripsi_sikap_siswa');
    }
}
