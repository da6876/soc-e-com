@section('titleSite', 'Home')
@include('layout.header_files')

@include('layout.topbar_menu')

@include('layout.nav_main_menu')

@include('layout.section_main')







<!-- ========================= Brand List  ========================= -->
<!-- ========================= SECTION  ========================= -->
<section class="section-name bg padding-y-sm">
    <div class="container">
        <header class="section-heading">
            <h3 class="section-title">Our Brands</h3>
        </header><!-- sect-heading -->

        <div class="row">
            <?php
            $brands = DB::select("SELECT A.brands_id, A.brands_name, A.brands_status,
				(SELECT COUNT(0) product_id FROM products WHERE brands_id=A.brands_id) AS TotalProduct
				FROM brands A
				WHERE A.brands_status= 'A' ORDER BY TotalProduct DESC");
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
<!-- ========================= Brand List End   ========================= -->


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
