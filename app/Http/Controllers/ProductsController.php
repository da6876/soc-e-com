<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Redirect;

class ProductsController extends Controller
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
            $products = DB::select("select * from products where shop_id = '$shop_user_id' ");
        }else{
            $products = DB::select("select * from products");
        }

		return view('adminpart.adminproductspage',['products'=>$products]);
	}
	
	public function store(Request $request){
		 
        $data = array();
        $data['name'] = $request['ProductName'];
        $data['details'] = $request['ProductDetails'];
        $data['product_types_id'] = "00";
        $data['sub_categories_id'] = $request['sub_categories_id'];
        $data['category_id'] = $request['Category_id'];
        $data['brands_id'] = $request['Brand_id'];
        $data['country_id'] = $request['Country_id'];
        $data['price'] = $request['Price'];
        $data['discount_price'] = $request['DiscountPrice'];
        $data['discount'] = $request['Discount'];
        $data['quantity'] = $request['Quantity'];
        $data['sort_order'] = $request['sort_order'];
        $data['product_code'] = $request['Product_Code'];
        $data['products_status'] = $request['status'];
        $data['create_by'] = Session::get('email');

        $admins_id = Session::get('admins_id');
        $shop_user_id = Session::get('shop_user_id');
        if (isset($shop_user_id)){
            $data['shop_id'] = $shop_user_id;
        }else{
            $data['shop_id'] = $admins_id;
        }

		$image1=$request['image1'];
		$image2=$request['image2'];
		$image3=$request['image3'];
		$image4=$request['image4'];
		
		
		
		if ($image1){
            $ran_one=str_random(5);
            $ext_one=strtolower($image1->getClientOriginalExtension());
            $one_full_name=$ran_one.'_'.$data['product_code'].'.'.$ext_one;
            $upload_path_one="public/allImages/productimage/";
            $image_url_one=$upload_path_one.$one_full_name;
            $success_one=$image1->move($upload_path_one,$one_full_name);
            $data['image_one']=$image_url_one;
        }else{
            $data['image_one']="No Image";
        }
		if ($image2){
            $ran_one=str_random(5);
            $ext_one=strtolower($image2->getClientOriginalExtension());
            $one_full_name=$ran_one.'_'.$data['name'].'.'.$ext_one;
            $upload_path_one="public/allImages/productimage/";
            $image_url_one=$upload_path_one.$one_full_name;
            $success_one=$image2->move($upload_path_one,$one_full_name);
            $data['image_two']=$image_url_one;
        }else{
            $data['image_two']="No Image";
        }
		if ($image3){
            $ran_one=str_random(5);
            $ext_one=strtolower($image3->getClientOriginalExtension());
            $one_full_name=$ran_one.'_'.$data['name'].'.'.$ext_one;
            $upload_path_one="public/allImages/productimage/";
            $image_url_one=$upload_path_one.$one_full_name;
            $success_one=$image3->move($upload_path_one,$one_full_name);
            $data['image_three']=$image_url_one;
        }else{
            $data['image_three']="No Image";
        }
		if ($image4){
            $ran_one=str_random(5);
            $ext_one=strtolower($image4->getClientOriginalExtension());
            $one_full_name=$ran_one.'_'.$data['name'].'.'.$ext_one;
            $upload_path_one="public/allImages/productimage/";
            $image_url_one=$upload_path_one.$one_full_name;
            $success_one=$image4->move($upload_path_one,$one_full_name);
            $data['image_four']=$image_url_one;
        }else{
            $data['image_four']="No Image";
        }
		
	
		json_encode($data);
		
		$result = DB::table('products')->insert($data);
		if($result){
			return json_encode(array(
                "statusCode"=>200,
                "statusMsg"=>"Product Added Successfully"
            ));
		}else{
			return json_encode(array(
                "statusCode"=>201,
                "statusMsg"=>"Product Added Failed"
            ));
		}
            
		
	}
	
	public function show($id){
		$singleEducation = DB::table('products')
			->where('products_id', $id)
			->get();
		return $singleEducation;
	}
	
	
	
	public function destroy($id){
        DB::table('products')
            ->where('products_id', $id)
            ->delete();
        return json_encode(array(
            "statusCode"=>200
        ));
    }
}
