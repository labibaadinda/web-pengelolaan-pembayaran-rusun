<?php

namespace App\Filament\Widgets;

use Filament\Tables;
use Filament\Notifications\Notification;
use Filament\Tables\Actions\Action;
use Filament\Support\Enums\FontWeight;
use App\Models\Transaction;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;

class WaitingTransactions extends BaseWidget
{
    protected static ?int $sort = 3;
    public function table(Table $table): Table
    {
        return $table
            ->query(
                Transaction::query()->whereStatus('waiting')
            )
            ->columns([
                Tables\Columns\TextColumn::make('user.name')
                    ->numeric()
                    ->sortable()
                    ->sortable()->weight(FontWeight::Bold),
                Tables\Columns\TextColumn::make('listing.title')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('start_date')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('end_date')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('total_bulan')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('total_price')
                    ->money('IDR')
                    ->sortable()
                    ->weight(FontWeight::Bold),
                Tables\Columns\TextColumn::make('status')->badge()->color(fn (string $state): string => match ($state) {
                    'waiting' => 'gray',
                    'approved' => 'info',
                    'canceled' => 'danger',
                }),
            ])->actions([
                    Action::make('approved')
                        ->button()
                        ->color('success')
                        ->requiresConfirmation()
                        ->action(function(Transaction $transaction) {
                            Transaction::find($transaction->id)->update([
                                'status' => 'approved'
                            ]);
                            Notification::make()->success()->title('Transaction Approved!')->body('Transaction has been approved.')->icon('heroicon-o-check')->send();
                        })
                        ->hidden(fn(Transaction $transaction)=>$transaction->status !== 'waiting')
                    ]);
    }
}
