<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use App\Http\Controllers\ArticleController;
use App\Models\Page;
use App\Models\Language;

$languages = Language::where('active', true)->get();

$defaultLocale = 'cs';

$locales = $languages->pluck('locale')->toArray();

Route::get('/', [PageController::class, 'homepage'])->name('homepage');

$blogPage = Page::where('type', 'blog')
    ->where('lang_locale', $defaultLocale)
    ->first();
$blogSlug = $blogPage ? $blogPage->slug : 'blog';

Route::get('/' . $blogSlug . '/{articleSlug}', [ArticleController::class, 'showArticle'])
    ->name('article.show');

Route::get('/{slug}', [PageController::class, 'show'])
    ->where('slug', '^(?!' . implode('|', $locales) . ')[a-zA-Z0-9\-\/]+$')
    ->name('page.show');

foreach ($languages as $language) {
    if ($language->locale !== $defaultLocale) {
        Route::get('/' . $language->locale, [PageController::class, 'homepage'])
            ->defaults('locale', $language->locale)
            ->name($language->locale . '.homepage');
        
        $langBlogPage = Page::where('type', 'blog')
            ->where('lang_locale', $language->locale)
            ->first();
        $langBlogSlug = $langBlogPage ? $langBlogPage->slug : 'blog';
        
        Route::get('/' . $language->locale . '/' . $langBlogSlug . '/{articleSlug}', [ArticleController::class, 'showArticle'])
            ->defaults('locale', $language->locale)
            ->name($language->locale . '.article.show');
        
        Route::get('/' . $language->locale . '/{slug}', [PageController::class, 'show'])
            ->defaults('locale', $language->locale)
            ->where('slug', '[a-zA-Z0-9\-\/]+')
            ->name($language->locale . '.page.show');
    }
}