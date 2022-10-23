<!-- ========================= SECTION  ========================= -->
<section class="section-name bg padding-y-sm">
<div class="container">
<header class="section-heading">
	<a href="{{url('SeeAllCategorys')}}" class="btn btn-outline-primary float-right">See all</a>
	<h3 class="section-title">Popular Categorys</h3>
</header><!-- sect-heading -->

<div class="row">

	<?php
		$categories = DB::select("SELECT A.categories_id, A.categories_name, A.categories_status, A.sub_menu_status,
								(SELECT count(0) FROM products  where category_id=A.categories_id ) AS TotalProduct
								FROM categories A
								WHERE A.categories_status= 'A'
								ORDER BY TotalProduct DESC LIMIT 12");
	?>
	@foreach($categories as $categories)
	<div class="col-md-2">
	<a href="{{URL::to('/show-productsCat').'/'.$categories->categories_name}}">
		<figure  class="box item-logo">
			<h5>{{$categories->categories_name}}</h5>
			<figcaption class="text-center border-top pt-2">{{$categories->TotalProduct}} Products</figcaption>
		</figure> <!-- item-logo.// -->
		</a>
	</div> <!-- col.// -->
	@endforeach
</div> <!-- row.// -->

</div><!-- container // -->
</section>
<!-- ========================= SECTION  END// ========================= -->
