<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Services\UrlService;
use App\Services\PageService;

class HeaderMenu extends Component
{
    public $menuPages;
    
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->menuPages = PageService::getMenuPages();
    }

    public function getHomepageUrl(): string
    {
        return UrlService::getHomepageUrl(app()->getLocale());
    }
    
    public function getPageUrl($page): string
    {
        return PageService::getPageUrl($page);
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.header-menu', [
            'menuPages' => $this->menuPages,
            'getHomepageUrl' => fn () => $this->getHomepageUrl(),
            'getPageUrl' => fn ($page) => $this->getPageUrl($page),
        ]);
    }
}
