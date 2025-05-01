<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ArticleResource\Pages;
use App\Filament\Modules\SeoModule;
use App\Models\Article;
use App\Models\Language;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Fieldset;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Forms\Components\Toggle;
use Awcodes\Curator\Components\Forms\CuratorPicker;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;
use Illuminate\Validation\Rules\Unique;

class ArticleResource extends Resource
{
    protected static ?string $model = Article::class;

    protected static ?string $navigationIcon = 'heroicon-o-newspaper';
    protected static ?string $navigationLabel = 'Články';
    protected static ?string $modelLabel = 'Článek';
    protected static ?string $pluralModelLabel = 'Články';

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
                            Select::make('user_id')
                                ->default(auth()->id())
                                ->options(User::all()->pluck('name', 'id'))
                                ->nullable()
                                ->label('Uživatel'),
                        ]),

                    Grid::make(2)
                        ->schema([
                            Toggle::make('active')
                                ->label('Aktivní článek'),
                            DateTimePicker::make('publish_time'),
                        ]),
                ]),

            Forms\Components\Fieldset::make('Obsah')
                ->schema([
                    Forms\Components\Section::make()
                    ->schema([
                        CuratorPicker::make('content.banner')->label('Banner'),
                        CuratorPicker::make('content.thumbnail')->label('Thumbnail'),
                        RichEditor::make('content.body')->label('Obsah')->columnSpanFull(),
                    ])->columns(2),
                ]),

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
            'index' => Pages\ListArticles::route('/'),
            'create' => Pages\CreateArticle::route('/create'),
            'edit' => Pages\EditArticle::route('/{record}/edit'),
        ];
    }
}
