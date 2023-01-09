<?php

namespace App\Http\Controllers;

use App\Models\Birthday;
use App\Models\Achievement;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;

class SettingController extends Controller
{
    public function setting()
    {
        return view('setting.setting');
    }
    
    public function setting_store(Request $request)
    {
        $r = $request->all();
        foreach ($r as $key => $v) {
            if ($file = $request->hasFile('logo_image')) {
                $file = $request->logo_image;
                $getFileExt   = $file->getClientOriginalExtension();
                $uploadedFile =   time() . '.' . $getFileExt;
                // File upload location
                $c = Storage::disk('public')->putFileAs("logo", $file, $uploadedFile);
                $v =  $c;
                $key = 'logo_image';
            }
            if (setStoreSettings($key, $v)) {
                $flag = true;
            } else {
                $flag = false;
            }
        }
        if ($flag) {
            return redirect('setting');
        } else {
            return back()->with('Fail', 'Something went wrong');
        }
    }

 
    public function birthday_list()
    {
        if (session()->has('Admin_login')) {
            $data = Birthday::select('*')->orderBy('date', 'asc')->paginate(20);
            return view('setting.birthday_list', compact('data'));
        }
        return redirect()->route('admin');
    }

    public function store_birthday(Request $request)
    {
        DB::beginTransaction();
        try {
            $Birthday = new Birthday;
            $Birthday->date = @$request->date;
            $Birthday->name = @$request->name;
            $Birthday->save();
            DB::commit();
            // all good
        } catch (\Exception $e) {
            dd($e);
        }
        if ($Birthday) {
            return redirect('birthday_list')->with('success', 'Record has been added successfully');
        } else {
            return back()->with('Fail', 'Something went wrong');
        }
    }


    public function achievement_list()
    {
        if (session()->has('Admin_login')) {
            $data = Achievement::select('*')->orderBy('date', 'asc')->paginate(20);
            return view('setting.achievement_list', compact('data'));
        }
        return redirect()->route('admin');
    }

    public function store_achievement(Request $request)
    {
        DB::beginTransaction();
        try {
            $Achievement = new Achievement;
            $Achievement->date = @$request->date;
            $Achievement->name = @$request->name;
            $Achievement->save();
            DB::commit();
            // all good
        } catch (\Exception $e) {
            dd($e);
        }
        if ($Achievement) {
            return redirect('achievement_list')->with('success', 'Record has been added successfully');
        } else {
            return back()->with('Fail', 'Something went wrong');
        }
    }


}
