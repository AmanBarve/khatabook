<?php

namespace App\Http\Controllers;

use App\Models\Bank_Transaction;
use Illuminate\Http\Request;
use Carbon\Carbon;
use DB;

class BankController extends Controller
{
    public function bank_details()
    {
        return view('bank.bank_details');
    }

    public function bank_details_store(Request $request)
    {
        $r = $request->all();
        foreach ($r as $key => $v) {
            if (setStoreSettings($key, $v)) {
                $flag = true;
            } else {
                $flag = false;
            }
        }
        if ($flag) {
            return redirect('bank_details');
        } else {
            return back()->with('Fail', 'Something went wrong');
        }
    }

    public function bank_transaction(Request $request)
    {
        //For BOI
        $query = Bank_Transaction::select('*')->where('bank_type',0)->orderBy('date', 'desc');

        if ($request->input('date') != '') {
            $query->where('date', 'LIKE', $request->input('date'));
        }

        $selected_id = [];
        $selected_id['date'] = $request->date;

        $data['boi'] = $query->paginate(20);


        //For kotak
        $query1 = Bank_Transaction::select('*')->where('bank_type', 1)->orderBy('date', 'desc');
        if ($request->input('date1') != '') {
            $query1->where('date', 'LIKE', $request->input('date1'));
        }

        $selected_id['date1'] = $request->date1;

        $data['kotak'] = $query1->paginate(20);

        return view('bank.bank_transaction', compact('data', 'selected_id'));
    }

    public function store_info(Request $request)
    {
    
        DB::beginTransaction();
        try {
            $Bank_Transaction = new Bank_Transaction;
            $Bank_Transaction->bank_type = @$request->bank_type;
            $Bank_Transaction->payment_type = @$request->payment_type;
            if (@$request->author_name) {
                $author_name = @$request->author_name;
            } else {
                $author_name = @$request->author_name1;
            }
            $Bank_Transaction->author_name = @$author_name;
            // $Bank_Transaction->author_name  =  @$request->author_name;
            $Bank_Transaction->amount =  @$request->amount;
            $Bank_Transaction->date =  @$request->date;
            $Bank_Transaction->save();
            // for total balance
            $amount=$request->amount;
            // bank_type     0=boi , 1=kotak
            // payment_type  0=Credited , 1=Debited
            if($request->bank_type==0){
                $BOI_balance = getStoreSettings('BOI_balance');
                if($request->payment_type==0){
                    $v = $BOI_balance + $amount;
                    $key = 'BOI_balance';
                }else{
                    $v = $BOI_balance - $amount;
                    $key = 'BOI_balance';
                }
            }else{
                $KOTAK_balance = getStoreSettings('KOTAK_balance');
                if ($request->payment_type == 0) {
                    $v = $KOTAK_balance + $amount;
                    $key = 'KOTAK_balance';
                } else {
                    $v = $KOTAK_balance - $amount;
                    $key = 'KOTAK_balance';
                    
                }
            }
            if (setStoreSettings($key, $v)) {
                $flag = true;
            } else {
                $flag = false;
            }

            DB::commit();
            // all good
        } catch (\Exception $e) {
            dd($e);
        }
        if ($Bank_Transaction) {
            return redirect('bank_transaction')->with('success', 'Record has been added successfully');
        } else {
            return back()->with('Fail', 'Something went wrong');
        }
    }
}
