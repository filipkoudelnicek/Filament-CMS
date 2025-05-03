<?php

namespace App\Http\Controllers;

use App\Models\Page;
use App\Models\Language;
use Illuminate\Http\Request;
use App\Services\MediaService;

class PageController extends Controller
{
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
    
    public static function getMediaUrl($mediaId)
    {
        return MediaService::getMediaUrl($mediaId);
    }
}