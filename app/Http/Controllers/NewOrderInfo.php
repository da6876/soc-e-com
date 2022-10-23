<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Redirect;


class NewOrderInfo extends Controller
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

		//$users = DB::select('select * from oder_info');
		//return view('adminpart.neworderinfo',['users'=>$users]);
        
            $users = DB::select("SELECT A.order_id, A.admin_id, A.product_id,
                                A.address AS ShipingAddress,A.price As OrderPrice, A.quntity As OrderQuntity, A.create_info As OrderDate,
                                A.order_status,B.image, B.name AS UserInfoName, B.phone,B.email,B.address, C.products_id, C.name As ProductName,C.image_one,C.quantity,C.discount_price
                                FROM oder_info A, admins B, products C
                                WHERE A.admin_id = B.admins_id
                                AND A.product_id = C.products_id
                                ORDER BY A.order_id");
        
		//return view('adminpart.neworderinfo',['orderinfo'=>$orderinfo]);
		return view('adminpart.neworderinfo',['users'=>$users]);
	}
    
    public function destroy($orderStatus){
        DB::table('admins')
            ->where('admins_id', $orderStatus)
            ->delete();
        return json_encode(array(
            "statusCode"=>200
        ));
    }
}
