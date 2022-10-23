<?php

namespace App\Http\Controllers;
use DB;
use Session;
use Redirect;

use Illuminate\Http\Request;

class BrandsController extends Controller
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
        $shop_user_id =Session::get('shop_user_id');
        if (isset($shop_user_id)){
		    $brand = DB::select("select * from brands  where shop_id = '$shop_user_id' ");
        }else{
            $brand = DB::select('select * from brands');
        }
		return view('adminpart.adminbrandpage',['brand'=>$brand]);
	}
	
	public function store(Request $request){
		 
        $data = array();
        $data['brands_name'] = $request['brandname'];
        $data['brands_status'] = $request['status'];
        $shop_user_id =Session::get('shop_user_id');
        if (isset($shop_user_id)) {
            $data['shop_id'] = $shop_user_id;
        }else{
            $data['shop_id'] = '0';
        }
		$result = DB::table('brands')->insert($data);
		
		if ($result){
            return json_encode(array(
                "statusCode"=>200,
                "statusMsg"=>"Brand Added Successfully"
            ));
        } else{
            return json_encode(array(
                "statusCode"=>201,
                "statusMsg"=>"Brand Added Failed!!"
            ));
        }
		
	}
	
	public function show($id){
		$singleEducation = DB::table('brands')
			->where('brands_id', $id)
			->get();
		return $singleEducation;
	}
	
	
	
	public function destroy($id){
        DB::table('brands')
            ->where('brands_id', $id)
            ->delete();
        return json_encode(array(
            "statusCode"=>200
        ));
    }
}
