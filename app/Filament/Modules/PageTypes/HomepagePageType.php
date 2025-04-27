<?php

namespace App\Filament\Modules\PageTypes;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Repeater;
use Awcodes\Curator\Components\Forms\CuratorPicker;
use Filament\Forms\Components\Text;
use Filament\Forms\Components\Fieldset;

class HomepagePageType
{
    public static function getSchema()
    {
        return [
            Fieldset::make('Úvodní slider')->schema([
                Repeater::make('content.slides')->label('Slider')
                    ->schema([
                        TextInput::make('sub_title')->label('Podnadpis'),
                        TextInput::make('title')->label('Nadpis')->required(),
                        Textarea::make('text')->label('Text')->rows(3),
                        TextInput::make('button_text')->label('Text tlačítka'),
                        TextInput::make('button_link')->label('Odkaz tlačítka'),
                        CuratorPicker::make('background_image')->label('Obrázek')->required(),
                    ])->columns(2)->reorderable()->columnSpan('full'),
            ]),

            Fieldset::make('Specializace')->schema([
                Repeater::make('content.specialization')->label('Naše specializace')
                    ->schema([
                        CuratorPicker::make('icon')->label('Ikona')->required(),
                        TextInput::make('title')->label('Nadpis')->required(),
                        Textarea::make('text')->label('Text')->required(),
                    ])->columns(3)->reorderable()->maxItems(4)->columnSpan('full'),
            ]),

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

            Fieldset::make('Služby')->schema([
                TextInput::make('content.servicesSubtitle')->label('Podnadpis')->required(),
                TextInput::make('content.servicesTitle')->label('Nadpis')->required(),
                
                Repeater::make('content.services')->label('Výpis služeb')
                    ->schema([
                        CuratorPicker::make('icon')->label('Ikona')->required(),
                        TextInput::make('title')->label('Nadpis')->required(),
                        Textarea::make('text')->label('Text')->required(),
                    ])->columns(3)->reorderable()->maxItems(6)->columnSpan('full'),
            ])->columns(2),

            Fieldset::make('Sekce s čísly')->schema([
                TextInput::make('content.numbersSubtitle')->label('Podnadpis')->required(),
                TextInput::make('content.numbersTitle')->label('Nadpis')->required(),
                
                Repeater::make('content.numbers')->label('Výpis čísel')
                    ->schema([
                        TextInput::make('number')->label('Číslo')->required(),
                        TextInput::make('text')->label('Text')->required(),
                    ])->columns(2)->reorderable()->maxItems(4)->columnSpan('full'),
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

            Fieldset::make('Portfolio')->schema([
                TextInput::make('content.portfolioSubtitle')->label('Podnadpis')->required(),
                TextInput::make('content.portfolioTitle')->label('Nadpis')->required(),
                
                Repeater::make('content.portfolio')->label('Portfolio')
                    ->schema([
                        CuratorPicker::make('image')->label('Obrázek')->required(),
                        TextInput::make('title')->label('Nadpis')->required(),
                        TextInput::make('text')->label('Text')->required(),
                    ])->columns(3)->reorderable()->minItems(5)->columnSpan('full'),
            ])->columns(2),

            Fieldset::make('FAQ')->schema([
                TextInput::make('content.faqSubtitle')->label('Podnadpis')->required(),
                TextInput::make('content.faqTitle')->label('Nadpis')->required(),
                CuratorPicker::make('content.faqImage')->label('Obrázek')->required(),
                
                Repeater::make('content.faq')->label('FAQ')
                    ->schema([
                        TextInput::make('question')->label('Otázka')->required(),
                        TextInput::make('answer')->label('Odpověď')->required(),
                    ])->columns(2)->reorderable()->maxItems(4)->columnSpan('full'),

                TextInput::make('content.faqMoreQuestions')->label('Text pod FAQ')->required(),
                TextInput::make('content.faqContact')->label('Text v odkazu')->required(),
                TextInput::make('content.faqContactLink')->label('Odkaz')->required(),
            ])->columns(2),

            Fieldset::make('Tým')->schema([
                TextInput::make('content.teamSubtitle')->label('Podnadpis')->required(),
                TextInput::make('content.teamTitle')->label('Nadpis')->required(),
            ])->columns(2),

            Fieldset::make('Reference')->schema([
                TextInput::make('content.referenceSubtitle')->label('Podnadpis')->required(),
                TextInput::make('content.referenceTitle')->label('Nadpis')->required(),
            ])->columns(2),

            Fieldset::make('Kontakt')->schema([
                TextInput::make('content.contactTitleLeft')->label('Nadpis vlevo')->required(),
                Textarea::make('content.contactTextLeft')->label('Text vlevo')->required(),
                TextInput::make('content.contactTitleRight')->label('Nadpis vpravo')->required(),
                Textarea::make('content.contactTextRight')->label('Text vpravo')->required(),

                Repeater::make('content.contact')->label('Kontaktní informace')
                    ->schema([
                        CuratorPicker::make('icon')->label('Ikona')->required(),
                        TextInput::make('name')->label('Název')->required(),
                        TextInput::make('information')->label('Informace')->required(),
                    ])->columns(3)->reorderable()->maxItems(3)->columnSpan('full'),
            ])->columns(2),

            Fieldset::make('Poslední příspěvky')->schema([
                TextInput::make('content.blogSubtitle')->label('Podnadpis')->required(),
                TextInput::make('content.blogTitle')->label('Nadpis')->required(),
            ])->columns(2),
        ];
    }
}