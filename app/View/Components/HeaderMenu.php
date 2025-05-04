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
    public $currentLocale;
    
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->currentLocale = app()->getLocale();
        $this->menuPages = PageService::getMenuPages($this->currentLocale);
    }

    public function getHomepageUrl(): string
    {
        $defaultLocale = UrlService::getDefaultLocale();
        
        if ($this->currentLocale === $defaultLocale) {
            return url('/');
        }
        
        return url('/' . $this->currentLocale);
    }
    
    public function getPageUrl($page): string
    {
        $defaultLocale = UrlService::getDefaultLocale();
                
        if ($page->type === 'homepage') {
            if ($this->currentLocale === $defaultLocale) {
                return url('/');
            } else {
                return url('/' . $this->currentLocale);
            }
        }
        
        if ($this->currentLocale === $defaultLocale) {
            return url('/' . $page->slug);
        } else {
            return url('/' . $this->currentLocale . '/' . $page->slug);
        }
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.header.header-menu', [
            'menuPages' => $this->menuPages,
            'getHomepageUrl' => fn () => $this->getHomepageUrl(),
            'getPageUrl' => fn ($page) => $this->getPageUrl($page),
        ]);
    }
}
