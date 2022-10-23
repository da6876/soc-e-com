@section('titleSite',"Product View")

@include('layout.header_files')

@include('layout.topbar_menu')
<style>

    .text-center {text-align:center;}

    /* Rating Star Widgets Style */
    .rating-stars ul {
        list-style-type:none;
        padding:0;

        -moz-user-select:none;
        -webkit-user-select:none;
    }
    .rating-stars ul > li.star {
        display:inline-block;

    }

    /* Idle State of the stars */
    .rating-stars ul > li.star > i.fa {
        font-size:2.5em; /* Change the size of the stars */
        color:#ccc; /* Color on idle state */
    }

    /* Hover state of the stars */
    .rating-stars ul > li.star.hover > i.fa {
        color: #ff2a0a;
    }

    /* Selected state of the stars */
    .rating-stars ul > li.star.selected > i.fa {
        color:#FF912C;
    }

</style>

@include('layout.nav_main_menu')

<section class="section-content padding-y">
    <div class="container">


        @foreach ($Product as $Product)

            <?php $productCateGory = $Product->category_id; ?>
            <div class="row">
                <aside class="col-md-6">

                    <!-- ============== COMPONENT SLIDER SINGLE SLICK  ============= -->
                    <div class="slider-banner-slick">
                        @if($Product->image_one)
                            <div class="item-slide">
                                <img src="{{asset($Product->image_one)}}">
                            </div>
                        @endif
                        @if($Product->image_two!="No Image")
                            <div class="item-slide">
                                <img src="{{asset($Product->image_two)}}">
                            </div>
                        @endif
                        @if($Product->image_three!="No Image")
                            <div class="item-slide">
                                <img src="{{asset($Product->image_three)}}">
                            </div>
                        @endif

                        @if($Product->image_four!="No Image")
                            <div class="item-slide">
                                <img src="{{asset($Product->image_four)}}">
                            </div>
                        @endif

                    </div>
                    <!-- ============== COMPONENT SLIDER SINGLE SLICK .end // ============= -->
                    <br><br>
                </aside> <!-- col.// -->
                <aside class="col-md-6">

                    <h5>{{$Product->name}}</h5>
                    <p class="mb-2 text-muted text-uppercase small">{{$Product->sub_categories_name}}</p>
                    <hr>
                    <div class="table-responsive mb-2">
                        <table class="table table-sm table-borderless">
                            <tbody>
                            <tr>
                                <th class="pl-0 pb-0 w-25">Category</th>
                                <th class="pb-0">Price</th>
                                <th class="pb-0">Discount Price</th>
                            </tr>
                            <tr>
                                <td>
                                    {{$Product->sub_categories_name}}
                                </td>
                                <td>
                                    {{$Product->price}}
                                </td>
                                <td>
                                    {{$Product->discount_price}}
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <hr>
                    <p class="pt-1">{{$Product->details}}</p>
                    <hr>
                    <p class="mb-2 text-muted text-uppercase small">Seller Info : </p>
                    <p class="pt-1">Name : {{$Product->shop_name}}, Address : {{$Product->shop_address}}, Phone No
                        : {{$Product->phone}}</p>
                    <hr>

                    <button type="button" class="btn btn-primary btn-md mr-1 mb-2">Buy now</button>
                    <button onclick="viewProduct({{$Product->products_id}})" type="button"
                            class="btn btn-light btn-md mr-1 mb-2"><i
                            class="fas fa-shopping-cart pr-2"></i>Add to cart
                    </button>
                </aside> <!-- col.// -->
            </div>


            <!-- Classic tabs -->
            <div class="classic-tabs border rounded px-4 pt-1">

                <ul class="nav tabs-primary nav-justified" id="advancedTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active show" id="description-tab" data-toggle="tab" href="#description"
                           role="tab" aria-controls="description">Description</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="info-tab" data-toggle="tab" href="#info" role="tab" aria-controls="info"
                           aria-selected="false" aria-selected="true">Information</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="reviews-tab" data-toggle="tab" href="#reviews" role="tab"
                           aria-controls="reviews" aria-selected="false">Reviews (1)</a>
                    </li>
                </ul>
                <div class="tab-content" id="advancedTabContent">

                    <div class="tab-pane fade show active" id="description" role="tabpanel"
                         aria-labelledby="description-tab">
                        <h5>Product Description</h5>
                        <p class="small text-muted text-uppercase mb-2">{{$Product->sub_categories_name}}</p>
                        <span class="heading">User Rating</span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <h6>Price : {{$Product->discount_price}}</h6>
                        <p class="pt-1">{{$Product->details}}.</p>
                        <br>
                        <br>
                    </div>

                    <div class="tab-pane fade" id="info" role="tabpanel" aria-labelledby="info-tab">
                        <h5>Additional Information</h5>
                        <table class="table table-striped table-bordered mt-3">

                            <tbody>
                            <tr>
                                <th scope="row" class="w-150 dark-grey-text h6">Name</th>
                                <td><em>{{$Product->categories_name}}</em></td>
                            </tr>
                            <tr>
                                <th scope="row" class="w-150 dark-grey-text h6">Category</th>
                                <td><em>{{$Product->categories_name}}</em></td>
                            </tr>
                            <tr>
                                <th scope="row" class="w-150 dark-grey-text h6">Product Type</th>
                                <td><em>{{$Product->sub_categories_name}}</em></td>
                            </tr>
                            <tr>
                                <th scope="row" class="w-150 dark-grey-text h6">Brand</th>
                                <td><em>{{$Product->brands_name}}</em></td>
                            </tr>
                            <tr>
                                <th scope="row" class="w-150 dark-grey-text h6">Details</th>
                                <td><em>{{$Product->details}}</em></td>
                            </tr>
                            <tr>
                                <th scope="row" class="w-150 dark-grey-text h6">Price</th>
                                <td><em>{{$Product->discount_price}}</em></td>
                            </tr>
                            </tbody>
                        </table>
                        <br>
                        <br>
                    </div>

                    <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                        <h5><span>1</span> Review for <span>{{$Product->name}}</span></h5>
                        <div class="media mt-3 mb-4">
                            <img class="d-flex mr-3 z-depth-1" src="https://mdbootstrap.com/img/Photos/Others/placeholder1.jpg" width="62" alt="Generic placeholder image">
                            <div class="media-body">
                                <div class="d-sm-flex justify-content-between">
                                    <p class="mt-1 mb-2">
                                        <strong>Marthasteward </strong>
                                        <span>– </span><span>January 28, 2020</span>
                                    </p>
                                </div>
                                <p class="mb-0">Nice one, love it!</p>
                            </div>
                        </div>
                        <hr>
                        <div class="media mt-3 mb-4">
                            <img class="d-flex mr-3 z-depth-1" src="https://mdbootstrap.com/img/Photos/Others/placeholder1.jpg" width="62" alt="Generic placeholder image">
                            <div class="media-body">
                                <div class="d-sm-flex justify-content-between">
                                    <p class="mt-1 mb-2">
                                        <strong>Marthasteward </strong>
                                        <span>– </span><span>January 28, 2020</span>
                                    </p>
                                </div>
                                <p class="mb-0">Nice one, love it!</p>
                            </div>
                        </div>
                        <hr>
                        <h5 class="mt-4">Add a review</h5>
                        <div>
                            <div class="md-form md-outline">
                                <label for="form76">Your review</label>
                                <textarea id="form76" class="md-textarea form-control pr-6" rows="4"></textarea>
                            </div>
                            <br>
                            <div class="md-form md-outline">
                                <label for="form76">Rate </label>
                                <div class="my-3">

                                    <div class='rating-stars text-center'>
                                        <ul id='stars'>
                                            <li class='star' title='Poor' data-value='1'>
                                                <i class='fa fa-star fa-fw'></i>
                                            </li>
                                            <li class='star' title='Fair' data-value='2'>
                                                <i class='fa fa-star fa-fw'></i>
                                            </li>
                                            <li class='star' title='Good' data-value='3'>
                                                <i class='fa fa-star fa-fw'></i>
                                            </li>
                                            <li class='star' title='Excellent' data-value='4'>
                                                <i class='fa fa-star fa-fw'></i>
                                            </li>
                                            <li class='star' title='WOW!!!' data-value='5'>
                                                <i class='fa fa-star fa-fw'></i>
                                            </li>
                                        </ul>
                                    </div>

                                </div>
                            </div>

                            <div class="text-right pb-2">
                                <button type="button" class="btn btn-primary">Add a review</button>
                            </div>
                            <hr>
                            <br>
                            <br>
                        </div>
                    </div>

                </div>

            </div>
            <!-- Classic tabs -->

        @endforeach
        <br><br>
        <h4>Related Items</h4>
        <!-- ============== COMPONENT SLIDER ITEMS SLICK  ============= -->
        <div class="slider-items-slick row" data-slick='{"slidesToShow": 4, "slidesToScroll": 2}'>
            <?php
                $products = DB::select("SELECT * FROM products WHERE category_id = '$productCateGory'  ORDER BY products_id ASC LIMIT 12");
            ?>
            @foreach($products as $products)
                <div class="item-slide p-2">
                    <figure class="card card-product-grid mb-0">
                        <div class="img-wrap">
                            <a href="{{URL::to('/show-product').'/'.$products->name}}" class="img-wrap">
                                <span class="badge badge-danger"> NEW </span>
                                <img src="{{asset($products->image_one)}}">
                            </a>
                        </div>
                        <figcaption class="info-wrap text-center">
                            <h6 class="title text-truncate"><a
                                    href="{{URL::to('/show-product').'/'.$products->name}}">{{$products->name}}</a></h6>
                            <div class="price mt-1">{{$products->discount_price}} ৳</div>
                        </figcaption>
                    </figure>
                </div>
            @endforeach
        </div>
        <!-- ============== COMPONENT SLIDER ITEMS SLICK .end // ============= -->
        <br><br>

    </div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->


