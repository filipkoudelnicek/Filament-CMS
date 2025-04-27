<?php

namespace App\Helpers;
use App\Http\Controllers\HomepageController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\PageController;

class PageTypesHelper
{
    const HOMEPAGE = 'homepage';
    const TEXT = 'text';
    const BLOG = 'blog';
    const CONTACT = 'contact';

    public static function getAvailablePageTypes()
    {
        return [
            self::HOMEPAGE => 'Homepage',
            self::TEXT => 'Textová stránka',
            self::BLOG => 'Blog',
            self::CONTACT => 'Kontakt',
        ];
    }

    public static function getControllerForPageType($pageType)
    {
        $controllers = [
            self::HOMEPAGE => PageController::class,
            self::TEXT => PageController::class,
            self::BLOG => ArticleController::class,
            self::CONTACT => PageController::class,
        ];

        return $controllers[$pageType] ?? null;
    }
}
