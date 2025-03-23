<?php

namespace App\Helpers;
use App\Http\Controllers\HomepageController;
use App\Http\Controllers\ArticleController;

class PageTypesHelper
{
    const HOMEPAGE = 'homepage';
    const TEXT = 'text';
    const BLOG = 'blog';

    public static function getAvailablePageTypes()
    {
        return [
            self::HOMEPAGE => 'Homepage',
            self::TEXT => 'Textová stránka',
            self::BLOG => 'Blog',
        ];
    }

    public static function getControllerForPageType($pageType)
    {
        $controllers = [
            self::HOMEPAGE => PageController::class,
            self::TEXT => PageController::class,
            self::BLOG => ArticleController::class,
        ];

        return $controllers[$pageType] ?? null;
    }
}
