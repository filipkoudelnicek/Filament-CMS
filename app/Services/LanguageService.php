<?php

namespace App\Services;

use App\Models\Language;

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
        return Language::where('active', true)->get();
    }

    /**
     * Získá aktuálně aktivní jazyk
     */
    public static function getCurrentLanguage()
    {
        $locale = app()->getLocale();
        return Language::where('locale', $locale)->first();
    }
}