<?php

namespace App\Services;

use App\Models\Article;
use App\Services\LanguageService;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Schema;

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
        if (!Schema::hasTable('articles')) {
            return collect([]);
        }
        
        try {
            return Article::where('active', true)->get();
        } catch (\Exception $e) {
            return collect([]);
        }
    }
    
    /**
     * Získá aktivní články pro konkrétní jazyk
     */
    public static function getArticlesByLocale(string $locale)
    {
        if (!Schema::hasTable('articles')) {
            return collect([]);
        }
        
        try {
            return Article::where('lang_locale', $locale)
                ->where('active', true)
                ->get();
        } catch (\Exception $e) {
            return collect([]);
        }
    }
    
    /**
     * Získá nejnovější články
     */
    public static function getLatestArticles(int $limit = 2, string $locale = null)
    {
        if (!Schema::hasTable('articles')) {
            return collect([]);
        }
        
        try {
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
        } catch (\Exception $e) {
            return collect([]);
        }
    }
    
    /**
     * Získá aktivní články pro aktuální jazyk se stránkováním
     */
    public static function getPaginatedActiveArticlesInCurrentLanguage(int $perPage = 6)
    {
        if (!Schema::hasTable('articles')) {
            return collect([]);
        }
        
        try {
            $currentLanguage = LanguageService::getCurrentLanguage();
            
            if (!$currentLanguage) {
                return collect([]);
            }
            
            return Article::where('active', true)
                ->where('lang_locale', $currentLanguage->locale)
                ->where(function ($query) {
                    $query->whereNull('publish_time')
                        ->orWhere('publish_time', '<=', Carbon::now());
                })
                ->latest()
                ->paginate($perPage);
        } catch (\Exception $e) {
            return collect([]);
        }
    }
}