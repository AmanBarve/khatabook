<?php

namespace App\Http\Controllers;

use App\Models\Password;
use Illuminate\Http\Request;
use DB;

class PasswordController extends Controller
{

    public function password_list(Request $request)
    {
        if (session()->has('Admin_login')) {
            $data = Password::select('*')->orderBy('id', 'asc')->paginate(20);
            return view('password.password_list', compact('data'));
        }
        return redirect()->route('admin');
    }

    public function app_datails(Request $request)
    {

        DB::beginTransaction();
        try {
            // dd($request);
            $Password = new Password();
            $Password->App_name = @$request->app_name;
            $Password->App_type = @$request->app_type;
            $Password->password = @$request->app_pass;
            $Password->save();
            DB::commit();
            // all good
        } catch (\Exception $e) {
            dd($e);
        }
        if ($Password) {
            return redirect('password_list')->with('success', 'Record has been added successfully');
        } else {
            return back()->with('Fail', 'Something went wrong');
        }
    }

    public function update_datails(Request $request)
    {

        if (session()->has('Admin_login')) {
            $id = $request->id;
            // dd($id);
            DB::beginTransaction();
            try {
           
                $data = Password::find($id);
                $data->App_name = $request->App_name;
                $data->App_type = $request->App_type;
                $data->password = $request->password;
                $data->save();
                DB::commit();
                // all good
            } catch (\Exception $e) {
                dd($e);
            }
            if ($data) {
                return redirect('password_list')->with('success', 'Record has been added successfully');
            } else {
                return back()->with('Fail', 'Something went wrong');
            }
        }
        return redirect()->route('admin');
    }

    public function deleted(Request $request)
    {
        $Password = Password::find($request->id);
        $Password->delete();
        return response()->json($Password);
    }
}
