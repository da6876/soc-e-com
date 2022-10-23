
@include('layout.header_files')
@include('layout.topbar_menu')
@include('layout.nav_main_menu')

<!-- ========================= SECTION PAGETOP ========================= -->
<?php if(isset($CatName)){ ?>
<section class="section-pagetop bg">
<div class="container">
	<h2 class="title-page">Category products</h2>
	<nav>
	<ol class="breadcrumb text-white">
	    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
	    <li class="breadcrumb-item"><a href="#">{{$CatName}}</a></li>
	</ol>  
	</nav>
</div> <!-- container //  -->
</section>
<?php }elseif(isset($SubCatName)){ ?>
<section class="section-pagetop bg">
<div class="container">
	<h2 class="title-page">Sub Category products</h2>
	<nav>
	<ol class="breadcrumb text-white">
	    <li class="breadcrumb-item"><a href="#">Home</a></li>
	    <li class="breadcrumb-item"><a href="#">{{$SubCatName}}</a></li>
	</ol>  
	</nav>
</div> <!-- container //  -->
</section>
<?php } ?>
<!-- ========================= SECTION INTRO END// ========================= -->

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<aside class="col-md-3">
		
<div class="card">
	<article class="filter-group">
		<header class="card-header">
			<a href="#" data-toggle="collapse" data-target="#collapse_1" aria-expanded="true" class="">
				<i class="icon-control fa fa-chevron-down"></i>
				<h6 class="title">Product type</h6>
			</a>
		</header>
		<div class="filter-content collapse show" id="collapse_1" style="">
			<div class="card-body">
				<form class="pb-3">
				<div class="input-group">
				  <input type="text" class="form-control" placeholder="Search">
				  <div class="input-group-append">
				    <button class="btn btn-light" type="button"><i class="fa fa-search"></i></button>
				  </div>
				</div>
				</form>
				<?php
					$categories = DB::table('categories')
						->select('categories_id', 'categories_name', 'categories_status', 'sub_menu_status')
						->where('categories_status','A')
						->limit(12)
						->get();
				?>
				<ul class="list-menu">
				@foreach($categories as $categories)
				<li><a href="{{URL::to('/show-productsCat').'/'.$categories->categories_name}}">{{$categories->categories_name}}  </a></li>
				@endforeach
				</ul>

			</div> <!-- card-body.// -->
		</div>
	</article> <!-- filter-group  .// -->
	<article class="filter-group">
		<header class="card-header">
			<a href="#" data-toggle="collapse" data-target="#collapse_2" aria-expanded="true" class="">
				<i class="icon-control fa fa-chevron-down"></i>
				<h6 class="title">Brands </h6>
			</a>
		</header>
		<div class="filter-content collapse show" id="collapse_2" style="">
			<div class="card-body">
			<?php
				$brands = DB::select("SELECT A.brands_id, A.brands_name, A.brands_status, 
							(SELECT COUNT(0) product_id FROM products WHERE brands_id=A.brands_id) AS TotalProduct
							FROM brands A 
							WHERE A.brands_status= 'A' ORDER BY TotalProduct DESC LIMIT 10");	
			?>
			
			@foreach($brands as $brands)
				<label class="custom-control custom-checkbox">
				  <input type="checkbox" class="custom-control-input">
				  <div class="custom-control-label">{{$brands->brands_name}}  
				  	<b class="badge badge-pill badge-light float-right">{{$brands->TotalProduct}}</b>  </div>
				</label>
			@endforeach
			
			<label class="custom-control">
			  <div class="label">See All Brand  </div>
			</label>
	</div> <!-- card-body.// -->
		</div>
	</article> <!-- filter-group .// -->
	<article class="filter-group">
		<header class="card-header">
			<a href="#" data-toggle="collapse" data-target="#collapse_3" aria-expanded="true" class="">
				<i class="icon-control fa fa-chevron-down"></i>
				<h6 class="title">Price range </h6>
			</a>
		</header>
		<div class="filter-content collapse show" id="collapse_3" style="">
			<div class="card-body">
				<div class="form-row">
				<div class="form-group col-md-6">
				  <label>Min</label>
				  <input class="form-control" placeholder="$0" type="number">
				</div>
				<div class="form-group text-right col-md-6">
				  <label>Max</label>
				  <input class="form-control" placeholder="$1,0000" type="number">
				</div>
				</div> <!-- form-row.// -->
				<button class="btn btn-block btn-primary">Apply</button>
			</div><!-- card-body.// -->
		</div>
	</article> <!-- filter-group .// -->
	
	<article class="filter-group">
		<header class="card-header">
			<a href="#" data-toggle="collapse" data-target="#collapse_5" aria-expanded="false" class="">
				<i class="icon-control fa fa-chevron-down"></i>
				<h6 class="title">More filter </h6>
			</a>
		</header>
		<div class="filter-content collapse in" id="collapse_5" style="">
			<div class="card-body">
				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" checked="" class="custom-control-input">
				  <div class="custom-control-label">Any condition</div>
				</label>

				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" class="custom-control-input">
				  <div class="custom-control-label">Brand new </div>
				</label>

				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" class="custom-control-input">
				  <div class="custom-control-label">Used items</div>
				</label>

				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" class="custom-control-input">
				  <div class="custom-control-label">Very old</div>
				</label>
			</div><!-- card-body.// -->
		</div>
	</article> <!-- filter-group .// -->
</div> <!-- card.// -->

	</aside> <!-- col.// -->
	<main class="col-md-9">

<header class="border-bottom mb-4 pb-3">
		<div class="form-inline">
			<span class="mr-md-auto">32 Items found </span>
			<select class="mr-2 form-control">
				<option>Latest items</option>
				<option>Trending</option>
				<option>Most Popular</option>
				<option>Cheapest</option>
			</select>
			<div class="btn-group">
				<a onClick="showList()" class="btn btn-outline-secondary ddd2" data-toggle="tooltip" title="List view"> 
					<i class="fa fa-bars"></i></a>
				<a onClick="showGrid()" class="btn  btn-outline-secondary ddd1" data-toggle="tooltip" title="Grid view"> 
					<i class="fa fa-th"></i></a>
			</div>
		</div>
</header><!-- sect-heading -->
<?php
error_reporting(0);
if(isset($CatName)){
$ProductCategorys = DB::select("SELECT A.products_id, A.product_types_id, A.category_id,C.categories_name ,A.sub_categories_id, D.sub_categories_name,A.brands_id,B.brands_name , A.country_id, A.name, A.details, A.product_code,
								A.image_one, A.image_two, A.image_three, A.image_four, A.price, A.discount_price, A.discount,
								A.quantity, A.sort_order, A.products_status 
								FROM products A, brands B, categories C, sub_categories D
								WHERE A.brands_id = B.brands_id
								AND C.categories_id = A.category_id
								AND D.sub_categories_id = A.sub_categories_id
								AND C.categories_name='$CatName'");
$ProductCategory = DB::select("SELECT A.products_id, A.product_types_id, A.category_id,C.categories_name ,A.sub_categories_id, D.sub_categories_name,A.brands_id,B.brands_name , A.country_id, A.name, A.details, A.product_code,
								A.image_one, A.image_two, A.image_three, A.image_four, A.price, A.discount_price, A.discount,
								A.quantity, A.sort_order, A.products_status 
								FROM products A, brands B, categories C, sub_categories D
								WHERE A.brands_id = B.brands_id
								AND C.categories_id = A.category_id
								AND D.sub_categories_id = A.sub_categories_id
								AND C.categories_name='$CatName'");
}

elseif(isset($SubCatName)){
	
$ProductCategorys = DB::select("SELECT A.products_id, A.product_types_id, A.category_id,C.categories_name ,A.sub_categories_id, D.sub_categories_name,A.brands_id,B.brands_name , A.country_id, A.name, A.details, A.product_code,
								A.image_one, A.image_two, A.image_three, A.image_four, A.price, A.discount_price, A.discount,
								A.quantity, A.sort_order, A.products_status 
								FROM products A, brands B, categories C, sub_categories D
								WHERE A.brands_id = B.brands_id
								AND C.categories_id = A.category_id
								AND D.sub_categories_id = A.sub_categories_id
								AND D.sub_categories_name='$SubCatName'");
								
$ProductCategory = DB::select("SELECT A.products_id, A.product_types_id, A.category_id,C.categories_name ,A.sub_categories_id, D.sub_categories_name,A.brands_id,B.brands_name , A.country_id, A.name, A.details, A.product_code,
								A.image_one, A.image_two, A.image_three, A.image_four, A.price, A.discount_price, A.discount,
								A.quantity, A.sort_order, A.products_status 
								FROM products A, brands B, categories C, sub_categories D
								WHERE A.brands_id = B.brands_id
								AND C.categories_id = A.category_id
								AND D.sub_categories_id = A.sub_categories_id
								AND D.sub_categories_name='$SubCatName'");
								
}
elseif(isset($BrandName)){
	
$ProductCategorys = DB::select("SELECT A.products_id, A.product_types_id, A.category_id,C.categories_name ,A.sub_categories_id, D.sub_categories_name,A.brands_id,B.brands_name , A.country_id, A.name, A.details, A.product_code,
								A.image_one, A.image_two, A.image_three, A.image_four, A.price, A.discount_price, A.discount,
								A.quantity, A.sort_order, A.products_status 
								FROM products A, brands B, categories C, sub_categories D
								WHERE A.brands_id = B.brands_id
								AND C.categories_id = A.category_id
								AND D.sub_categories_id = A.sub_categories_id
								AND B.brands_name='$BrandName'");
								
$ProductCategory = DB::select("SELECT A.products_id, A.product_types_id, A.category_id,C.categories_name ,A.sub_categories_id, D.sub_categories_name,A.brands_id,B.brands_name , A.country_id, A.name, A.details, A.product_code,
								A.image_one, A.image_two, A.image_three, A.image_four, A.price, A.discount_price, A.discount,
								A.quantity, A.sort_order, A.products_status 
								FROM products A, brands B, categories C, sub_categories D
								WHERE A.brands_id = B.brands_id
								AND C.categories_id = A.category_id
								AND D.sub_categories_id = A.sub_categories_id
								AND B.brands_name='$BrandName'");
								
}
?>
<div class="row ProductCategoryGrid">
@foreach($ProductCategory as $ProductCategory)
	<div class="col-md-4">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<span class="badge badge-danger"> NEW </span>
				<img src="{{asset($ProductCategory->image_one)}}">
				<a class="btn-overlay" href="{{URL::to('/show-product').'/'.$ProductCategory->name}}"><i class="fa fa-search-plus"></i> Quick view</a>
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
				<div class="fix-height">
					<a href="{{URL::to('/show-product').'/'.$ProductCategory->name}}" class="title">{{$ProductCategory->name}}</a>
					<div class="price-wrap mt-2">
						<span class="price">{{$ProductCategory->discount_price}}</span>
						<del class="price-old">{{$ProductCategory->price}}</del>
					</div> <!-- price-wrap.// -->
				</div>
				<button onclick="viewProduct({{$ProductCategory->products_id}})" class="btn btn-block btn-primary">Add to cart </button>
			</figcaption>
		</figure>
	</div> <!-- col.// -->
@endforeach
</div> <!-- row end.// -->

<div class="row ProductCategoryList">
@foreach($ProductCategorys as $ProductCategorys)
<article class="card card-product-list">
	<div class="row no-gutters">
		<aside class="col-md-3">
			<a href="{{URL::to('/show-product').'/'.$ProductCategorys->name}}" class="img-wrap">
				<span class="badge badge-danger"> NEW </span>
				<img src="{{asset($ProductCategorys->image_one)}}">
			</a>
		</aside> <!-- col.// -->
		<div class="col-md-6">
			<div class="info-main">
				<a href="{{URL::to('/show-product').'/'.$ProductCategorys->name}}" class="h5 title"> {{$ProductCategorys->name}}  </a>
				<div class="rating-wrap mb-3">
					<ul class="rating-stars">
						<li style="width:80%" class="stars-active"> 
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
							<i class="fa fa-star"></i> 
						</li>
						<li>
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
							<i class="fa fa-star"></i> 
						</li>
					</ul>
					<div class="label-rating">7/10</div>
				</div> <!-- rating-wrap.// -->
				
				<p> {{$ProductCategorys->details}} </p>
			</div> <!-- info-main.// -->
		</div> <!-- col.// -->
		<aside class="col-sm-3">
			<div class="info-aside">
				<div class="price-wrap">
					<span class="price h5"> {{$ProductCategorys->discount_price}} </span>	
					<del class="price-old"> {{$ProductCategorys->price}}</del>
				</div> <!-- info-price-detail // -->
				<!--<p class="text-success">Free shipping</p>-->
				<br>
				<p>
					<a href="{{URL::to('/show-product').'/'.$ProductCategorys->name}}" class="btn btn-primary btn-block"> Details </a>
					<a onclick="viewProduct({{$ProductCategorys->products_id}})" href="#" class="btn btn-light btn-block"><i class="fa fa-heart"></i> 
						<span class="text">Add to Card</span>
					</a>
				</p>
			</div> <!-- info-aside.// -->
		</aside> <!-- col.// -->
	</div> <!-- row.// -->
</article> <!-- card-product .// -->
@endforeach
</div>


<nav class="mt-4" aria-label="Page navigation sample">
  <ul class="pagination">
    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
    <li class="page-item active"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>

	</main> <!-- col.// -->

</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

@include('layout.footer_side')

<script>
//window.location.href = 'ProductDetail';
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
    
$('.ProductCategoryGrid').hide();
document.querySelector('.ddd2').classList.add('active');
function showList(){
	$('.ProductCategoryGrid').hide();
	$('.ProductCategoryList').show();
	document.querySelector('.ddd2').classList.add('active');
	document.querySelector('.ddd1').classList.remove('active');
}
function showGrid(){
	$('.ProductCategoryGrid').show();
	$('.ProductCategoryList').hide();
	document.querySelector('.ddd1').classList.add('active');
	document.querySelector('.ddd2').classList.remove('active');
}

    function viewProduct(ProductId){

		//alert(ProductId);
		
		url = "{{ url('AddToCard') }}";
        $.ajax({
            url: url,
            type: "POST",
			data: { "_token": "{{ csrf_token() }}", "ProductId": ProductId, "quantity": '1'},
            datatype: 'JSON',
            success: function (data) {
                console.log(data);
                var dataResult = JSON.parse(data);
                if (dataResult.statusCode == 200) {

                    $("#CardTotal").text(dataResult.TotalCard);
                    Swal.fire({
                        icon: 'success',
                        text: dataResult.statusMsg,

                    }).then((result) => {
                        location.reload();
                    })
                    
                     
                }else if (dataResult.statusCode == 204) {

                    Swal.fire({
                        icon: "error",
                        text: dataResult.statusMsg,

                    }).then((result) => {
                        window.location.href = '/DACommerceLogin';
                    })
                } else {
                    Swal.fire({
                        title: dataResult.statusType,
                        text: dataResult.statusMsg,
                        icon: "error",
                        timer: '1500'
                    });
                }
            }, error: function (data) {
                console.log(data);
                Swal.fire({
                    title: "Oops",
                    text: "Error occured !",
                    icon: "error",
                    timer: '1500'
                });
            }
        }); 
    }
</script>
