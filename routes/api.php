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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/login','Auth\LoginController@login')->name('login');
Route::post('/logout','Auth\LoginController@logout')->name('logout');
Route::get('/check','Auth\LoginController@check')->name('check');

Route::resource('/contact','ContactController');
Route::resource('/user','UserController');
Route::resource('/gallery','GalleryController');
Route::resource('/address','AddressController');
Route::resource('/phone','PhoneController');
Route::resource('/contact_reference','ContactReferenceController');