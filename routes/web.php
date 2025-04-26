<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use App\Http\Controllers\ArticleController;
use App\Services\UrlService;
use App\Services\PageService;
use App\Services\ArticleService;

$languages = UrlService::getLanguages();
$defaultLocale = UrlService::getDefaultLocale();
$locales = UrlService::getLocales();
$blogSlug = PageService::getBlogSlug();

Route::get('/', [PageController::class, 'homepage'])
    ->name('homepage');

Route::get('/' . $blogSlug . '/{articleSlug}', [ArticleController::class, 'showArticle'])
    ->name('article.show');

Route::get('/{slug}', [PageController::class, 'show'])
    ->where('slug', UrlService::getLocalesRegex())
    ->name('page.show');
    
// Ostatní jazyky
foreach ($languages as $language) {
    if ($language->locale !== $defaultLocale) {
        Route::get('/' . $language->locale, [PageController::class, 'homepage'])
            ->defaults('locale', $language->locale)
            ->name($language->locale . '.homepage');
        
        $langBlogSlug = PageService::getBlogSlug($language->locale);
        Route::get('/' . $language->locale . '/' . $langBlogSlug . '/{articleSlug}', [ArticleController::class, 'showArticle'])
            ->defaults('locale', $language->locale)
            ->name($language->locale . '.article.show');
        
        Route::get('/' . $language->locale . '/{slug}', [PageController::class, 'show'])
            ->defaults('locale', $language->locale)
            ->where('slug', '[a-zA-Z0-9\-\/]+')
            ->name($language->locale . '.page.show');
    }
}

Route::get('/sitemap', function() {
    return UrlService::generateSitemap();
});