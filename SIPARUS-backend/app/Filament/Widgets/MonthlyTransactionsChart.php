<?php

namespace App\Filament\Widgets;
use App\Models\Transaction;
use Flowframe\Trend\Trend;
use Flowframe\Trend\Trendvalue;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Carbon;

class MonthlyTransactionsChart extends ChartWidget
{
    protected static ?int $sort = 2;
    protected static ?string $heading = 'Monthly Transaction';


    protected function getData(): array
    {
        $data = Trend::model(Transaction::class)
        ->between(
            start: now()->startOfYear(),
            end: now()->endOfYear()
        )->perMonth()->count();
        return [
            'datasets'  => [
                [
                'label' => 'Jumlah Transaksi',
                'data' => $data->map(fn(TrendValue $value) => $value->aggregate),
                ],
            ],

            'labels' => $data->map(fn(TrendValue $value) => Carbon::parse($value->date)->format('M'))->toArray(),
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }

    public function getDescription(): ?string
    {
        return 'Jumlah transaksi per bulan sepanjang tahun ini untuk semua status.';
    }
}
