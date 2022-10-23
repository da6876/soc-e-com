<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Redirect;

class AdminUsersController extends Controller
{
	public function AuthCheck(){
        $name = Session::get('name');
        if ($name) {
            return;
        } else {
            return Redirect::to('AdminUserLogin')->send();;
        }
    }
    
    function index(){
		$this->AuthCheck();
		$users = DB::select("select * from admins where user_type_id != '28'");
		return view('adminpart.adminuserpage',['users'=>$users]);
	}
    
    function index1(){
		$this->AuthCheck();
		$users = DB::select("select * from admins where user_type_id = '28'");
		return view('adminpart.customerinfo',['users'=>$users]);
	}
	
	public function store(Request $request){
		 
        $data = array();
        $data['name'] = $request['name'];
        $data['username'] = generateRandomString($request['name'].$request['phone']);
        $data['phone'] = $request['phone'];
        $data['email'] = $request['email'];
        $data['email_verified_at'] = bin2hex(openssl_random_pseudo_bytes(8));
        $data['password'] = md5($request['password']);
        $data['remember_token'] =  bin2hex(openssl_random_pseudo_bytes(8));
        $data['admins_status'] = $request['status'];
        $data['user_type_id'] = $request['user_type_id']; 

		
		$image_one=$request['user_image'];
		

		if ($image_one){
            $ran_one=str_random(5);
            $ext_one=strtolower($image_one->getClientOriginalExtension());
            $one_full_name=$ran_one.'_'.$data['username'].'.'.$ext_one;
            $upload_path_one="allImages/userimage/";
            $image_url_one=$upload_path_one.$one_full_name;
            $success_one=$image_one->move($upload_path_one,$one_full_name);

            $data['image']=$image_url_one;
            $result = DB::table('admins')->insert($data);
            return json_encode(array(
                "statusCode"=>200,
                "statusMsg"=>"User Added Successfully"
            ));
        }else{
            $data['slider_image']="No Image";
            $result = DB::table('admins')->insert($data);
            return json_encode(array(
                "statusCode"=>200,
                "statusMsg"=>"User Added Successfully!! Without Image"
            ));
        }
		
	}
	
	public function storeUserLogIn(Request $request){

        $Username = $request['Username'];
        $Password = md5($request['Password']);
        
        $result=DB::table('admins')
		->where('phone',$Username)
		->where('password',$Password)
		->first();

        if ($result){
			Session::put('admins_id',$result->admins_id);
			Session::put('username',$result->name);
            Session::put('userimage',$result->image);
            Session::put('userphone',$result->phone);
            Session::put('useremail',$result->email);
            Session::put('password',$Password);
            return json_encode(array(
				"statusCode"=>200,
				"statusMsg"=>"User Sign In Success!!"
			));
        }else{
            return json_encode(array(
				"statusCode"=>201,
				"statusMsg"=>"User Sign In Failed!!"
			));
        }
 
	}
	
	public function storeUser(Request $request){
		$user_type_id = '28';
		$status = 'A';
        $data = array();
        $data['name'] = $request['Name'];
        $data['username'] = generateRandomString($request['Name'].$request['Mobile']);
        $data['phone'] = $request['Mobile'];
        $data['email'] = $request['Email'];
        $data['email_verified_at'] = bin2hex(openssl_random_pseudo_bytes(8));
        $data['password'] = md5($request['password']);
        $data['remember_token'] =  bin2hex(openssl_random_pseudo_bytes(8));
        $data['admins_status'] = $status;
        $data['user_type_id'] = $user_type_id; 
		$data['image']="No Image";
		
            $result = DB::table('admins')->insert($data);
			if($result){
                $result1=DB::table('admins')
                    ->where('phone',$data['phone'])
                    ->where('password',$data['password'])
                    ->first();
                 if ($result1){
                    Session::put('admins_id',$result1->admins_id);
                    Session::put('username',$result1->name);
                    Session::put('userimage',$result1->image);
                    Session::put('userphone',$result1->phone);
                    Session::put('useremail',$result1->email);
                    Session::put('password',$result1->password);
                    return json_encode(array(
                        "statusCode"=>200,
                        "statusMsg"=>"User Sign In Success!!"
                    ));
                }else{
                    return json_encode(array(
                        "statusCode"=>201,
                        "statusMsg"=>"User Sign In Failed!!"
                    ));
                }
			}else{
				return json_encode(array(
					"statusCode"=>201,
					"statusMsg"=>"User Sign Up Failed!!"
				));
			}
        
		
	}
	
