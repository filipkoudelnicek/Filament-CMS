<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\TeamMember;
use App\Services\LanguageService;

class TeamSection extends Component
{
    public $members;

    /**
     * Create a new component instance.
     */
    public function __construct()
    {
        $currentLanguage = LanguageService::getCurrentLanguage();
        $this->members = TeamMember::where('lang_locale', $currentLanguage->locale)->get();
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.team-section');
    }
}
