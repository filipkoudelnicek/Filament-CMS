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
        $this->menuPages = PageService::getMenuPages();
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
