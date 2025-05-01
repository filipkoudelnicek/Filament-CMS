<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TeamMemberResource\Pages;
use App\Models\TeamMember;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Forms\Components\TextInput;
use Awcodes\Curator\Components\Forms\CuratorPicker;
use Filament\Forms\Components\Select;
use App\Models\Language;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TeamMemberResource extends Resource
{
    protected static ?string $model = TeamMember::class;

    protected static ?string $navigationIcon = 'heroicon-o-user-group';
    protected static ?string $navigationLabel = 'Členové týmu';
    protected static ?string $modelLabel = 'Členové týmu';
    protected static ?string $pluralModelLabel = 'Členové týmu';

    public static function form(Form $form): Form
    {
        return $form->schema([
            TextInput::make('name')->label('Jméno')->required(),
            TextInput::make('position')->label('Pozice')->required(),
            Select::make('lang_locale')->label('Jazyk')
                ->options(Language::where('active', 1)->pluck('name', 'locale'))->required(),
            TextInput::make('content.facebook')->label('Facebook'),
            TextInput::make('content.linkedin')->label('LinkedIn'),
            TextInput::make('content.twitter')->label('Twitter'),
            CuratorPicker::make('content.photo')->label('Fotka')->required(),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->searchable()->label('Jméno'),
                TextColumn::make('position')->label('Pozice'),
                TextColumn::make('lang_locale')->label('Jazyk'),
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
            'index' => Pages\ListTeamMembers::route('/'),
            'create' => Pages\CreateTeamMember::route('/create'),
            'edit' => Pages\EditTeamMember::route('/{record}/edit'),
        ];
    }
}
