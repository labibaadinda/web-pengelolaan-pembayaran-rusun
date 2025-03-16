<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use App\Models\Listing;
use App\Models\Transaction;
use Carbon\Carbon;
use NumberFormatter;

class StatsOverview extends BaseWidget
{
    private function getPercentage(int $from, int $to): float {
        $average = ($from + $to) / 2;
        if ($average === 0) {
            return 0; // Menghindari pembagian dengan nol jika rata-rata adalah 0
        }
        // Membulatkan hasil ke dua angka di belakang koma
        return round((($to - $from) / $average) * 100, 2);
    }
    
    
    
    
    

    protected function getStats(): array
    {
        // Listing baru bulan ini
        $newListing = Listing::whereMonth('created_at', Carbon::now()->month)
            ->whereYear('created_at', Carbon::now()->year)
            ->count();

        // Transaksi bulan ini
        $transactions = Transaction::whereStatus('approved')
            ->whereMonth('created_at', Carbon::now()->month)
            ->whereYear('created_at', Carbon::now()->year)
            ->get();

        // Transaksi bulan lalu
        $prevTransactions = Transaction::whereStatus('approved')
            ->whereMonth('created_at', Carbon::now()->subMonth()->month)
            ->whereYear('created_at', Carbon::now()->subMonth()->year)
            ->get();

        // Jumlah transaksi
        $transactionCount = $transactions->count();
        $prevTransactionCount = $prevTransactions->count();
        $transactionPercentage = $this->getPercentage($prevTransactionCount, $transactionCount);

        // Total pendapatan
        $currentTotalRevenue = $transactions->sum('total_price');
        $prevTotalRevenue = $prevTransactions->sum('total_price');
        $revenuePercentage = $this->getPercentage($prevTotalRevenue, $currentTotalRevenue);

        // Format mata uang
        $formatter = new NumberFormatter('id_ID', NumberFormatter::CURRENCY);
        $formattedRevenue = $formatter->formatCurrency($currentTotalRevenue, 'IDR');

        return [
            Stat::make('Listing baru bulan ini', $newListing),
            Stat::make('Transaksi bulan ini', $transactionCount)
                ->description($transactionPercentage < 0 ? "{$transactionPercentage}% lebih rendah " : "{$transactionPercentage}% lebih tinggi ")
                ->descriptionIcon($transactionPercentage < 0 ? 'heroicon-m-arrow-trending-down' : 'heroicon-m-arrow-trending-up')
                ->color($transactionPercentage < 0 ? 'danger' : 'success'),
            Stat::make('Pendapatan bulan ini', $formattedRevenue)
                ->description($revenuePercentage < 0 ? "{$revenuePercentage}% lebih rendah " : "{$revenuePercentage}% lebih tinggi ")
                ->descriptionIcon($revenuePercentage < 0 ? 'heroicon-m-arrow-trending-down' : 'heroicon-m-arrow-trending-up')
                ->color($revenuePercentage < 0 ? 'danger' : 'success'),
        ];
    }
}
