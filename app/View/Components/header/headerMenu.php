<?php

namespace App\View\Components\Header;

use App\Services\UrlService;
use App\Services\PageService;
use Illuminate\View\Component;

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
        return view('components.header.header-menu');
    }
}
