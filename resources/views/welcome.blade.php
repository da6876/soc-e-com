@section('titleSite', 'Home')
@include('layout.header_files')

@include('layout.topbar_menu')

@include('layout.nav_main_menu')

@include('layout.section_main')







<!-- ========================= Brand List  ========================= -->
@include('layout.brand_list')
<!-- ========================= Brand List End   ========================= -->

<!-- ========================= Category List  ========================= -->
@include('layout.category_list')
<!-- ========================= Category List End   ========================= -->


<!-- ========================= SECTION FEATURE ========================= -->
<section class="section-content padding-y-sm">
<div class="container">
<article class="card card-body">


<div class="row">
	<div class="col-md-4">	
		<figure>
			<span class="text-primary"><i class="fa fa-2x fa-truck"></i></span>
			<figcaption class="pt-3">
				<h5 class="title">Fast delivery</h5>
				<p>Dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore </p>
			</figcaption>
		</figure> <!-- iconbox // -->
	</div><!-- col // -->
	<div class="col-md-4">
		<figure>
			<span class="text-primary"><i class="fa fa-2x fa-landmark"></i></span>	
			<figcaption class="pt-3">
				<h5 class="title">Creative Strategy</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				 </p>
			</figcaption>
		</figure> <!-- iconbox // -->
	</div><!-- col // -->
    <div class="col-md-4">
		<figure>
			<span class="text-primary"><i class="fa fa-2x fa-lock"></i></span>
			<figcaption class="pt-3">
				<h5 class="title">High secured </h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				 </p>
			</figcaption>
		</figure> <!-- iconbox // -->
	</div> <!-- col // -->
</div>
</article>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION FEATURE END// ========================= -->


<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content">
<div class="container">

<header class="section-heading">
	<h3 class="section-title">Popular products</h3>
</header><!-- sect-heading -->

	
<div class="row">
	<?php
		$products = DB::select("SELECT * FROM products WHERE sort_order = 'Popular' ORDER BY products_id DESC LIMIT 8");
	?>
	@foreach($products as $products)
	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<span class="badge badge-danger"> {{$products->sort_order}} </span>
				<img src="{{$products->image_one}}">
					<a class="btn-overlay" href="{{URL::to('/show-product').'/'.$products->name}}"><i class="fa fa-search-plus"></i> Quick view</a>
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
				<div class="fix-height">
					<a href="{{URL::to('/show-product').'/'.$products->name}}" class="title">{{$products->name}}</a>
					<div class="price-wrap mt-2">
						<span class="price">{{$products->discount_price}} ৳</span>
						<del class="price-old">{{$products->price}} ৳</del>
					</div> <!-- price-wrap.// -->
				</div>
				<button onclick="viewProduct({{$products->products_id}})" class="btn btn-block btn-primary">Add to cart </button>
			</figcaption>
		</figure>
	</div> <!-- col.// -->
	@endforeach
	
</div> <!-- row.// -->

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->



<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content">
<div class="container">

<header class="section-heading">
	<h3 class="section-title">New arrived</h3>
</header><!-- sect-heading -->

<div class="row">
	<?php
		$products = DB::select("SELECT * FROM products WHERE sort_order = 'Top' ORDER BY products_id DESC LIMIT 8");
	?>
	@foreach($products as $products)
	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<span class="badge badge-danger"> NEW </span>
				<img src="{{$products->image_one}}">
				<a href="{{URL::to('/show-product').'/'.$products->name}}" class="btn-overlay" ><i class="fa fa-search-plus"></i> Quick view</a>
				
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
				<div class="fix-height">
					<a href="{{URL::to('/show-product').'/'.$products->name}}" class="title">{{$products->name}}</a>
					<div class="price-wrap mt-2">
						<span class="price">{{$products->discount_price}}৳</span>
						<del class="price-old">{{$products->price}}৳</del>
					</div> <!-- price-wrap.// -->
				</div>
				<button onclick="viewProduct({{$products->products_id}})" class="btn btn-block btn-primary">Add to cart </button>
			</figcaption>
		</figure>
	</div> <!-- col.// -->
	@endforeach
	
</div> <!-- row.// -->

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->



<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-bottom-sm">
<div class="container">

<header class="section-heading">
	<a href="#" class="btn btn-outline-primary float-right">See all</a>
	<h3 class="section-title">Recommended</h3>
</header><!-- sect-heading -->

<div class="row">
	<?php
		$products = DB::select('select * from products ORDER BY products_id ASC LIMIT 8');
	?>
	@foreach($products as $products)
	<div class="col-md-3">
		<div href="{{URL::to('/show-product').'/'.$products->name}}" class="card card-product-grid">
				<img src="{{$products->image_one}}">
			<figcaption class="info-wrap">
				<a href="{{URL::to('/show-product').'/'.$products->name}}" class="title">{{$products->name}}</a>
				<div class="price mt-1">{{$products->discount_price}}৳</div> <!-- price-wrap.// -->
			</figcaption>
		</div>
	</div> <!-- col.// -->
	@endforeach
</div> <!-- row.// -->

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->


<!-- ========================= SECTION  ========================= -->
<section class="section-name padding-y bg">
<div class="container">

<div class="row">
<div class="col-md-6">
	<h3>Download app demo text</h3>
	<p>Get an amazing app  to make Your life easy</p>
</div>
<div class="col-md-6 text-md-right">
	<a href="#"><img src="public/images/misc/appstore.png" height="40"></a>
	<a href="#"><img src="public/images/misc/appstore.png" height="40"></a>
</div>
</div> <!-- row.// -->
</div><!-- container // -->
</section>
<!-- ========================= SECTION  END// ======================= -->

@include('layout.footer_side')

<script>
		//window.location.href = 'ProductDetail';
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
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
                        window.location.href = 'DACommerceLogin';
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
