<!-- ========================= SECTION MAIN ========================= -->
<section class="section-main bg padding-y">
<div class="container">

<div class="row">
	<aside class="col-md-3">
			
		<nav class="card">
			<?php
				$menus = DB::table('categories')
					->select('categories_id', 'categories_name', 'categories_status', 'sub_menu_status')
					->where('categories_status','A')
					->limit(7)
					->get();
			?>
			<ul class="menu-category">
			@foreach($menus as $menus)
				@if($menus->categories_name)
					<li  class="has-submenu" ><a href="{{URL::to('/show-productsCat').'/'.$menus->categories_name}}">{{$menus->categories_name}}</a>
					<?php
						$submenus = DB::table('sub_categories')
							->where('categories_id', $menus->categories_id)
							->where('sub_categories_status','A')
							->select('sub_categories_id', 'sub_categories_name', 'sub_categories_status')
							->limit(7)
							->get();
					?>
						<ul class="submenu">
						@foreach($submenus as $submenus)
							<li><a href="{{URL::to('/show-productsSubCat').'/'.$submenus->sub_categories_name}}">{{$submenus->sub_categories_name}}</a></li>
						@endforeach
							<li><a href="{{URL::to('/show-productsCat').'/'.$menus->categories_name}}">See All {{$menus->categories_name}}</a></li>
						</ul>
					
					</li>
				 @endif
			 @endforeach
					<li><a href="{{url('SeeAllCategorys')}}">See All Categories</a></li>

			</ul>
		</nav>
		
	</aside> <!-- col.// -->
	<div class="col-md-9">
		<aside class="col-md-12">
			<div class="slider-banner-slick">
				<div class="item-slide">
					<img  src="public/images/banners/banner.jpg" class="w-200 rounded">
				</div>	
				<div class="item-slide">
					<img src="public/images/banners/banner.jpg" class="w-200 rounded">
				</div>	
				<div class="item-slide">
					<img src="public/images/banners/banner.jpg" class="w-200 rounded">
				</div>			
			</div>
		</aside>
	</div> <!-- col.// -->
</div> <!-- row.// -->
</div> <!-- container //  -->
</section>
<!-- ========================= SECTION MAIN END// ========================= -->
