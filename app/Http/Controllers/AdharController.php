<?php

namespace App\Http\Controllers;
use Spatie\PdfToText\Pdf;
use Smalot\PdfParser\Parser;
use App\Models\File;
use Illuminate\Http\Request;
use DB;


class AdharController extends Controller
{
    public function adhar(Request $request)
    {
        if (session()->has('Admin_login')) {
            $data = File::select('*')->orderBy('id', 'asc')->paginate(20);
            return view('adhar.Adhar', compact('data'));
        }
        return redirect()->route('admin');
    }

    public function store(Request $request) {

        $file = $request->file;

        $fileName = $file->getClientOriginalName();
        @$pdfParser = new \Smalot\PdfParser\Parser();
        $pdf = $pdfParser->parseFile($file->path());
        $content = $pdf->getText();
        $upload_file = new File;
        $upload_file->orig_filename = $fileName;
        $upload_file->mime_type = $file->getMimeType();
        $upload_file->filesize = $file->getSize();
        $upload_file->content = $content;
        $upload_file->save();
    
       return redirect()->back()->with('success', 'File  submitted');
    }
    
}