@include('layout.footer_side')

<script>
    $(document).ready(function(){

        $('#stars li').on('mouseover', function(){
            var onStar = parseInt($(this).data('value'), 10);

            $(this).parent().children('li.star').each(function(e){
                if (e < onStar) {
                    $(this).addClass('hover');
                }
                else {
                    $(this).removeClass('hover');
                }
            });

        }).on('mouseout', function(){
            $(this).parent().children('li.star').each(function(e){
                $(this).removeClass('hover');
            });
        });

        $('#stars li').on('click', function(){
            var onStar = parseInt($(this).data('value'), 10);
            var stars = $(this).parent().children('li.star');

            for (i = 0; i < stars.length; i++) {
                $(stars[i]).removeClass('selected');
            }

            for (i = 0; i < onStar; i++) {
                $(stars[i]).addClass('selected');
            }

            var ratingValue = parseInt($('#stars li.selected').last().data('value'), 10);
            var msg = "";

            alert(ratingValue);

        });


    });


    function responseMessage(msg) {
        $('.success-box').fadeIn(200);
        $('.success-box div.text-message').html("<span>" + msg + "</span>");
    }
</script>
<script>
    //window.location.href = 'ProductDetail';

    function viewProduct(ProductId) {

        var ProductId = $('#ProductId' + ProductId).val();
        /*
        if (ProductId!=""){
            document.getElementById("quickViewForm"+ProductId).submit();
        }else {

        } */
        $.ajax({
            url: "/QurcikView1",
            data: JSON.stringify({id: ProductId})
        })
    }
</script>


<script>
    //window.location.href = 'ProductDetail';
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    function viewProduct(ProductId) {

        //alert(ProductId);

        url = "{{ url('AddToCard') }}";
        $.ajax({
            url: url,
            type: "POST",
            data: {"_token": "{{ csrf_token() }}", "ProductId": ProductId, "quantity": '1'},
            datatype: 'JSON',
            success: function (data) {
                console.log(data);
                var dataResult = JSON.parse(data);
                if (dataResult.statusCode == 200) {

                    Swal.fire({
                        icon: 'success',
                        text: dataResult.statusMsg,

                    }).then((result) => {
                        location.reload();
                    })
                } else if (dataResult.statusCode == 204) {

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
