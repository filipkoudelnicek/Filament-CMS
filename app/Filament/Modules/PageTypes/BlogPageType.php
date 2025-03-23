<?php

namespace App\Filament\Modules\PageTypes;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Text;

class BlogPageType
{
    public static function getSchema()
    {
        return [
            RichEditor::make('content.text')->label('Obsah blogu')->required(),
        ];
    }
}