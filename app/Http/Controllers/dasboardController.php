<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class dasboardController extends Controller
{
    function index(){
        return view('dashboard.index');
    }
}