    public function userProfileUpdate(Request $request){
        
        
        $admins_id=Session::get('admins_id');
        $password=Session::get('password');
		$user_type_id = '29';
		$status = 'A';
        
		$data = array();
        $data['name'] = $request['Name'];
        $data['username'] = generateRandomString($request['Name'].$request['Mobile']);
        $data['phone'] = $request['Mobile'];
        $data['email'] = $request['Email'];
        $data['admins_status'] = $status;

		
		$image_one=$request['imageFile'];
		

		if ($image_one){
            $ran_one=str_random(5);
            $ext_one=strtolower($image_one->getClientOriginalExtension());
            $one_full_name=$ran_one.'_'.$data['username'].'.'.$ext_one;
            $upload_path_one="allImages/userimage/";
            $image_url_one=$upload_path_one.$one_full_name;
            $success_one=$image_one->move($upload_path_one,$one_full_name);

            $data['image']=$image_url_one;

            $result = DB::table('admins')
                ->where('admins_id', $admins_id)
                ->update($data);
            
            return json_encode(array(
                "statusCode"=>200,
                "statusMsg"=>"User Profile Updated"
            ));
        }else{
            $data['slider_image']="No Image";

            $result = DB::table('admins')
                ->where('admins_id', $admins_id)
                ->update($data);
            
            return json_encode(array(
                "statusCode"=>200,
                "statusMsg"=>"User Profile Updated Failed"
            ));
        }
        
    
	}
	
	public function destroy($id){
        DB::table('admins')
            ->where('admins_id', $id)
            ->delete();
        return json_encode(array(
            "statusCode"=>200
        ));
    }
    
    public function show($id){
        $singleEducation = DB::table('admins')
            ->where('admins_id', $id)
            ->get();
        return $singleEducation;
    }
	
    public function AdminUserLogin(){

        return view('adminpart.loginpage');
    }
	
    public function AdminUserLoginCheck(Request $request){
		
		$UserName = $request['UserName'];
		$UserPassword = md5($request['UserPassword']);
		
		$result=DB::table('admins')
		->where('email',$UserName)
		->where('password',$UserPassword)
		->first();

        if ($result){
			Session::put('admins_id',$result->admins_id);
			Session::put('user_type_id',$result->user_type_id);
			Session::put('name',$result->name);
            Session::put('image',$result->image);
            Session::put('phone',$result->phone);
            Session::put('email',$result->email);
            return json_encode(array(
					"statusCode" => 200,
					"statusType" => 'Succsess',
					"statusMsg" => "Login Success"
				));
        }else{
            return json_encode(array(
				"statusCode" => 201,
				"statusType" => 'Failed',
				"statusMsg" => "User Name Password Donot match"
			));
        }
    }
	
    public function userLogOut(){
        Session::flush();
        return Redirect::to('AdminUserLogin');
    }

    public function changeOrderStatus(Request $request){
        $create_by = Session::get('email');

        $OrderId = $request['OrderId'];
        $status = $request['status'];

        if ($OrderId != "" || $status != "") {

            $result = DB::table('oder_info')
                ->where('order_id', $OrderId)
                ->update(['order_status' => $status, 'update_by' => $create_by]);
            if ($result) {
                return json_encode(array(
                    "statusCode" => 200,
                    "statusMsg" => "Status Update Successfully"
                ));
            } else {
                return json_encode(array(
                    "statusCode" => 201,
                    "statusMsg" => "Status Update Failed"
                ));
            }
        } else {
            return json_encode(array(
                "statusCode" => 201,
                "statusMsg" => "Status Update Failed". $OrderId
            ));
        }
    }
    
    public function usersLogOut(){
        Session::flush();
        return Redirect::to('DACommerceLogin');
    }

    public function shopLogOut(){
        Session::flush();
        return Redirect::to('ShopAdminLogin');
    }

}

	function generateRandomString($name) {
		$characters = $name;
		$charactersLength = strlen($characters);
		$randomString = '';
		for ($i = 0; $i < 10; $i++) {
			$randomString .= $characters[rand(0, $charactersLength - 1)];
		}
		return $randomString;
	}
