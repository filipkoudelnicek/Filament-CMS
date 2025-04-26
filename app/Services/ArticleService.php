<?php

namespace App\Services;

use App\Models\Article;

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
            ->orderBy('created_at', 'desc');
            
        if ($locale) {
            $query->where('lang_locale', $locale);
        }
        
        return $query->limit($limit)->get();
    }
}