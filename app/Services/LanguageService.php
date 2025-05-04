<?php

namespace App\Services;

use App\Models\Language;
use Illuminate\Support\Facades\Schema;

class LanguageService
{
    /**
     * Změní jazyk a vrátí URL pro přesměrování
     */
    public static function changeLanguage(string $locale, string $currentUrl): string
    {
        session(['setLang' => $locale]);
        
        try {
            $wantedPage = PageService::getSamePageInDiffLang($currentUrl, $locale);
            
            if ($wantedPage) {
                if ($wantedPage->slug == '/') {
                    if ($locale == UrlService::getDefaultLocale()) {
                        return '/';
                    } else {
                        return '/' . $locale;
                    }
                } else {
                    if ($wantedPage->lang_locale == UrlService::getDefaultLocale()) {
                        return '/' . $wantedPage->slug;
                    } else {
                        return '/' . $wantedPage->lang_locale . '/' . $wantedPage->slug;
                    }
                }
            } else {
                if ($locale == UrlService::getDefaultLocale()) {
                    return '/';
                } else {
                    return '/' . $locale;
                }
            }
        } catch (\Exception $e) {
            if ($locale == UrlService::getDefaultLocale()) {
                return '/';
            } else {
                return '/' . $locale;
            }
        }
    }

    /**
     * Získá všechny aktivní jazyky
     */
    public static function getActiveLanguages()
    {
        if (!Schema::hasTable('languages')) {
            return collect([]);
        }
        
        try {
            return Language::where('active', true)->get();
        } catch (\Exception $e) {
            return collect([]);
        }
    }

    /**
     * Získá aktuálně aktivní jazyk
     */
    public static function getCurrentLanguage()
    {
        if (!Schema::hasTable('languages')) {
            return null;
        }
        
        try {
            $locale = app()->getLocale();
            return Language::where('locale', $locale)->first();
        } catch (\Exception $e) {
            return null;
        }
    }
}