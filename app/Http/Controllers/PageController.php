<?php

namespace App\Http\Controllers;

use App\Models\Page;
use App\Models\Language;
use Illuminate\Http\Request;
use Awcodes\Curator\Models\Media;

class PageController extends Controller
{
    protected $defaultLocale = 'cs';

    public function homepage(Request $request)
    {
        $locale = $request->route('locale') ?? $this->defaultLocale;
        
        $page = Page::where('type', 'homepage')
            ->where('lang_locale', $locale)
            ->where('active', true)
            ->first();
            
        if (!$page) {
            abort(404);
        }
        
        return view('pages.' . $page->type, ['page' => $page]);
    }
    
    public function show(Request $request, $slug)
    {
        $locale = $request->route('locale') ?? $this->defaultLocale;
        
        $page = Page::where('slug', $slug)
            ->where('lang_locale', $locale)
            ->where('active', true)
            ->first();
            
        if (!$page) {
            abort(404);
        }
        
        return view('pages.' . $page->type, ['page' => $page]);
    }
    
    /**
     * Získá URL obrázku podle jeho ID z Curator
     */
    public static function getMediaUrl($mediaId)
    {
        if (!$mediaId) {
            return null;
        }
        
        $media = Media::find($mediaId);
        return $media ? '/storage/' . $media->path : null;
    }
}