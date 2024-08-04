<?php

use App\Models\Admin;
use App\Models\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeders.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'username' => 'admin',
            'password' => bcrypt('123123123'),
            'role' => '1',
            'status' => true,
        ]);

        Admin::create([
            'user_id' => '1',
            'nama_lengkap' => 'Admin',
            'jenis_kelamin' => 'L',
            'tanggal_lahir' => '1998-05-30',
            'email' => 'admin@mail.com',
            'nomor_hp' => '085232077932',
            'avatar' => 'default.png',
        ]);
    }
}
