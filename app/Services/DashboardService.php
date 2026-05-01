<?php

namespace App\Services;

use App\Enums\Expense\ExpenseFieldsEnum;
use App\Enums\Order\OrderFieldsEnum;
use App\Helpers\BaseHelper;
use App\Models\Expense;
use App\Models\Order;
use Carbon\Carbon;

class DashboardService
{
    public function getData(?string $date = null): array
    {
        // Use separate Carbon instances (no mutation issue)
        $currentDate  = $date ? Carbon::parse($date) : Carbon::now();
        $previousDate = (clone $currentDate)->subMonth();

        // ----------------------------
        //  ORDERS, PROFIT, LOSS
        // ----------------------------
        $selectedMonthOrders = Order::query()
            ->whereMonth('created_at', $currentDate->month)
            ->whereYear('created_at', $currentDate->year)
            ->get();

        $lastMonthOrders = Order::query()
            ->whereMonth('created_at', $previousDate->month)
            ->whereYear('created_at', $previousDate->year)
            ->get();

        $selectedMonthTotalOrders = $selectedMonthOrders->count();
        $selectedMonthTotalProfit = $selectedMonthOrders->sum(OrderFieldsEnum::PROFIT->value);
        $selectedMonthTotalLoss   = $selectedMonthOrders->sum(OrderFieldsEnum::LOSS->value);

        $lastMonthTotalOrders = $lastMonthOrders->count();
        $lastMonthTotalProfit = $lastMonthOrders->sum(OrderFieldsEnum::PROFIT->value);
        $lastMonthTotalLoss   = $lastMonthOrders->sum(OrderFieldsEnum::LOSS->value);

        // Percentage Change Calculation
        $orderPercentageChange  = $this->calculateChange($selectedMonthTotalOrders, $lastMonthTotalOrders);
        $profitPercentageChange = $this->calculateChange($selectedMonthTotalProfit, $lastMonthTotalProfit);
        $lossPercentageChange   = $this->calculateChange($selectedMonthTotalLoss, $lastMonthTotalLoss);

        // ----------------------------
        //  EXPENSES
        // ----------------------------
        $selectedMonthTotalExpenses = Expense::query()
            ->whereMonth(ExpenseFieldsEnum::EXPENSE_DATE->value, $currentDate->month)
            ->whereYear(ExpenseFieldsEnum::EXPENSE_DATE->value, $currentDate->year)
            ->sum(ExpenseFieldsEnum::AMOUNT->value);

        $lastMonthTotalExpenses = Expense::query()
            ->whereMonth(ExpenseFieldsEnum::EXPENSE_DATE->value, $previousDate->month)
            ->whereYear(ExpenseFieldsEnum::EXPENSE_DATE->value, $previousDate->year)
            ->sum(ExpenseFieldsEnum::AMOUNT->value);

        $expensePercentageChange = $this->calculateChange($selectedMonthTotalExpenses, $lastMonthTotalExpenses);

        // ----------------------------
        //  RETURN FINAL DATA
        // ----------------------------
        return [
            "total_orders"  => $this->formatStat($selectedMonthTotalOrders, $orderPercentageChange),
            "total_profit"  => $this->formatStat($selectedMonthTotalProfit, $profitPercentageChange),
            "total_loss"    => $this->formatStat($selectedMonthTotalLoss, $lossPercentageChange),
            "total_expense" => $this->formatStat($selectedMonthTotalExpenses, $expensePercentageChange),

            "profit_line_chart" => $this->prepareProfitLineChart(),
            "orders_bar_chart"  => $this->prepareOrderBarChart(),
        ];
    }

    /**
     * Calculate percentage change safely
     */
    private function calculateChange($current, $previous): float
    {
        if ($previous == 0) {
            return 0;
        }
        return (($current - $previous) / $previous) * 100;
    }

    /**
     * Format a single stat output
     */
    private function formatStat($value, $percentage): array
    {
        return [
            "selected"          => (double) $value,
            "percentage_change" => abs(BaseHelper::numberFormat($percentage)),
            "stateArray"        => $percentage < 0 ? "down" : "up",
        ];
    }

    /**
     * Prepare profit line chart
     */
    private function prepareProfitLineChart(): array
    {
        $currentYearProfit = Order::selectRaw('MONTH(created_at) as month, SUM(profit) as total_profit')
            ->whereYear('created_at', Carbon::now()->year)
            ->where('created_at', '>=', Carbon::now()->subMonths(7))
            ->groupBy('month')
            ->pluck('total_profit', 'month');

        $lastYearProfit = Order::selectRaw('MONTH(created_at) as month, SUM(profit) as total_profit')
            ->whereYear('created_at', Carbon::now()->subYear()->year)
            ->where('created_at', '>=', Carbon::now()->subYear()->subMonths(7))
            ->groupBy('month')
            ->pluck('total_profit', 'month');

        $months = [];
        $currentYearProfitValues = [];
        $lastYearProfitValues = [];

        for ($i = 6; $i >= 0; $i--) {
            $carbon = Carbon::now()->subMonths($i);
            $months[] = $carbon->format('F');
            $currentYearProfitValues[] = (double) ($currentYearProfit[$carbon->month] ?? 0);
            $lastYearProfitValues[] = (double) ($lastYearProfit[$carbon->month] ?? 0);
        }

        return [
            "months"       => $months,
            "current_year" => $currentYearProfitValues,
            "last_year"    => $lastYearProfitValues,
        ];
    }

    /**
     * Prepare order bar chart
     */
    private function prepareOrderBarChart(): array
    {
        $currentYearOrders = Order::selectRaw('MONTH(created_at) as month, COUNT(*) as total_orders')
            ->whereYear('created_at', Carbon::now()->year)
            ->where('created_at', '>=', Carbon::now()->subMonths(7))
            ->groupBy('month')
            ->pluck('total_orders', 'month');

        $lastYearOrders = Order::selectRaw('MONTH(created_at) as month, COUNT(*) as total_orders')
            ->whereYear('created_at', Carbon::now()->subYear()->year)
            ->where('created_at', '>=', Carbon::now()->subYear()->subMonths(7))
            ->groupBy('month')
            ->pluck('total_orders', 'month');

        $months = [];
        $currentYearOrdersValues = [];
        $lastYearOrdersValues = [];

        for ($i = 6; $i >= 0; $i--) {
            $carbon = Carbon::now()->subMonths($i);
            $months[] = $carbon->format('F');
            $currentYearOrdersValues[] = (double) ($currentYearOrders[$carbon->month] ?? 0);
            $lastYearOrdersValues[] = (double) ($lastYearOrders[$carbon->month] ?? 0);
        }

        return [
            "months"       => $months,
            "current_year" => $currentYearOrdersValues,
            "last_year"    => $lastYearOrdersValues,
        ];
    }
}
