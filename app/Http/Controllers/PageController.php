<?php

namespace App\Http\Controllers;

use App\Models\Page;
use Illuminate\View\View;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function show(string $slug = '/'): View
    {
        $page = Page::where('slug', $slug)->first();

        if (!$page) {
            abort(404);
        }

        return view("pages.{$page->type}", ['page' => $page]);
    }
}
