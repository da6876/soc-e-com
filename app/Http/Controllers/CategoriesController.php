<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Redirect;
use DB;
use Session;

class CategoriesController extends Controller
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
            $categories = DB::select("select * from categories where shop_id = '$shop_user_id' ");
        }else{
            $categories = DB::select('select * from categories');
        }
		return view('adminpart.admincategoriepage',['categories'=>$categories]);
	}
	
	public function store(Request $request){
		 
        $data = array();
        $data['categories_name'] = $request['Categoriename'];
        $data['categories_status'] = $request['Categoriestatus'];

        $shop_user_id =Session::get('shop_user_id');
        if (isset($shop_user_id)) {
            $data['shop_id'] = $shop_user_id;
        }else{
            $data['shop_id'] = '0';
        }
		$result = DB::table('categories')->insert($data);
		
		if ($result){
            return json_encode(array(
                "statusCode"=>200,
                "statusMsg"=>"Categories Added Successfully"
            ));
        }else{
            return json_encode(array(
                "statusCode"=>201,
                "statusMsg"=>"Categories Added Failed!!"
            ));
        }
		
	}
	
	public function show($id){
		$singleEducation = DB::table('categories')
			->where('categories_id', $id)
			->get();
		return $singleEducation;
	}
	
	
	
	public function destroy($id){
        DB::table('categories')
            ->where('categories_id', $id)
            ->delete();
        return json_encode(array(
            "statusCode"=>200
        ));
    }
}
