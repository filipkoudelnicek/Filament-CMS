<?php

namespace App\View\Components\header;

use App\Models\Page;
use App\Services\PageService;
use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class headerMenu extends Component
{
    public $menuPages;

    /**
     * Create a new component instance.
     */
    public function __construct()
    {
        $currentLocale = app()->getLocale();
        
        $this->menuPages = Page::where('active', 1)
            ->where('in_menu', 1)
            ->where('lang_locale', $currentLocale)
            ->orderBy('in_menu_order', 'asc')
            ->get();
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.header.header-menu');
    }

    public function getPageUrl(Page $page): string
    {
        return PageService::getPageUrl($page);
    }
}
