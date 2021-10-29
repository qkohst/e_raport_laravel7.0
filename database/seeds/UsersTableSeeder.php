<?php

use App\Admin;
use App\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'username' => 'admin',
            'password' => bcrypt('admin123456'),
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
