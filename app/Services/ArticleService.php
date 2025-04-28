<?php

namespace App\Services;

use App\Models\Article;
use App\Services\LanguageService;
use Illuminate\Support\Carbon;

class ArticleService
{
    /**
     * Generuje URL pro článek
     */
    public static function getArticleUrl(Article $article): string
    {
        $blogSlug = PageService::getBlogSlug($article->lang_locale);
        
        if ($article->lang_locale === UrlService::getDefaultLocale()) {
            return url('/' . $blogSlug . '/' . $article->slug);
        }
        
        return url('/' . $article->lang_locale . '/' . $blogSlug . '/' . $article->slug);
    }

    /**
     * Získá všechny aktivní články
     */
    public static function getActiveArticles()
    {
        return Article::where('active', true)->get();
    }
    
    /**
     * Získá aktivní články pro konkrétní jazyk
     */
    public static function getArticlesByLocale(string $locale)
    {
        return Article::where('lang_locale', $locale)
            ->where('active', true)
            ->get();
    }
    
    /**
     * Získá nejnovější články
     */
    public static function getLatestArticles(int $limit = 2, string $locale = null)
    {
        $query = Article::where('active', true)
            ->where(function ($query) {
                $query->whereNull('publish_time')
                    ->orWhere('publish_time', '<=', Carbon::now());
            })
            ->orderBy('created_at', 'desc');
            
        if ($locale) {
            $query->where('lang_locale', $locale);
        }
        
        return $query->limit($limit)->get();
    }
    
    /**
     * Získá aktivní články pro aktuální jazyk se stránkováním
     */
    public static function getPaginatedActiveArticlesInCurrentLanguage(int $perPage = 6)
    {
        $currentLanguage = LanguageService::getCurrentLanguage();
        
        return Article::where('active', true)
                    ->where('lang_locale', $currentLanguage->locale)
                    ->where(function ($query) {
                        $query->whereNull('publish_time')
                            ->orWhere('publish_time', '<=', Carbon::now());
                    })
                    ->latest()
                    ->paginate($perPage);
    }
}