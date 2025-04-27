<?php

namespace App\Livewire;

use App\Services\ArticleService;
use App\Services\LanguageService;
use Livewire\Component;
use App\Models\Article;

class LatestBlogs extends Component
{
    public $latestArticles;
    
    public function mount()
    {
        $currentLanguage = LanguageService::getCurrentLanguage();
        $this->latestArticles = ArticleService::getLatestArticles(2, $currentLanguage->locale);
    }

    /**
     * Získá URL pro konkrétní článek se správným jazykovým prefixem
     */
    public function getArticleUrl(Article $article): string
    {
        return ArticleService::getArticleUrl($article);
    }
    
    public function render()
    {
        return view('livewire.latest-blogs');
    }
}
