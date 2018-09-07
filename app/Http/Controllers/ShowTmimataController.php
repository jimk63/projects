<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ShowTmimataController extends Controller
{

   public function index()
    {
		$tmimata = \DB::select('SELECT * FROM stations s INNER JOIN buildings b ON s.st_build=b.bi_id where st_closed = ?', [0]);
        return view('showtmimata', ['tmimata' => $tmimata]);
    }
}
