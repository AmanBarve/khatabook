<?php

namespace App\Http\Controllers;

use App\Models\Note;
use Illuminate\Http\Request;
use DB;


class NoteController extends Controller
{
    public function note_list(Request $request)
    {
        if (session()->has('Admin_login')) {
            $data = Note::select('*')->orderBy('id', 'asc')->paginate(20);
            return view('note.note_list', compact('data'));
        }
        return redirect()->route('admin');
    }
}
