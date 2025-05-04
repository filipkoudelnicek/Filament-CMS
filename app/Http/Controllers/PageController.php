<?php

namespace App\Http\Controllers;

use App\Models\Page;
use App\Models\Language;
use Illuminate\Http\Request;
use App\Services\MediaService;
use Illuminate\Support\Facades\Schema;

class PageController extends Controller
{
    protected $defaultLocale;

    public function __construct()
    {
        $this->defaultLocale = config('app.locale', 'cs');
    }
    
    public function homepage(Request $request)
    {
        if (!Schema::hasTable('pages')) {
            return redirect('/admin');
        }
        
        $locale = $request->route('locale') ?? $this->defaultLocale;
        
        try {
            $page = Page::where('type', 'homepage')
                ->where('lang_locale', $locale)
                ->where('active', true)
                ->first();
                
            if (!$page) {
                return redirect('/admin');
            }
            
            return view('pages.' . $page->type, ['page' => $page]);
        } catch (\Exception $e) {
            return redirect('/admin');
        }
    }
    
    public function show(Request $request, $slug)
    {
        if (!Schema::hasTable('pages')) {
            abort(404);
        }
        
        $locale = $request->route('locale') ?? $this->defaultLocale;
        
        try {
            $page = Page::where('slug', $slug)
                ->where('lang_locale', $locale)
                ->where('active', true)
                ->first();
                
            if (!$page) {
                abort(404);
            }
            
            return view('pages.' . $page->type, ['page' => $page]);
        } catch (\Exception $e) {
            abort(404);
        }
    }
    
    public static function getMediaUrl($mediaId)
    {
        return MediaService::getMediaUrl($mediaId);
    }
}