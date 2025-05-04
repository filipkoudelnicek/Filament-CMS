<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Schema;

class ArticleController extends Controller
{
    protected $defaultLocale;

    public function __construct()
    {
        $this->defaultLocale = config('app.locale', 'cs');
    }
    
    public function showArticle(Request $request, $articleSlug)
    {
        // Kontrola existence tabulek
        if (!Schema::hasTable('articles')) {
            return redirect('/admin');
        }
        
        $locale = $request->route('locale') ?? $this->defaultLocale;
        
        try {
            $article = Article::where('slug', $articleSlug)
                ->where('lang_locale', $locale)
                ->where('active', 1)
                ->firstOrFail();
            
            return view('pages.article-detail', compact('article'));
        } catch (\Exception $e) {
            abort(404);
        }
    }
}