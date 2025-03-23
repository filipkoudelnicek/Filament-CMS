<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    public function showArticle($articleSlug)
    {
        $article = Article::where('slug', $articleSlug)
            ->where('active', 1)
            ->firstOrFail();
        
        return view('pages.article-detail', compact('article'));
    }
}
