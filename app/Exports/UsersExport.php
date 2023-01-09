<?php

namespace App\Exports;

use App\Models\User;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

use Carbon\Carbon;
use App\Models\Order;
use App\Models\OrderPayments;

class UsersExport implements FromCollection, WithHeadings, WithMapping
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return OrderPayments::select('*')->with('order')->orderBy('_id', 'desc')->where('is_deleted', '=', 1)->get();
    }

    public function headings(): array
    {
        return [
            'OrderUID',
            'Transcation ID',
            'Fee / Charges',
            'Payment Method',
            'Created On',
            'Total Amount',
        ];
    }

    public function map($orderPayments): array
    { 
         $paymentmethod = paymentmethod();
         $pid = $orderPayments['payment_method'];
         $createdAt = Carbon::parse($orderPayments['created_at']);
        return [
            $orderPayments->order[0]['order_uid'],
            $orderPayments['txn'],
            $orderPayments['fee'],
            $paymentmethod[$pid]['name'],
            $createdAt->format('l jS \of F Y h:i:s'),
            $orderPayments['gross_amount'],
        ];
    }
}
