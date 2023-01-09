<?php

namespace App\Http\Controllers;

use App\Models\Udhar;
use Illuminate\Http\Request;
use DB;


class UdharController extends Controller
{
    public function udhar_list(Request $request)
    {
        if (session()->has('Admin_login')) {
            $data = Udhar::select('*')->orderBy('id', 'asc')->paginate(20);
            return view('udhar.udhar_list', compact('data'));
        }
        return redirect()->route('admin');
    }

    
    public function store_info(Request $request)
    {

        if (session()->has('Admin_login')) {
         
            DB::beginTransaction();
            try {

                $Udhar = new Udhar;
                $Udhar->type = $request->type;
                $Udhar->name = $request->name;
                $Udhar->amount = $request->amount;
                $Udhar->date = $request->date;
                $Udhar->save();
                DB::commit();
                // all good
            } catch (\Exception $e) {
                dd($e);
            }
            if ($Udhar) {
                return redirect('udhar_list')->with('success', 'Record has been added successfully');
            } else {
                return back()->with('Fail', 'Something went wrong');
            }
        }
        return redirect()->route('admin');
    }

    
    public function edit_udhar(Request $request)
    {
        if (session()->has('Admin_login')) {
            $data['Udhar_list'] = Udhar::where('id', $request->id)->get()->first(); 
            return view('udhar.edit_udhar', $data);
        } else {
            return redirect('admin');
        }
    }

    public function update_udhar_list(Request $request)
    {
        $data = Udhar::find(@$request->id);
        // dd($data);
        DB::beginTransaction();
        try {
            $data->amount = @$request->amount;
            $data->save();
            DB::commit();
            // all good
        } catch (\Exception $e) {
            dd($e);
        }
        return redirect('udhar_list');
    }

    public function update(Request $request)
    {
        $Udhar = Udhar::find($request->id);
        $Udhar->status = 0;
        $Udhar->save();
        return response()->json($Udhar);
    }

    public function deleted(Request $request)
    {
        $Udhar = Udhar::find($request->id);
        $Udhar->delete();
        return response()->json($Udhar);
    }
}
