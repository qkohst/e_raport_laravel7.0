<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user', function (Blueprint $table) {
            $table->id();
            $table->string('username')->unique();
            $table->string('password');
            $table->enum('role', ['1', '2', '3']);
            $table->boolean('status');
            $table->rememberToken();
            $table->timestamps();
        });

        // Role 
        // 1 = Admin 
        // 2 = Guru 
        // 3 = Siswa

        // Status 
        // true = Aktif 
        // false = Non Aktif 

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user');
    }
}
