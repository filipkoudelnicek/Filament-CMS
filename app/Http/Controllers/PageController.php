<?php

namespace App\Http\Controllers;

use App\Models\Page;
use Illuminate\View\View;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function show(string $slug = '/'): View
    {
        $page = Page::where('slug', $slug)
            ->where('active', 1)
            ->firstOrFail();

        return view("pages.{$page->type}", ['page' => $page]);
    }
}
