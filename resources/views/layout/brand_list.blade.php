<!-- ========================= SECTION  ========================= -->
<section class="section-name bg padding-y-sm">
<div class="container">
<header class="section-heading">
	<a href="{{url('SeeAllBrand')}}" class="btn btn-outline-primary float-right">See all</a>
	<h3 class="section-title">Our Brands</h3>
</header><!-- sect-heading -->

<div class="row">
<?php
	$brands = DB::select("SELECT A.brands_id, A.brands_name, A.brands_status, 
				(SELECT COUNT(0) product_id FROM products WHERE brands_id=A.brands_id) AS TotalProduct
				FROM brands A 
				WHERE A.brands_status= 'A' ORDER BY TotalProduct DESC LIMIT 12");	
?>
@foreach($brands as $brands)
	<div class="col-md-2">
	<a href="{{URL::to('/show-productsByBrand').'/'.$brands->brands_name}}">
		<figure  class="box item-logo">
			<h5>{{$brands->brands_name}}</h5>
			<figcaption class="text-center border-top pt-2">{{$brands->TotalProduct}} Products</figcaption>
		</figure> <!-- item-logo.// -->
		</a>
	</div> <!-- col.// -->
	@endforeach
	
</div> <!-- row.// -->
</div><!-- container // -->
</section>
<!-- ========================= SECTION  END// ========================= -->
