<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Redirect;
use DB;
use Session;

class SubCategoriesController extends Controller
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
        if (isset($shop_user_id)) {
            $sub_categories = DB::select("select * from sub_categories where shop_id = '$shop_user_id' ");
        }else{
            $sub_categories = DB::select('select * from sub_categories');
        }
		return view('adminpart.adminsubcategoriepage',['sub_categories'=>$sub_categories]);
	}
	
	public function store(Request $request){
		 
        $data = array();
        $data['sub_categories_name'] = $request['SubCategoriename'];
        $data['categories_id'] = $request['CategorieId'];
        $data['sub_categories_status'] = $request['SubCategoriestatus'];

        $shop_user_id =Session::get('shop_user_id');
        if (isset($shop_user_id)) {
            $data['shop_id'] = $shop_user_id;
        }else{
            $data['shop_id'] = '0';
        }
		$result = DB::table('sub_categories')->insert($data);
		
		if ($result){
            return json_encode(array(
                "statusCode"=>200,
                "statusMsg"=>"Sub Categories Added Successfully"
            ));
        }else{
            return json_encode(array(
                "statusCode"=>201,
                "statusMsg"=>"Sub Categories Added Failed!!"
            ));
        }
	}
	
	public function show($id){
		$singleEducation = DB::table('sub_categories')
			->where('sub_categories_id', $id)
			->get();
		return $singleEducation;
	}
	
	
	
	public function destroy($id){
        DB::table('sub_categories')
            ->where('sub_categories_id', $id)
            ->delete();
        return json_encode(array(
            "statusCode"=>200
        ));
    }
}
