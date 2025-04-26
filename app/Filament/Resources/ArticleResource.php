<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ArticleResource\Pages;
use App\Filament\Resources\ArticleResource\RelationManagers;
use App\Filament\Modules\SeoModule;
use App\Models\Article;
use App\Models\Language;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\Toggle;
use Awcodes\Curator\Components\Forms\CuratorPicker;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class ArticleResource extends Resource
{
    protected static ?string $model = Article::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
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
                Select::make('user_id')
                    ->default(auth()->id())
                    ->options(User::all()->pluck('name', 'id'))
                    ->nullable()
                    ->label('Uživatel'),

                Toggle::make('active')->label('Aktivní stránka'),

                DateTimePicker::make('publish_time'),

                CuratorPicker::make('content.image')->label('Obrázek'),

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
            'index' => Pages\ListArticles::route('/'),
            'create' => Pages\CreateArticle::route('/create'),
            'edit' => Pages\EditArticle::route('/{record}/edit'),
        ];
    }
}
