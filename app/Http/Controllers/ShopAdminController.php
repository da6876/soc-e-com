<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Redirect;

class ShopAdminController extends Controller
{
    public function index(){
        $users = DB::select('select * from shop_user');
        return view('shopuser.shopuserpage',['users'=>$users]);
    }

    public function shoplogin(){
        return view('shopuser/shopuserlogin');
    }

    public function store(Request $request){

        $data = array();
        $data['name'] = $request['name'];

        $data['username'] = $request['phone'];

        $data['phone'] = $request['phone'];
        $data['email'] = $request['email'];
        $data['shop_name'] = $request['shop_name'];
        $data['shop_address'] = $request['shop_address'];
        $data['password'] = md5($request['password']);
        $data['remember_token'] =  bin2hex(openssl_random_pseudo_bytes(8));
        $data['shop_user_status'] = $request['status'];
        $data['user_type_id'] = $request['user_type_id'];


        $image_one=$request['user_image'];


        if ($image_one){

            $ran_one=str_random(5);
            $ext_one=strtolower($image_one->getClientOriginalExtension());
            $one_full_name=$ran_one.'_'.$data['username'].'.'.$ext_one;
            $upload_path_one="allImages/shopimage/";
            $image_url_one=$upload_path_one.$one_full_name;
            $success_one=$image_one->move($upload_path_one,$one_full_name);

            $data['image']=$image_url_one;
            $result = DB::table('shop_user')->insert($data);
            return json_encode(array(
                "statusCode"=>200,
                "statusMsg"=>"New Shop Added Successfully"
            ));
        }else{
            $data['image']="No Image";
            $result = DB::table('shop_user')->insert($data);
            return json_encode(array(
                "statusCode"=>200,
                "statusMsg"=>"New Shop Added Successfully!! Without Image"
            ));
        }
    }

    public function show($id){
        $singleEducation = DB::table('shop_user')
            ->where('shop_user_id', $id)
            ->get();
        return $singleEducation;
    }

    public function destroy($id){
        DB::table('shop_user')
            ->where('shop_user_id', $id)
            ->delete();
        return json_encode(array(
            "statusCode"=>200
        ));
    }



    public function storeShopLogIn(Request $request){

        $Username = $request['username'];
        $Password = md5($request['Password']);

        $result=DB::table('shop_user')
            ->where('username',$Username)
            ->where('password',$Password)
            ->first();

        if ($result){
            Session::put('shop_user_id',$result->shop_user_id);
            Session::put('user_type_id',$result->user_type_id);
            Session::put('shop_name',$result->shop_name);
            Session::put('name',$result->name);
            Session::put('username',$result->username);
            Session::put('userimage',$result->image);
            Session::put('userphone',$result->phone);
            Session::put('useremail',$result->email);
            Session::put('password',$Password);
            Session::put('user_type_id',$result->user_type_id);
            return json_encode(array(
                "statusCode"=>200,
                "statusMsg"=>"User Sign In Success!!"
            ));
        }else{
            return json_encode($Username.','.$Password);
        }

    }

    public function shopindex(){
        return view('shopuser.shophomepage');
    }

    function shopOrderInfo(){
        $shop_user_id = Session::get('shop_user_id');
        $users = DB::select("SELECT A.order_id, A.admin_id, A.product_id,
                                A.address AS ShipingAddress,A.price As OrderPrice, A.quntity As OrderQuntity, A.create_info As OrderDate,
                                A.order_status,B.image, B.name AS UserInfoName, B.phone,B.email,B.address, C.products_id, C.name As ProductName,C.image_one,C.quantity,C.discount_price
                                FROM oder_info A, admins B, products C
                                WHERE A.admin_id = B.admins_id
                                AND A.product_id = C.products_id
                                AND C.shop_id = '$shop_user_id'
                                ORDER BY A.order_id");

        return view('shopuser.shoporderinfo',['users'=>$users]);
    }
}
