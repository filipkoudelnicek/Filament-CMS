<?php

namespace App\Filament\Modules\PageTypes;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Repeater;
use Awcodes\Curator\Components\Forms\CuratorPicker;
use Filament\Forms\Components\Fieldset;

class AboutPageType
{
    public static function getSchema()
    {
        return [
            Fieldset::make('O nás')->schema([
                CuratorPicker::make('content.aboutImage')->label('Obrázek')->required(),
                TextInput::make('content.aboutNumber')->label('Číslo')->required(),
                TextInput::make('content.aboutNumberText')->label('Text pod číslem')->required(),

                TextInput::make('content.aboutSubtitle')->label('Podnadpis')->required(),
                TextInput::make('content.aboutTitle')->label('Nadpis')->required(),
                Textarea::make('content.aboutText')->label('Text')->required(),

                Repeater::make('content.about')->label('Část s procenty')
                    ->schema([
                        TextInput::make('text')->label('Text')->required(),
                        TextInput::make('percent')->label('Procenta')->required(),
                    ])->columns(2)->reorderable()->maxItems(2)->columnSpan('full'),

                TextInput::make('content.aboutButtonText')->label('Text tlačítka')->required(),
                TextInput::make('content.aboutButtonLink')->label('Odkaz tlačítka')->required(),
            ])->columns(2),

            Fieldset::make('Pracovní postup')->schema([
                TextInput::make('content.processSubtitle')->label('Podnadpis')->required(),
                TextInput::make('content.processTitle')->label('Nadpis')->required(),
                
                Repeater::make('content.process')->label('Pracovní postup')
                    ->schema([
                        CuratorPicker::make('image')->label('Obrázek')->required(),
                        TextInput::make('number')->label('Číslo')->required(),
                        TextInput::make('title')->label('Nadpis')->required(),
                        TextInput::make('text')->label('Text')->required(),
                    ])->columns(2)->reorderable()->maxItems(3)->columnSpan('full'),
            ])->columns(2),

            Fieldset::make('Tým')->schema([
                TextInput::make('content.teamSubtitle')->label('Podnadpis')->required(),
                TextInput::make('content.teamTitle')->label('Nadpis')->required(),
            ])->columns(2),

            Fieldset::make('Reference')->schema([
                TextInput::make('content.referenceSubtitle')->label('Podnadpis')->required(),
                TextInput::make('content.referenceTitle')->label('Nadpis')->required(),
            ])->columns(2),
        ];
    }
}