<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MyController extends Controller
{
    // public function index($id='index1') {
    //     if($id=='index1')
    //     return view('index1');
    //     elseif($id=='lienhe.php')
    //     return view('lienhe');
    //     elseif($id=='gioithieu.php')
    //     return view('gioithieu');
    //     elseif($id=='ghe.php')
    //     return view('ghe');
    //     elseif($id=='ban.php')
    //     return view('ban');
    // }

    // public function doc2($id) {
    //     return $id;
    // }
    
    // public function index() {
    //     return view('index1');
    // }
    
    public function index($id="phat") {
        return 'User'.$id;
    }

    public function admin($age) {
        return 'hello admin';
    }
}
