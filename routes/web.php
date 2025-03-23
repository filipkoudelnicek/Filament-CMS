<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use App\Http\Controllers\ArticleController;

Route::get('/', [PageController::class, 'show'])->name('homepage');

Route::get('/blog/{articleSlug}', [ArticleController::class, 'showArticle'])->name('article.show');

Route::get('/{slug}', [PageController::class, 'show'])->where('slug', '.*')->name('page.show');
