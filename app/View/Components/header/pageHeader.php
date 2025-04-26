<?php

namespace App\View\Components\Header;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use Awcodes\Curator\Models\Media;

class PageHeader extends Component
{
    public string $title;
    public ?string $background = null;

    /**
     * Create a new component instance.
     */
    public function __construct(string $title, $background = null)
    {
        $this->title = $title;

        if ($background) {
            $media = Media::find($background);
            $this->background = $media ? '/storage/' . $media->path : null;
        }
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.header.page-header');
    }
}
