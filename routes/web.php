<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use App\Http\Controllers\ArticleController;
use App\Models\Page;

Route::get('/', [PageController::class, 'show'])->name('homepage');

$blogPage = Page::where('type', 'blog')->first();
$blogSlug = $blogPage ? $blogPage->slug : 'blog';

Route::get('/' . $blogSlug . '/{articleSlug}', [ArticleController::class, 'showArticle'])->name('article.show');

Route::get('/{slug}', [PageController::class, 'show'])->where('slug', '.*')->name('page.show');
