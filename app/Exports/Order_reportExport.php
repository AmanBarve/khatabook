<?php

namespace App\Exports;

use App\Models\Order_report;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

use Carbon\Carbon;
use App\Models\Order;
use App\Models\OrderPayments;

class Order_reportExport implements FromCollection, WithHeadings, WithMapping
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return OrderPayments::select('*')->with('order')->where('is_deleted', '=', 1)->orderBy('_id', 'desc')->get();
    }

    public function headings(): array
    {
        return [
            'OrderUID',
            'Name',
            'Order status',
            'Payment status',
            'Placed On',
            'Total Amount',
        ];
    }

    public function map($orderPayments): array
    { 
        $status_codes = status_codes();
        $payment_status = payment_status();

        $codeid = $orderPayments['type'];
        $paymentid = $orderPayments->order[0]['payment_status'];

         $createdAt = Carbon::parse($orderPayments['created_at']);

        return [
            $orderPayments->order[0]['order_uid'],
            $orderPayments->order[0]['name'],
            $status_codes[$codeid]['name'],
            $payment_status[$paymentid]['name'],
            $createdAt->format('l jS \of F Y h:i:s'),
            $orderPayments['gross_amount'],
        ];
    }
}
