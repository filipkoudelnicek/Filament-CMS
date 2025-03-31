<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use App\Http\Controllers\ArticleController;
use App\Models\Page;
use App\Models\Article;
use App\Models\Language;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\Tags\Url;

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

Route::get('/sitemap', function() {
    $sitemap = Sitemap::create();
    $languages = Language::where('active', true)->get();
    $defaultLocale = 'cs';
    
    $sitemap->add(Url::create(url('/')));
    
    foreach ($languages as $language) {
        if ($language->locale !== $defaultLocale) {
            $sitemap->add(Url::create(url('/' . $language->locale)));
        }
    }
    
    Page::where('active', true)->get()
        ->each(function ($page) use ($sitemap, $defaultLocale) {
            if ($page->type === 'homepage') return;
            
            $pageUrl = $page->lang_locale === $defaultLocale 
                ? url('/' . $page->slug) 
                : url('/' . $page->lang_locale . '/' . $page->slug);
            
            $sitemap->add(Url::create($pageUrl));
        });
    
    Article::where('active', true)->get()
        ->each(function ($article) use ($sitemap, $defaultLocale) {
            $blogPage = Page::where('type', 'blog')
                ->where('lang_locale', $article->lang_locale)
                ->first();
            $blogSlug = $blogPage ? $blogPage->slug : 'blog';
            
            $articleUrl = $article->lang_locale === $defaultLocale
                ? url('/' . $blogSlug . '/' . $article->slug)
                : url('/' . $article->lang_locale . '/' . $blogSlug . '/' . $article->slug);
            
            $sitemap->add(Url::create($articleUrl));
        });
    
    $sitemap->writeToFile(public_path('sitemap.xml'));
    return "Sitemap vygenerován!";
});

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