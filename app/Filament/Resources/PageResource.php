<?php

namespace App\Filament\Resources;

use App\Helpers\PageTypesHelper;
use App\Filament\Modules\PageTypes\HomepagePageType;
use App\Filament\Modules\PageTypes\TextPageType;
use App\Filament\Modules\PageTypes\BlogPageType;
use App\Filament\Modules\PageTypes\ContactPageType;
use App\Filament\Modules\PageTypes\AboutPageType;
use App\Filament\Modules\SeoModule;
use App\Models\Language;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Fieldset;
use Filament\Forms\Components\Checkbox;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Forms\Components\Toggle;
use App\Filament\Resources\PageResource\Pages;
use App\Models\Page;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;
use Illuminate\Validation\Rules\Unique;

class PageResource extends Resource
{
    protected static ?string $model = Page::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'Stránky';
    protected static ?string $modelLabel = 'Stránky';
    protected static ?string $pluralModelLabel = 'Stránky';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Fieldset::make('Nastavení stránky')
                ->schema([
                    Grid::make(2)
                        ->schema([
                            TextInput::make('title')->label('Název')
                                ->required()
                                ->live(onBlur: true)
                                ->afterStateUpdated(function ($operation, $state, $set){
                                    if ($operation === 'edit'){
                                        return;
                                    }
                                    $set('slug', Str::slug($state));
                                }),
                            TextInput::make('slug')->label('Slug')
                                ->required()
                                ->minLength(1)
                                ->maxLength(255)
                                ->unique(ignoreRecord: true, modifyRuleUsing: function (Unique $rule, callable $get) {
                                    return $rule
                                        ->where('lang_locale', $get('lang_locale'))
                                        ->where('slug', $get('slug'));
                                }),
                        ]),

                    Grid::make(2)
                        ->schema([
                            Select::make('lang_locale')->label('Jazyk')
                                ->options(Language::where('active', 1)->pluck('name', 'locale'))
                                ->required(),
                            Select::make('type')->label('Typ stránky')
                                ->options(PageTypesHelper::getAvailablePageTypes())
                                ->live()
                                ->required()
                                ->afterStateUpdated(function (Select $component) {
                                    if ($section = $component->getContainer()->getComponent('pageTypes')) {
                                        $section->getChildComponentContainer()->fill();
                                    }
                                })
                                ->disabledOn('edit'),
                        ]),

                    Toggle::make('active')->label('Aktivní stránka'),

                    Fieldset::make('Nastavení menu')
                        ->schema([
                            Checkbox::make('in_menu')
                                ->default(0)
                                ->label('Zobrazit v hl. menu'),

                            Grid::make(2)
                                ->schema([
                                    TextInput::make('in_menu_title')
                                        ->default('')
                                        ->label('Název v menu'),
                                    TextInput::make('in_menu_order')
                                        ->default(0)
                                        ->numeric()
                                        ->label('Pořadí v menu'),
                                ])
                        ]),
                    ]),

                Forms\Components\Fieldset::make('Obsah')
                    ->schema([
                        Forms\Components\Section::make()
                            ->schema(fn($get) => match ($get('type')) {
                                PageTypesHelper::HOMEPAGE => HomepagePageType::getSchema(),
                                PageTypesHelper::TEXT => TextPageType::getSchema(),
                                PageTypesHelper::BLOG => BlogPageType::getSchema(),
                                PageTypesHelper::CONTACT => ContactPageType::getSchema(),
                                PageTypesHelper::ABOUT => AboutPageType::getSchema(),
                                default => [],
                            })
                            ->key('pageTypes'),
                    ])->columns(1),

            ...SeoModule::make(),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('title')->sortable()->searchable()->label('Název'),
                TextColumn::make('slug')->label('Slug'),
                TextColumn::make('lang_locale')->sortable()->label('Jazyk'),
                ToggleColumn::make('active')->sortable()->label('Aktivní'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
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
