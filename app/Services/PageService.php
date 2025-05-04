<?php

namespace App\Services;

use App\Models\Page;
use Illuminate\Support\Facades\Schema;

class PageService
{
    /**
     * Najde stejnou stránku v jiném jazyce
     */
    public static function getSamePageInDiffLang(string $currentUrl, string $targetLocale): ?Page
    {
        if (!Schema::hasTable('pages')) {
            return null;
        }
        
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
     * Získá homepage pro daný jazyk
     */
    public static function getHomepageForLocale(string $locale)
    {
        if (!Schema::hasTable('pages')) {
            return null;
        }
        
        return Page::where('type', 'homepage')
            ->where('lang_locale', $locale)
            ->where('active', true)
            ->first();
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
        if (!Schema::hasTable('pages')) {
            return null;
        }
        
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
        $defaultLocale = UrlService::getDefaultLocale();
        
        if ($page->type === 'homepage') {
            return UrlService::getHomepageUrl($page->lang_locale);
        }
        
        if ($page->lang_locale === $defaultLocale) {
            return url('/' . $page->slug);
        }
        
        return url('/' . $page->lang_locale . '/' . $page->slug);
    }

    /**
     * Získá všechny aktivní stránky
     */
    public static function getActivePages()
    {
        if (!Schema::hasTable('pages')) {
            return collect([]);
        }
        
        try {
            return Page::where('active', true)->get();
        } catch (\Exception $e) {
            return collect([]);
        }
    }

    /**
     * Získá všechny aktivní homepage stránky
     */
    public static function getHomepages()
    {
        if (!Schema::hasTable('pages')) {
            return collect([]);
        }
        
        try {
            return Page::where('type', 'homepage')
                ->where('active', true)
                ->get();
        } catch (\Exception $e) {
            return collect([]);
        }
    }
    
    /**
     * Získá stránky pro zobrazení v menu
     */
    public static function getMenuPages(string $locale = null)
    {
        if (!Schema::hasTable('pages')) {
            return collect([]);
        }
        
        $locale = $locale ?? app()->getLocale();
        
        try {
            return Page::where('active', 1)
                ->where('in_menu', 1)
                ->where('lang_locale', $locale)
                ->orderBy('in_menu_order', 'asc')
                ->get();
        } catch (\Exception $e) {
            return collect([]);
        }
    }
}
