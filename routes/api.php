<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/* Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
}); */

Route::post('login','Auth\LoginController@login')->name('login');
Route::post('logout','Auth\LoginController@logout')->name('logout');
Route::post('refresh','Auth\LoginController@refresh')->name('refresh');
Route::post('me','Auth\LoginController@me')->name('me');

// estas rutas requiren de un token válido para poder accederse.
Route::group(['middleware' => 'jwt'], function () {
    Route::resource('/contact','ContactController');
    Route::resource('/user','UserController');
    Route::resource('/gallery','GalleryController');
    Route::resource('/address','AddressController');
    Route::resource('/phone','PhoneController');
    Route::resource('/contact_reference','ContactReferenceController');
});
//Route::get('/get-token', 'Auth\ApiTokenController@update')->name('token'); esta no es jwt