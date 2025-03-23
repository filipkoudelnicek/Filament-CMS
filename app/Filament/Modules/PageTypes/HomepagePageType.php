<?php

namespace App\Filament\Modules\PageTypes;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Text;

class HomepagePageType
{
    public static function getSchema()
    {
        return [
            TextInput::make('content.title')->label('Úvodní název')->required(),
            Textarea::make('content.intro_text')->label('Úvodní text')->required(),
            RichEditor::make('content.text')->label('Text'),
        ];
    }
}