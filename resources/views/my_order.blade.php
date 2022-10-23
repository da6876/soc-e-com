@include('layout.header_files')
@include('layout.topbar_menu')
@include('layout.nav_main_menu')

<!-- ========================= SECTION PAGETOP ========================= -->
<section class="section-pagetop bg">
<div class="container">
	<h2 class="title-page">Oder Info</h2>
</div> <!-- container //  -->
</section>
<!-- ========================= SECTION INTRO END// ========================= -->

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<main class="col-md-9">
<div class="card">

<table class="table table-borderless table-shopping-cart">
<thead class="text-muted">
<tr class="small text-uppercase">
  <th scope="col">Oder Product</th>
  <th scope="col" width="120">Quantity</th>
  <th scope="col" width="120">Price</th>
  <th scope="col" width="120">Oder Status</th>
  <th scope="col" class="text-right" width="200"> </th>
</tr>
</thead>
<tbody>
@if(count($Product) != 0)
@foreach ($Product as $Product)
<tr>
	<td>
		<figure class="itemside">
			<div class="aside"><a href="{{URL::to('/show-product').'/'.$Product->name}}"><img src="{{asset($Product->image_one)}}" class="img-sm"></a></div>
			<figcaption class="info">
				<a href="{{URL::to('/show-product').'/'.$Product->name}}" class="title text-dark">{{$Product->name}}</a>
				<p class="text-muted small">Category: {{$Product->categories_name}},<br>Product Type : {{$Product->sub_categories_name}},<br> Brand: {{$Product->brands_name}}</p>
			</figcaption>
		</figure>
	</td>
	<td> 
        <input class="form-control" type="number" value="{{$Product->quntity}}" name= "quantity"  id= "quantity{{$Product->order_id}}" disabled />
	</td>
	<td> 
		<div class="price-wrap"> 
			<var class="price">{{$Product->TotalPriceSingleProduct}} ৳</var> 
		</div> <!-- price-wrap .// -->
	</td>
	<td> 
		<div class="price-wrap"> 
			<var class="price">{{$Product->order_status}} </var> 
		</div> <!-- price-wrap .// -->
	</td>
	<td class="text-right">
        @if($Product->order_status == 'Cancle')
        <div class="btn-group-vertical" role="group" aria-label="Basic example">
          <button onclick="cancleOrder({{$Product->order_id}})" type="button" class="btn btn-danger" id="btnRemove{{$Product->order_id}}" disabled>Cancle Order</button>
        </div>
        @else
        <div class="btn-group-vertical" role="group" aria-label="Basic example">
          <button onclick="cancleOrder({{$Product->order_id}})" type="button" class="btn btn-danger" id="btnRemove{{$Product->order_id}}">Cancle Order</button>
        </div>
        @endif
	</td>
</tr>
@endforeach
@else
<tr>
	<td colspan="3">
		<figure class="itemside">
			<figcaption class="info">
				<h5>No Card Item Found</h5>
			</figcaption>
		</figure>
	</td>
</tr>
@endif
</tbody>
</table>

<div class="card-body border-top">
	<a href="{{URL::to('/')}}" class="btn btn-light"> <i class="fa fa-chevron-left"></i> Continue shopping </a>
</div>	
</div> <!-- card.// -->

<div class="alert alert-success mt-3">
	<p class="icontext"><i class="icon text-success fa fa-truck"></i> Free Delivery within 1-2 weeks</p>
</div>

	</main> <!-- col.// -->
	<aside class="col-md-3">

		<div class="card">
			<div class="card-body">
					<dl class="dlist-align">
					  <?php 
                        $image = Session::get('userimage');
                        ?>
                        @if(Session::get('userimage')=="No Image")
                        
                        <img src="public/images/profile.png"width="100px" height="100px" id="userImage" class="rounded-circle rounded mx-auto d-block" alt="User Image" /> <br>
                        
                        <br>
                        <br>
                        @else
                        
                        <img src="{{$image}}" width="150px" height="150px" id="userImage" class="rounded-circle rounded mx-auto d-block" alt="User Image"/>
                        @endif
					</dl>
                        <br>
					<dl class="dlist-align">
					  <dt>Name:</dt>
					  <dd class="text-right">
                          {{$Product->name}}
                        </dd>
					</dl>
					<dl class="dlist-align">
					  <dt>Email:</dt>
					  <dd class="text-right">
                          {{$Product->email}}
                        </dd>
					</dl>
					<dl class="dlist-align">
					  <dt>Phone:</dt>
					  <dd class="text-right">
                          {{$Product->phone}}
                        </dd>
					</dl>
					<dl class="dlist-align">
					  <dt>Address:</dt>
					  <dd class="text-right">
                          {{$Product->address}}
                        </dd>
					</dl>
                
					<hr>
					<dl class="dlist-align">
					  <dt>Total price:</dt>
					  <dd class="text-right">
                          @if(isset($Product->GrandTotal))
                          {{$Product->GrandTotal}} ৳
                          @else
                          00.0 ৳
                          @endif
                        </dd>
					</dl>
					<dl class="dlist-align">
					  <dt>Total:</dt>
					  <dd class="text-right  h5">
                          <strong>
                          @if(isset($Product->Discount))
                              {{$Product->GrandTotal}} ৳
                          @else
                              00.0 ৳
                          @endif
                          </strong></dd>
					</dl>
					<hr>
					
					<dl class="dlist-align">
					  <dt>Payment Method :</dt>
					  <dd class="text-right  h5">
                              Cash On Delivery
                        </dd>
					</dl>
			</div> <!-- card-body.// -->
		</div>  <!-- card .// -->
	</aside> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<!-- ========================= SECTION  ========================= -->
<section class="section-name bg padding-y">
<div class="container">
<h6>Payment and refund policy</h6>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

</div><!-- container // -->
</section>
<!-- ========================= SECTION  END// ========================= -->

@include('layout.footer_side')

<script>
    
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
    

    
    function cancleOrder(order_id) {
        Swal.fire({
            text: "Are you sure? Want Cancle Order!",
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, Remove it!'
        }).then((result) => {
            if (result.isConfirmed) {
                url = "{{ url('CancleOrder') }}";
                $.ajax({
                    url: url,
                    type: "POST",
                    data: { "_token": "{{ csrf_token() }}", "order_id": order_id},
                    datatype: 'JSON',
                    success: function (data) {
                        console.log(data);
                        var dataResult = JSON.parse(data);
                        if (dataResult.statusCode == 200) {

                            Swal.fire({
                                text: dataResult.statusMsg,
                            }).then((result) => {
                                window.location.href = 'OrderInfo';
                            })
                        }else {
                            Swal.fire({
                                text: dataResult.statusMsg,
                                timer: '1500'
                            });
                        }
                    }, error: function (data) {
                        console.log(data);
                        Swal.fire({
                            text: "Error occured !",
                            timer: '1500'
                        });
                    }
                }); 
            }
        })
    }
    
 
    
</script>