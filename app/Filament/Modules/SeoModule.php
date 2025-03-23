<?php

namespace App\Filament\Modules;

use Filament\Forms\Components\Group;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;

class SeoModule
{
    public static function make(): array
    {
        return [
            Section::make('SEO Nastavení')
                ->schema([
                    TextInput::make('content.seo.title')
                        ->label('SEO Titulek')
                        ->maxLength(60),

                    Textarea::make('content.seo.description')
                        ->label('Meta Popis')
                        ->rows(3)
                        ->maxLength(160),

                    TextInput::make('content.seo.keywords')
                        ->label('Klíčová slova')
                        ->helperText('Oddělte klíčová slova čárkou.'),

                    TextInput::make('content.seo.canonical')
                        ->label('Kanonická URL')
                        ->placeholder('https://example.com/moje-stranka'),

                ])
                ->collapsible(),

            Section::make('Open Graph (Facebook & Social)')
                ->schema([
                    TextInput::make('content.seo.og_type')
                        ->label('OG Typ'),

                    TextInput::make('content.seo.og_title')
                        ->label('OG Titulek')
                        ->maxLength(60),

                    Textarea::make('content.seo.og_desc')
                        ->label('OG Popis')
                        ->rows(3)
                        ->maxLength(160),

                    FileUpload::make('content.seo.og_image')
                        ->label('OG Obrázek')
                        ->image()
                        ->directory('seo_og_images')
                        ->helperText('Doporučený rozměr: 1200x630 px'),

                ])
                ->collapsible(),
        ];
    }
}
