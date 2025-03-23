<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;

Route::get('/', [PageController::class, 'show'])->name('homepage');

Route::get('/{slug}', [PageController::class, 'show'])->where('slug', '.*')->name('page.show');
