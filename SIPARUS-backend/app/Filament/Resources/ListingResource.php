<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ListingResource\Pages;
use App\Filament\Resources\ListingResource\RelationManagers;
use App\Models\Listing;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Set;
use Illuminate\Support\Str;
use Filament\Support\Enums\FontWeight;


class ListingResource extends Resource
{
    protected static ?string $model = Listing::class;
    protected static ?string $navigationIcon = 'heroicon-o-home-modern';

    
    public static function validationAttributes(): array
    {
        return [
            'kapasitas' => 'Kapasitas tidak boleh bernilai negatif.',
        ];
    }
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('title')
                    ->required()
                    ->afterStateUpdated(function (Set $set, ?string $state){
                        $set('slug', Str::slug($state));
                    })
                    ->live(debounce: 250)
                    ->maxLength(255),
                Forms\Components\TextInput::make('slug')
                    ->disabled(),
                Forms\Components\Textarea::make('description')
                    ->required()
                    ->columnSpanFull(),
                Forms\Components\TextInput::make('address')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('luas_kamar_m2')
                    ->required()
                    ->numeric()
                    ->default(0)
                    ->placeholder('Masukkan luas kamar')
                    ->afterStateUpdated(function ($state, callable $set) {
                        if ($state < 0) {
                            $set('luas_kamar_m2', 0); // Perbaiki penulisan kunci
                            throw \Illuminate\Validation\ValidationException::withMessages([
                                'luas_kamar_m2' => 'Luas kamar tidak boleh bernilai negatif.', // Perbaiki format array
                            ]);
                        }
                    }),
                
                Forms\Components\TextInput::make('kapasitas')
                    ->required()
                    ->numeric()
                    ->default(0)
                    ->placeholder('Masukkan kapasitas')
                    ->afterStateUpdated(function ($state, callable $set) {
                        if ($state < 0) {
                            $set('kapasitas', 0);
                            throw \Illuminate\Validation\ValidationException::withMessages([
                                'kapasitas' => 'Kapasitas tidak boleh bernilai negatif.',
                            ]);
                        }
                    }),
                
                
                Forms\Components\TextInput::make('price')
                    ->required()
                    ->numeric()
                    ->default(0)
                    ->prefix('Rp.')
                    ->placeholder('Masukkan price') // Placeholder harus di atas
                    ->afterStateUpdated(function ($state, callable $set) {
                        if ($state < 0) {
                            $set('price', 0);
                            throw \Illuminate\Validation\ValidationException::withMessages([
                                'price' => 'Price tidak boleh bernilai negatif.',
                            ]);
                        }
                    }),
                
                    
                Forms\Components\Checkbox::make('full_support_available')
                    ->default(0),
                Forms\Components\Checkbox::make('mini_canteen_available')
                    ->default(0),
                FileUpload::make('attachments')
                    ->directory('listings')
                    ->image()
                    ->openable()
                    ->multiple()
                    ->reorderable()
                    ->appendFiles(),
            ]);
    }
    
    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')
                    ->weight(FontWeight::Bold),
                Tables\Columns\TextColumn::make('luas_kamar_m2')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('kapasitas')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('price')
                    ->money('IDR')
                    ->sortable()
                    ->weight(FontWeight::Bold),
                Tables\Columns\TextColumn::make('mini_canteen_available')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make(),
            ])
            ->actions([
                Tables\Actions\DeleteAction::make(),
                Tables\Actions\EditAction::make(),
                Tables\Actions\ForceDeleteAction::make(),
                Tables\Actions\RestoreAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    Tables\Actions\ForceDeleteBulkAction::make(),
                    Tables\Actions\RestoreBulkAction::make(),
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
            'index' => Pages\ListListings::route('/'),
            'create' => Pages\CreateListing::route('/create'),
            'edit' => Pages\EditListing::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
