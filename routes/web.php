<?php
Route::get('/', 'PagesController@root')->name('root');
Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index')->name('home');
