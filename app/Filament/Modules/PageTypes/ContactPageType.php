<?php

namespace App\Filament\Modules\PageTypes;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Text;
use Filament\Forms\Components\Fieldset;
use Filament\Forms\Components\Repeater;
use Awcodes\Curator\Components\Forms\CuratorPicker;

class ContactPageType
{
    public static function getSchema()
    {
        return [
            Fieldset::make('Kontakt')->schema([
                TextInput::make('content.contactTitleLeft')->label('Nadpis vlevo')->required(),
                Textarea::make('content.contactTextLeft')->label('Text vlevo')->required(),
                TextInput::make('content.contactTitleRight')->label('Nadpis vpravo')->required(),
                Textarea::make('content.contactTextRight')->label('Text vpravo')->required(),


                Fieldset::make('Telefon')->schema([
                    TextInput::make('content.phoneName')->label('Název'),
                    TextInput::make('content.phoneInformation')->label('Informace'),
                ])->columns(2),

                Fieldset::make('Email')->schema([
                    TextInput::make('content.emailName')->label('Název'),
                    TextInput::make('content.emailInformation')->label('Informace'),
                ])->columns(2),

                Fieldset::make('Adresa')->schema([
                    TextInput::make('content.addressName')->label('Název'),
                    TextInput::make('content.addressInformation')->label('Informace'),
                ])->columns(2),
            ])->columns(2),
        ];
    }
}