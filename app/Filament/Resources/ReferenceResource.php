<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ReferenceResource\Pages;
use App\Models\Reference;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Awcodes\Curator\Components\Forms\CuratorPicker;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Select;
use App\Models\Language;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ReferenceResource extends Resource
{
    protected static ?string $model = Reference::class;

    protected static ?string $navigationIcon = 'heroicon-o-bookmark';
    protected static ?string $navigationLabel = 'Reference';
    protected static ?string $modelLabel = 'Reference';
    protected static ?string $pluralModelLabel = 'Reference';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('name')->label('Název')->required(),
                TextInput::make('position')->label('Pozice')->required(),
                Textarea::make('content.reference')->label('Reference')->required(),
                Select::make('content.stars')->label('Hodnocení')
                    ->options([
                        '0.5' => '0.5 hvězdičky',
                        '1' => '1 hvězdička',
                        '1.5' => '1.5 hvězdičky',
                        '2' => '2 hvězdičky',
                        '2.5' => '2.5 hvězdičky',
                        '3' => '3 hvězdičky',
                        '3.5' => '3.5 hvězdičky',
                        '4' => '4 hvězdičky',
                        '4.5' => '4.5 hvězdičky',
                        '5' => '5 hvězdiček',
                    ])
                ->required(),
                Select::make('lang_locale')->label('Jazyk')
                    ->options(Language::where('active', 1)->pluck('name', 'locale'))->required(),
                CuratorPicker::make('content.photo')->label('Fotka')->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('Jméno'),
                TextColumn::make('position')->limit(50)->label('Pozice'),
                TextColumn::make('content.stars')->label('Hodnocení')
                    ->formatStateUsing(function ($state) {
                        return $state ? $state . ' ★' : '0 ★';
                    }),
                TextColumn::make('lang_locale')->label('Jazyk'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListReferences::route('/'),
            'create' => Pages\CreateReference::route('/create'),
            'edit' => Pages\EditReference::route('/{record}/edit'),
        ];
    }
}
