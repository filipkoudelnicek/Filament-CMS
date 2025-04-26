<?php

namespace App\Services;

use App\Models\Page;
use App\Models\Article;
use App\Models\Language;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\Tags\Url;

class UrlService
{
    protected static $defaultLocale = 'cs';

    /**
     * Získá seznam aktivních jazyků
     */
    public static function getLanguages()
    {
        return Language::where('active', true)->get();
    }

    /**
     * Generuje URL pro domovskou stránku
     */
    public static function getHomepageUrl(string $locale = null): string
    {
        if (!$locale || $locale === self::$defaultLocale) {
            return url('/');
        }
        
        return url('/' . $locale);
    }

    /**
     * Získá výchozí jazyk
     */
    public static function getDefaultLocale(): string
    {
        return self::$defaultLocale;
    }

    /**
     * Vrací pole s lokalizacemi pro použití v routách
     */
    public static function getLocales(): array
    {
        return self::getLanguages()->pluck('locale')->toArray();
    }

    /**
     * Generuje regulární výraz pro vyloučení lokalizací z URL
     */
    public static function getLocalesRegex(): string
    {
        return '^(?!' . implode('|', self::getLocales()) . ')[a-zA-Z0-9\-\/]+$';
    }

    /**
     * Generuje sitemapu
     */
    public static function generateSitemap(): string
    {
        $sitemap = Sitemap::create();
        $languages = self::getLanguages();
        
        $sitemap->add(Url::create(self::getHomepageUrl()));
        
        foreach ($languages as $language) {
            if ($language->locale !== self::$defaultLocale) {
                $sitemap->add(Url::create(self::getHomepageUrl($language->locale)));
            }
        }
        
        PageService::getActivePages()
            ->each(function ($page) use ($sitemap) {
                if ($page->type === 'homepage') return;
                
                $sitemap->add(Url::create(PageService::getPageUrl($page)));
            });
        
        ArticleService::getActiveArticles()
            ->each(function ($article) use ($sitemap) {
                $sitemap->add(Url::create(ArticleService::getArticleUrl($article)));
            });
        
        $sitemap->writeToFile(public_path('sitemap.xml'));
        return "Sitemap vygenerován!";
    }
}