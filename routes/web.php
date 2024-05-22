<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/




Route::get('/', function () {
    return view('pages/static-sign-in');
});

Route::get('/static-sign-in', function () {
    return view('pages/static-sign-in');
})->name('static-sign-in');



Route::get('/dashboard', function () {
    return view('pages/static-sign-in');
})->name('dashboard');

Route::get('/profile', function () {
    return view('pages/static-sign-in');
})->name('profile');


Route::get('/static-sign-up', function () {
    return view('pages/static-sign-in');
})->name('static-sign-up');



