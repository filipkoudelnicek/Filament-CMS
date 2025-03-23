<?php

namespace App\Helpers;

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

}
