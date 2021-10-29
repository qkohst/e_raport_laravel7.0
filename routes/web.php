<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', 'AuthController@index')->name('login');
Route::post('/', 'AuthController@store')->name('login');

Route::get('/logout', 'AuthController@logout')->name('logout');
Route::get('/password', 'AuthController@view_ganti_password')->name('gantipassword');
Route::post('/password', 'AuthController@ganti_password')->name('gantipassword');

Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
