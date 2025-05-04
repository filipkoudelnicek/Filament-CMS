<?php

namespace App\Services;

use App\Models\Page;
use App\Models\Article;
use App\Models\Language;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\Tags\Url;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class UrlService
{
    protected static $skipSlugs = ['admin', 'livewire'];
    
    /**
     * Získá výchozí jazyk
     */
    public static function getDefaultLocale(): string
    {
        return 'cs';
    }
    
    /**
     * Získání slugu z URL
     */
    public static function getSlugFromUrl(string $url, bool $getLastPart = false): ?string
    {
        $defaultLocale = self::getDefaultLocale();
        
        if ($url === '/') {
            return $url;
        }

        if ($url === '/' . $defaultLocale) {
            return '/';
        }

        $urlArr = explode('/', ltrim($url, '/'));
        $mainSlug = $url;

        if (isset($urlArr[0])) {
            $mainSlug = $urlArr[0];
            
            $locales = self::getLocales();
            if (in_array($mainSlug, $locales)) {
                if (isset($urlArr[1])) {
                    $mainSlug = $urlArr[1];
                } else {
                    return '/';
                }
            }
        }

        if (in_array($mainSlug, self::$skipSlugs)) {
            return null;
        }

        if ($getLastPart) {
            $mainSlug = $urlArr[count($urlArr) - 1];
            $slugArr = explode('?', $mainSlug);
            $mainSlug = $slugArr[0];
        }

        $mainSlug = explode('?', $mainSlug);
        return $mainSlug[0];
    }

    /**
     * Získá seznam aktivních jazyků
     */
    public static function getLanguages()
    {
        try {
            if (Schema::hasTable('languages')) {
                return Language::where('active', true)->get();
            }
            return collect([]);
        } catch (\Exception $e) {
            return collect([]);
        }
    }

    /**
     * Generuje URL pro domovskou stránku
     */
    public static function getHomepageUrl(string $locale = null): string
    {
        $defaultLocale = self::getDefaultLocale();
        
        if (!$locale || $locale === $defaultLocale) {
            return url('/');
        }
        
        return url('/' . $locale);
    }

    /**
     * Vrací pole s lokalizacemi pro použití v routách
     */
    public static function getLocales(): array
    {
        try {
            if (Schema::hasTable('languages')) {
                return self::getLanguages()->pluck('locale')->toArray();
            }
            return [self::getDefaultLocale()];
        } catch (\Exception $e) {
            return [self::getDefaultLocale()];
        }
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
        try {
            if (!Schema::hasTable('languages') || !Schema::hasTable('pages') || !Schema::hasTable('articles')) {
                return "Některé z potřebných tabulek (languages, pages, articles) ještě neexistují. Sitemap nebyl vygenerován.";
            }

            $sitemap = Sitemap::create();
            $languages = self::getLanguages();
            $defaultLocale = self::getDefaultLocale();
            
            $sitemap->add(Url::create(self::getHomepageUrl()));
            
            foreach ($languages as $language) {
                if ($language->locale !== $defaultLocale) {
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
        } catch (\Exception $e) {
            return "Chyba při generování sitemap: " . $e->getMessage();
        }
    }
}