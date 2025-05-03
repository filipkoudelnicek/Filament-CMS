<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    public function showArticle(Request $request, $articleSlug)
    {
        $locale = $request->route('locale') ?? $this->defaultLocale;
        
        $article = Article::where('slug', $articleSlug)
            ->where('lang_locale', $locale)
            ->where('active', 1)
            ->firstOrFail();
        
        return view('pages.article-detail', compact('article'));
    }
}