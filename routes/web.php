<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/Home', function () {
    return view('welcome');
});
Route::get('DACommerceLogin', function () {
    return view('login');
});

Route::get('/DACommerceRegistration', function () {
    return view('registration');
});
Route::get('/DACommerceCategoryProductGrid', function () {
    return view('category_product_grid');
});
Route::get('/DACommerceCategoryProduct', function () {
    return view('category_product');
});
Route::get('/DACommerceViewProduct', function () {
    return view('pro_slider');
});

Route::get('/show-product/{product_id}','ProductDetails@store1');
Route::get('/show-productsByBrand/{brand_name}','HomePageController@showProductsbyBrand');
Route::get('/show-productsCat/{cat_name}','HomePageController@showProductsbyCat');
Route::get('/show-productsSubCat/{subcat_name}','HomePageController@showProductsbySubCat');
Route::post('UserSignUp','AdminUsersController@storeUser');
Route::post('UserProfileUpdate','AdminUsersController@userProfileUpdate');
Route::post('UserLogIn','AdminUsersController@storeUserLogIn');
Route::post('AddToCard','HomePageController@addToCard');
Route::post('RemoveToCard','HomePageController@removeToCard');
Route::post('UpdateToCard','HomePageController@updateToCard');
Route::post('PlaceOrder','HomePageController@placeOrder');
Route::post('CancleOrder','HomePageController@cancleOrder');
Route::post('SearchProductData','HomePageController@searchProductData');
Route::get('ShoppingCart','HomePageController@showShoppingCart');
Route::get('OrderInfo','HomePageController@showOrderInfo');
Route::get('MyOrderInfo','HomePageController@myOrderInfo');
Route::get('UserProfile','HomePageController@showUserProfile');
Route::get('SeeAllBrand','HomePageController@showAllBrand');
Route::get('SeeAllCategorys','HomePageController@showAllCategorys');
Route::get('Logout','AdminUsersController@usersLogOut');

/*
|--------------------------------------------------------------------------
			Admin Side Routes
|--------------------------------------------------------------------------
*/

Route::get('AdminHome', function () {
    return view('adminpart.homepage');
});
Route::resource('AdminUsers','AdminUsersController');
Route::resource('AdminBrands','BrandsController');
Route::resource('AdminCategories','CategoriesController');
Route::resource('AdminSubCategories','SubCategoriesController');
Route::resource('AdminProducts','ProductsController');
Route::resource('OrderInfo','NewOrderInfo');
Route::get('AdminUserLogin','AdminUsersController@AdminUserLogin');
Route::get('CustomerInfo','AdminUsersController@index1');
Route::get('AdminUserLogOut','AdminUsersController@userLogOut');
Route::post('AdminUserLoginCheck','AdminUsersController@AdminUserLoginCheck');
Route::post('ChangeOrder','AdminUsersController@changeOrderStatus');

/*
|--------------------------------------------------------------------------
			Admin Side Routes
|--------------------------------------------------------------------------
*/
Route::resource('ShopAdmin','ShopAdminController');
Route::get('ShopAdminLogin','ShopAdminController@shoplogin');
Route::get('ShopAdminLogout','AdminUsersController@shopLogOut');
Route::get('ShopHome','ShopAdminController@shopindex');
Route::get('ShopOrders','ShopAdminController@shopOrderInfo');
Route::post('ShopLoginCheck','ShopAdminController@storeShopLogIn');
