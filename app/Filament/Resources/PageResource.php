<?php

namespace App\Filament\Resources;

use App\Helpers\PageTypesHelper;
use App\Filament\Modules\PageTypes\HomepagePageType;
use App\Filament\Modules\PageTypes\TextPageType;
use App\Filament\Modules\PageTypes\BlogPageType;
use App\Filament\Modules\SeoModule;
use App\Models\Language;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\Toggle;
use App\Filament\Resources\PageResource\Pages;
use App\Filament\Resources\PageResource\RelationManagers;
use App\Models\Page;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class PageResource extends Resource
{
    protected static ?string $model = Page::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form->schema([
            TextInput::make('title')->required()
                ->live(onBlur: true)
                ->afterStateUpdated(function ($operation, $state, $set){
                    if ($operation === 'edit'){
                        return;
                    }
                    $set('slug', Str::slug($state));
                }),
            TextInput::make('slug')->unique(ignoreRecord: true)->required()->minLength(1)->maxLength(255),
            Select::make('lang_locale')
                ->options(Language::where('active', 1)->pluck('name', 'locale'))
                ->required(),
            Select::make('type')
                ->options(PageTypesHelper::getAvailablePageTypes())
                ->live()
                ->required()
                ->afterStateUpdated(function (Select $component) {
                    if ($section = $component->getContainer()->getComponent('pageTypes')) {
                        $section->getChildComponentContainer()->fill();
                    }
                })->disabledOn('edit'),
    
            Toggle::make('active')->label('Aktivní stránka'),
    
            Forms\Components\Section::make('Obsah stránky')
                ->schema(fn($get) => match ($get('type')) {
                    PageTypesHelper::HOMEPAGE => HomepagePageType::getSchema(),
                    PageTypesHelper::TEXT => TextPageType::getSchema(),
                    PageTypesHelper::BLOG => BlogPageType::getSchema(),
                    default => [],
                })
                ->key('pageTypes'),

            ...SeoModule::make(),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('title')->sortable(),
                TextColumn::make('slug')->sortable(),
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
            'index' => Pages\ListPages::route('/'),
            'create' => Pages\CreatePage::route('/create'),
            'edit' => Pages\EditPage::route('/{record}/edit'),
        ];
    }
}
