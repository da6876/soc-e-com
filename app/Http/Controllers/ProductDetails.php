<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Redirect;
use DB;

class ProductDetails extends Controller
{

    
	
    public function store1($product_id){

		$Product = DB::select("SELECT A.products_id, A.product_types_id, A.category_id,C.categories_name ,A.sub_categories_id, D.sub_categories_name,A.brands_id,B.brands_name , A.country_id, A.name, A.details, A.product_code,
								A.image_one, A.image_two, A.image_three, A.image_four, A.price, A.discount_price, A.discount,
								A.quantity, A.sort_order, A.products_status, E.shop_name,E.phone,E.email,E.shop_address
								FROM products A, brands B, categories C, sub_categories D,shop_user E
								WHERE A.brands_id = B.brands_id
								AND C.categories_id = A.category_id
								AND D.sub_categories_id = A.sub_categories_id
                                AND E.shop_user_id = A.shop_id
								AND A.name= '$product_id'");
		return view('product_view',['Product'=>$Product]);
		//return view('product_view');
	}
}
