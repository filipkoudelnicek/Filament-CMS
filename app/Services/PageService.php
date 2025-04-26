<?php

namespace App\Services;

use App\Models\Page;

class PageService
{
    /**
     * Najde stejnou stránku v jiném jazyce
     */
    public static function getSamePageInDiffLang(string $currentUrl, string $targetLocale): ?Page
    {
        $slug = UrlService::getSlugFromUrl($currentUrl);
        
        if (!$slug) {
            return self::getHomepageForLocale($targetLocale);
        }
        
        if ($slug === '/') {
            return self::getHomepageForLocale($targetLocale);
        }
        
        $currentPage = Page::where('slug', $slug)
            ->where('active', true)
            ->first();
            
        if (!$currentPage) {
            return self::getHomepageForLocale($targetLocale);
        }
        
        $targetPage = Page::where('type', $currentPage->type)
            ->where('lang_locale', $targetLocale)
            ->where('active', true)
            ->first();
            
        return $targetPage ?? self::getHomepageForLocale($targetLocale);
    }
    
    /**
     * Získá slug pro blog stránku v daném jazyce
     */
    public static function getBlogSlug(string $locale = null): string
    {
        $locale = $locale ?? UrlService::getDefaultLocale();
        
        $blogPage = self::getBlogPage($locale);
            
        return $blogPage ? $blogPage->slug : 'blog';
    }

    /**
     * Získá stránku blogu pro daný jazyk
     */
    public static function getBlogPage(string $locale = null): ?Page
    {
        $locale = $locale ?? UrlService::getDefaultLocale();
        
        return Page::where('type', 'blog')
            ->where('lang_locale', $locale)
            ->where('active', true)
            ->first();
    }

    /**
     * Generuje URL pro běžnou stránku
     */
    public static function getPageUrl(Page $page): string
    {
        if ($page->type === 'homepage') {
            return UrlService::getHomepageUrl($page->lang_locale);
        }

        if ($page->lang_locale === UrlService::getDefaultLocale()) {
            return url('/' . $page->slug);
        }
        
        return url('/' . $page->lang_locale . '/' . $page->slug);
    }

    /**
     * Získá všechny aktivní stránky
     */
    public static function getActivePages()
    {
        return Page::where('active', true)->get();
    }

    /**
     * Získá všechny aktivní homepage stránky
     */
    public static function getHomepages()
    {
        return Page::where('type', 'homepage')
            ->where('active', true)
            ->get();
    }
    
    /**
     * Získá homepage pro daný jazyk
     */
    public static function getHomepageForLocale(string $locale)
    {
        return Page::where('type', 'homepage')
            ->where('lang_locale', $locale)
            ->where('active', true)
            ->first();
    }
}
