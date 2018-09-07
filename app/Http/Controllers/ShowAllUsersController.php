<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class ShowAllUsersController extends Controller
{

    public function index()
    {
		// https://stackoverflow.com/questions/26966652/class-app-http-controllers-db-not-found-and-i-also-cannot-use-a-new-model
		$users = DB::table('users')->get();
		return view('showallusers', ['users' => $users]);
    }
}
