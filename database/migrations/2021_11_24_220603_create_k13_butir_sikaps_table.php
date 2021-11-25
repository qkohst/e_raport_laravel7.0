<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateK13ButirSikapsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('k13_butir_sikap', function (Blueprint $table) {
            $table->id();
            $table->enum('jenis_kompetensi', ['1', '2']);
            $table->string('kode', 10)->unique();
            $table->string('butir_sikap');
            $table->timestamps();

            // Jenis Kompetensi
            // 1 = Sikap Spiritual
            // 2 = Sikap Sosial 

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('k13_butir_sikap');
    }
}
