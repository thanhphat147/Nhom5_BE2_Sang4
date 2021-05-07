<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Catalog;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class MyController extends Controller
{
    // public function index() {
    //     // if($id=='index1')
    //     // return view('index1');
    //     // elseif($id=='lienhe.php')
    //     // return view('lienhe');
    //     // elseif($id=='gioithieu.php')
    //     // return view('gioithieu');
    //     // elseif($id=='ghe.php')
    //     // return view('ghe');
    //     // elseif($id=='ban.php')
    //     // return view('ban');
    //     // elseif($id=='login.php')
    //     return view('login');

    // }

    // public function doc2($id) {
    //     return $id;
    // }
    
    // public function index() {
    //     return view('index1');
    // }
    
    // public function index($id="phat") {
    //     return 'User'.$id;
    // }

    public function getAllProduct() {
        $products = Product::all();
        $catalogs = Catalog::all();
        return view('index', ['products' => $products],['catalogs' => $catalogs]);
    }

    public function admin() {
        return "Hello admin";
    }
    public function login() {
        $catalogs = Catalog::all();
        return view('product',['catalogs' => $catalogs]);
    }


    public function getProductByCatalog($id)
    {
        $products = Catalog::find($id)->product;
        return view('catelogy', ['products' => $products]);
    }
    public function postSignUp(Request $request)
    {
        $request->validate(
            [
                'email'=>'required|unique:users,email|',
                'password'=>'required|min:6',
                'name'=>'required',
                'ConfirmPassword'=>'required|same:password',
            ],
            [
                'password.min'=>'Mật khẩu phải có ít nhất 6 ký tự',
                'email.unique'=>'Email đã có người sử dụng'
            ]);
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->address = $request->address;
        $user->telephone = $request->phone;
        $user->role = 1;
        $user->save();
        return redirect()->back()->with('thanhcong','Account successfully created');
    }
    
    public function postSignIn(Request $request)
    {
        $xacThuc = array('email'=>$request->email,'password'=>$request->password);
        if(Auth::attempt($xacThuc)){
            return redirect()->back()->with(['flag'=>'success','message'=>'Logged in successfully']);
        }
        else{
            return redirect()->back()->with(['flag'=>'danger','message'=>'Login failed']);
        }
    }
    public function Logout(){
        Auth::logout();
        return redirect()->route('home');
    }
}
