<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Redirect;
use DB;

class HomePageController extends Controller
{
    public function showUserProfile(){
        return view('userprofile');
    }

    public function showAllBrand(){
        return view('see_all_brand');
    }

    public function showAllCategorys(){
        return view('see_all_categorys');
    }

    public function categoriesPorduct ($product_name){
		$ProductCategory = DB::select('SELECT A.products_id, A.product_types_id, A.category_id,C.categories_name ,A.sub_categories_id, D.sub_categories_name,A.brands_id,B.brands_name , A.country_id, A.name, A.details, A.product_code,
								A.image_one, A.image_two, A.image_three, A.image_four, A.price, A.discount_price, A.discount,
								A.quantity, A.sort_order, A.products_status 
								FROM products A, brands B, categories C, sub_categories D
								WHERE A.brands_id = B.brands_id
								AND C.categories_id = A.category_id
								AND D.sub_categories_id = A.sub_categories_id
								AND A.category_id='.$product_name);
		return view('category_product_grid',['product_name'=>$product_name]);
	}
	
	public function showProductsbyCat ($CatName){
								
		return view('category_product_grid',['CatName'=>$CatName]);
		
	}
	
	public function showProductsbySubCat ($SubCatName){
										
		return view('category_product_grid',['SubCatName'=>$SubCatName]);
		
	}
	
	public function showProductsbyBrand ($BrandName){
										
		return view('category_product_grid',['BrandName'=>$BrandName]);
		
	}
	
	public function store($product_name){

		$Product = DB::select('SELECT A.products_id, A.product_types_id, A.category_id,C.categories_name ,A.sub_categories_id, D.sub_categories_name,A.brands_id,B.brands_name , A.country_id, A.name, A.details, A.product_code,
								A.image_one, A.image_two, A.image_three, A.image_four, A.price, A.discount_price, A.discount,
								A.quantity, A.sort_order, A.products_status 
								FROM products A, brands B, categories C, sub_categories D
								WHERE A.brands_id = B.brands_id
								AND C.categories_id = A.category_id
								AND D.sub_categories_id = A.sub_categories_id
								AND A.name='.$product_name);
		return json_encode($Product);

	}
	
	public function addToCard (Request $request){

        $ProductId = $request->input('ProductId');
        $quantity = $request->input('quantity');
        $admins_id=Session::get('admins_id');

        $markets_status='P';

		if($admins_id != ""){
            
            $data = array();
            $data['products_id'] = $ProductId;
            $data['admins_id'] = $admins_id;
            $data['quantity'] = $quantity;
            $data['market_status'] =$markets_status;
            $result = DB::table('markets')->insert($data);
            
            if ($result) {
                return json_encode(array(
                    "statusCode" => 200,
                    "statusMsg" => "Product Add To Card Successfully"
                ));
            } 
            
            else {
                return json_encode(array(
                    "statusCode" => 201,
                    "statusMsg" => "Product Add To Card Failed"
                ));
            }
      
        }
        
        else{
            return json_encode(array(
                "statusCode" => 204,
                "statusMsg" => "Please Login Here"
            ));
        }
		

	}
	
	public function placeOrder (Request $request){

        
        $admins_id=Session::get('admins_id');
        $order_status="Pending";


        if($admins_id != ""){
            $Product = DB::select("SELECT E.markets_id,E.admins_id,A.products_id,E.quantity,F.address,
                                (E.quantity * A.discount_price) as TotalPriceSingleProduct, 
                                (SELECT 'Pending') AS order_status
                                FROM products A, brands B, categories C, sub_categories D, markets E, admins F
                                WHERE A.brands_id = B.brands_id
                                AND C.categories_id = A.category_id
                                AND D.sub_categories_id = A.sub_categories_id
                                AND E.admins_id = F.admins_id
                                AND E.products_id = A.products_id
                                AND E.admins_id='$admins_id'
                                AND E.market_status ='P'
                                GROUP BY markets_id");
            $i = 0;
            while ( $i<count($Product))
            {
                $products_id= $Product[$i]->products_id;
                $TotalPriceSingleProduct= $Product[$i]->TotalPriceSingleProduct;
                $quantity= $Product[$i]->quantity;
                $address= $Product[$i]->address;
                $markets_id= $Product[$i]->markets_id;

                $data = array();
                $data['admin_id'] = $admins_id;
                $data['product_id'] = $products_id;
                $data['address'] = $address;
                $data['price'] =$TotalPriceSingleProduct;
                $data['quntity'] =$quantity;
                $data['order_status'] =$order_status;
                
                $result = DB::table('oder_info')->insert($data);
                if ($result) {
                    DB::table('markets')
                    ->where('markets_id', $markets_id)
                    ->update(['market_status' => 'C']);
                }
                $i++;

            }
            if ($result) {
                return json_encode(array(
                    "statusCode" => 200,
                    "statusMsg" => "Order Compleate Successfully"
                ));
            }
            else {
                return json_encode(array(
                    "statusCode" => 201,
                    "statusMsg" => "Order Failed"
                ));
            }
        }
	}
	
	public function removeToCard (Request $request){

        $markets_id = $request->input('markets_id');

        $result = DB::table('markets')
        ->where('markets_id', $markets_id)
        ->delete();
        if ($result) {
            return json_encode(array(
                "statusCode" => 200,
                "statusMsg" => "Product Remove From Card Successfully"
            ));
        }
        else {
            return json_encode(array(
                "statusCode" => 201,
                "statusMsg" => "Product Remove From Card Failed"
            ));
        }

	}
	
    public function cancleOrder (Request $request){

        $order_id = $request->input('order_id');
        
        
        $result = DB::table('oder_info')
              ->where('order_id', $order_id)
              ->update(['order_status' => 'Cancle']);


        if ($result) {
            return json_encode(array(
                "statusCode" => 200,
                "statusMsg" => "Order Cancle Successfully"
            ));
        }
        else {
            return json_encode(array(
                "statusCode" => 201,
                "statusMsg" => "Order Cancle Failed"
            ));
        }

	}
    
    public function updateToCard (Request $request){

        $quantity = $request->input('quantity');
        $markets_id = $request->input('marketId');
        
        
        $result = DB::table('markets')
              ->where('markets_id', $markets_id)
              ->update(['quantity' => $quantity]);


        if ($result) {
            return json_encode(array(
                "statusCode" => 200,
                "statusMsg" => "Card Update Successfully"
            ));
        }
        else {
            return json_encode(array(
                "statusCode" => 201,
                "statusMsg" => "Card Update Failed"
            ));
        }

	}
    
    public function searchProductData (Request $request){

        $searchText = $request->input('query');
        
        $connect = mysqli_connect("localhost", "root", "", "soc_bazaar");
        $output = '';
        if(isset($searchText)){
            $search = mysqli_real_escape_string($connect, $_POST["query"]);
            $query = "
            SELECT * FROM products 
            WHERE name LIKE '%".$searchText."%'
            OR details LIKE '%".$searchText."%' 
            LIMIT 5";
        }
        
        else{
            $query = "SELECT * FROM products ORDER BY products_id";
        }
        $result = mysqli_query($connect, $query);
        
        if(mysqli_num_rows($result) > 0){
            $output .= '';
            $url='';
            while($row = mysqli_fetch_array($result)){
                $output .= '
                <figure class="itemside" >
                    <div class="aside"><img src="'.$row["image_one"].'" class="img-sm"></div>
                    <figcaption class="info">
                        <a href= "" class="title text-dark">'.$row["name"].'</a>
                        <p class="text-muted small">Category: '.$row["quantity"].',<br>Product Type : '.$row["product_code"].',<br> Brand: '.$row["brands_id"].'</p>
                    </figcaption>
                </figure>';
            }
            echo $output;
        }
        
        else{
            echo 'No Product Found';
        }

	}
    
    public function showShoppingCart (){
         
        $admins_id=Session::get('admins_id');
        if($admins_id != ""){
            $Product = DB::select("SELECT E.markets_id,E.admins_id,A.products_id,C.categories_name,A.sub_categories_id,
                                    D.sub_categories_name,B.brands_name,A.name, A.details, A.product_code,
                                    A.image_one, A.price, A.discount_price, A.discount,
                                    E.quantity, A.sort_order, A.products_status,
                                    (E.quantity * A.discount_price) as TotalPriceSingleProduct,
                                    (SELECT sum((GE.quantity * GA.discount_price)) as GrandTotalPriceSingleProduct 
                                    FROM products GA, brands GB, categories GC, sub_categories GD, markets GE, admins GF
                                    WHERE GA.brands_id = GB.brands_id
                                    AND GC.categories_id = GA.category_id
                                    AND GD.sub_categories_id = GA.sub_categories_id
                                    AND GE.admins_id = GF.admins_id
                                    AND GE.products_id = GA.products_id
                                    AND GE.admins_id='$admins_id') AS GrandTotal,
                                    (SELECT '00') AS Discount
                                    FROM products A, brands B, categories C, sub_categories D, markets E, admins F
                                    WHERE A.brands_id = B.brands_id
                                    AND C.categories_id = A.category_id
                                    AND D.sub_categories_id = A.sub_categories_id
                                    AND E.admins_id = F.admins_id
                                    AND E.products_id = A.products_id
                                    AND E.admins_id='$admins_id'
                                    AND E.market_status ='P'
                                    GROUP BY markets_id");
            
            
            
        /*$Product = DB::select("SELECT E.markets_id,E.admins_id,A.products_id,A.product_types_id,A.category_id,
                        C.categories_name,A.sub_categories_id,
                        D.sub_categories_name,A.brands_id,B.brands_name , A.country_id, A.name, A.details, A.product_code,
                        A.image_one, A.image_two, A.image_three, A.image_four, A.price, A.discount_price, A.discount, 
                        A.quantity, A.sort_order, A.products_status, (E.quantity * A.discount_price) as TotalPriceSingleProduct 
                        FROM products A, brands B, categories C, sub_categories D, markets E, admins F
                                                            WHERE A.brands_id = B.brands_id
                                                            AND C.categories_id = A.category_id
                                                            AND D.sub_categories_id = A.sub_categories_id
                                                            AND E.admins_id = F.admins_id
                                                            AND E.products_id = A.products_id
                                                            AND E.admins_id='27'
                                                            GROUP BY E.markets_id");*/
            
		return view('shopping_cart',['Product'=>$Product]);

            
        }else{
            return view('login');
        }
	}

	public function myOrderInfo(){

        $admins_id=Session::get('admins_id');
        if($admins_id != "") {
            $Product = DB::select("SELECT A.order_id, A.admin_id, A.product_id,
                                A.address AS ShipingAddress,A.price As OrderPrice, A.quntity As OrderQuntity, A.create_info As OrderDate,
                                A.order_status,B.image, B.name AS UserInfoName, B.phone,B.email,B.address, C.products_id, C.name As ProductName,C.image_one,C.quantity,C.discount_price
                                FROM oder_info A, admins B, products C
                                WHERE A.admin_id = B.admins_id
                                AND A.product_id = C.products_id
                                ORDER BY A.order_id");
        }
        return view('my_order_info',['Product'=>$Product]);
    }
    
    public function showOrderInfo (){
         
        $admins_id=Session::get('admins_id');
        if($admins_id != ""){
            $Product = DB::select("SELECT E.order_id ,E.admin_id,A.products_id,C.categories_name,E.order_status,
                                D.sub_categories_name,B.brands_name,A.name,A.image_one,E.quntity, 
                                F.name,F.phone,F.email,F.address,
                                E.price as TotalPriceSingleProduct,
                                (SELECT SUM(price) FROM oder_info)AS GrandTotal
                                 FROM products A, brands B, categories C, sub_categories D, oder_info E, admins F
                                 WHERE A.brands_id = B.brands_id
                                 AND C.categories_id = A.category_id
                                 AND D.sub_categories_id = A.sub_categories_id
                                 AND E.admin_id = F.admins_id
                                 AND E.product_id = A.products_id
                                 AND E.admin_id = '$admins_id'
                                 GROUP BY order_id");

            
		return view('my_order',['Product'=>$Product]);

            
        }else{
            return view('login');
        }
	}

}
