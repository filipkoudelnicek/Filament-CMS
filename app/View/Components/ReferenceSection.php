<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\Reference;

class ReferenceSection extends Component
{
    public $references;

    /**
     * Create a new component instance.
     */
    public function __construct()
    {
        $this->references = Reference::all()->map(function ($reference) {
            $stars = $reference->content['stars'] ?? 0;

            return (object) [
                'name' => $reference->name,
                'position' => $reference->position,
                'photo' => $reference->content['photo'] ?? null,
                'referenceText' => $reference->content['reference'] ?? '',
                'fullStars' => floor($stars),
                'halfStar' => ($stars - floor($stars)) >= 0.5,
                'emptyStars' => 5 - floor($stars) - ((($stars - floor($stars)) >= 0.5 ? 1 : 0)),
            ];
        });
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.reference-section');
    }
}
