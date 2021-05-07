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



Route::get('/', 'MyController@getAllProduct')->name('home');
Route::get('/catelogy/sp{id}', 'MyController@getProductByCatalog');
//Sign Up
Route::post('/sign-up','MyController@postSignUp')->name('signup');
//login
Route::post('/login','MyController@postSignIn')->name('login');
//logout
Route::get('/logout','MyController@Logout')->name('logout');
//tham so khong bat buoc
// Route::get('{id?}', 'MyController@index1');
//tham so bat buoc
// Route::get('{id}', 'MyController@index2');

// Route::get('{id?}', 'MyController@index');

Route::get('/admin/{age}', 'MyController@admin')->middleware('checkage');
// Route::get('{id?}', 'MyController@index');

Route::get('/admin', 'MyController@admin')->middleware('checklogin');
Route::get('/login', 'MyController@login');

