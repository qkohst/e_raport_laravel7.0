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

Route::get('/unauthorized', function () {
  $title = 'Unauthorized';
  return view('errorpage.401', compact('title'));
});


Route::get('/', 'AuthController@index')->name('login');
Route::post('/', 'AuthController@store')->name('login');

Route::group(['middleware' => ['auth']], function () {

  Route::get('/logout', 'AuthController@logout')->name('logout');
  Route::get('/password', 'AuthController@view_ganti_password')->name('gantipassword');
  Route::post('/password', 'AuthController@ganti_password')->name('gantipassword');

  Route::get('/dashboard', 'DashboardController@index')->name('dashboard');

  // Route User Admin 
  Route::group(['middleware' => 'checkRole:1'], function () {
    Route::group(['prefix' => 'admin'], function () {
      Route::get('user/export', 'Admin\UserController@export')->name('user.export');
      Route::resource('user', 'Admin\UserController',  [
        'uses' => ['index', 'store', 'update']
      ]);

      Route::resource('sekolah', 'Admin\SekolahController',  [
        'uses' => ['index', 'update']
      ]);

      Route::get('guru/export', 'Admin\GuruController@export')->name('guru.export');
      Route::get('guru/import', 'Admin\GuruController@format_import')->name('guru.format_import');
      Route::post('guru/import', 'Admin\GuruController@import')->name('guru.import');
      Route::resource('guru', 'Admin\GuruController',  [
        'uses' => ['index', 'store', 'update', 'destroy']
      ]);

      Route::resource('tapel', 'Admin\TapelController',  [
        'uses' => ['index', 'store', 'destroy']
      ]);

      Route::resource('kelas', 'Admin\KelasController',  [
        'uses' => ['index', 'store', 'destroy']
      ]);
    });
  });
  // End Route User Admin 

});
