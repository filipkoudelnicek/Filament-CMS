<?php

namespace App\View\Components\footer;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Services\PageService;
use App\Models\Page;
use App\Services\ArticleService;
use App\Services\LanguageService;
use App\Models\Article;
use App\Services\UrlService;

class footer extends Component
{
    public $menuPages;
    public $latestArticles;
    
    /**
     * Create a new component instance.
     */
    public function __construct()
    {
        $this->menuPages = PageService::getMenuPages();
        
        $currentLanguage = LanguageService::getCurrentLanguage();
        $this->latestArticles = ArticleService::getLatestArticles(2, $currentLanguage->locale);
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.footer.footer');
    }

    public function getHomepageUrl(): string
    {
        return UrlService::getHomepageUrl(app()->getLocale());
    }

    public function getPageUrl(Page $page): string
    {
        return PageService::getPageUrl($page);
    }

    public function getArticleUrl(Article $article): string
    {
        return ArticleService::getArticleUrl($article);
    }
}
