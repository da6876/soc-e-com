@section('titleSite', 'Order Info')
@include('layout.header_files')
@include('layout.topbar_menu')
@include('layout.nav_main_menu')

<!-- ========================= SECTION PAGETOP ========================= -->
<section class="section-pagetop bg">
    <div class="container">
        <h2 class="title-page">My Order Info</h2>
    </div> <!-- container //  -->
</section>
<!-- ========================= SECTION INTRO END// ========================= -->

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
    <div class="container">

        <div class="row">
            <main class="col-md-12">
                <div class="card">

                    <table class="table table-borderless table-shopping-cart">
                        <thead class="text-muted">
                        <tr class="small text-uppercase">
                            <th scope="col">Product</th>
                            <th scope="col" width="120">Price</th>
                            <th scope="col" width="120">Status</th>
                            <th scope="col" class="text-right" width="200"></th>
                        </tr>
                        </thead>
                        <tbody>
                        @if(count($Product) != 0)
                            @foreach ($Product as $Product)
                                <tr>
                                    <td>
                                        <figure class="itemside">
                                           <b> Product Name : {{ $Product->ProductName }},<br>
                                            Name : {{ $Product->UserInfoName }},<br>
                                            Phone : {{ $Product->phone }},<br>
                                            Shipping Address : {{ $Product->ShipingAddress }},<br>
                                            Order Date : {{ $Product->OrderDate }}
                                           </b>
                                        </figure>
                                    </td>

                                    <td>
                                        <div class="price-wrap">
                                            <var class="price">{{$Product->OrderPrice}} ৳</var>
                                            <b class="text-muted"> {{$Product->discount_price}} Single </b>
                                            <small class="text-muted"> {{$Product->quantity}} Quintity</small>

                                        </div> <!-- price-wrap .// -->
                                    </td>
                                    <td>
                                        <div class="price-wrap">
                                            <var class="price">
                                                @if($Product->order_status=='Rejected')
                                                    <span class="badge badge-danger">{{$Product->order_status}}</span>
                                                @elseif($Product->order_status=='Pending')
                                                    <span
                                                        class="badge badge-secondary">{{$Product->order_status}}</span>
                                                @elseif($Product->order_status=='Acpect')
                                                    <span class="badge badge-success">{{$Product->order_status}}</span>
                                                @elseif($Product->order_status=='Processing')
                                                    <span class="badge badge-info">{{$Product->order_status}}</span>
                                                @elseif($Product->order_status=='Deliver')
                                                    <span class="badge badge-light">{{$Product->order_status}}</span>
                                                @elseif($Product->order_status=='Confirm')
                                                    <span class="badge badge-primary">{{$Product->order_status}}</span>
                                                @else
                                                    <span class="badge badge-gray">{{$Product->order_status}}</span>
                                                @endif
                                            </var>
                                        </div> <!-- price-wrap .// -->
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group-vertical" role="group" aria-label="Basic example">
                                            <button onclick="removeCardItemAleart()" type="button"
                                                    class="btn btn-danger" id="btnRemove">Remove
                                            </button>
                                        </div>
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

                        <a href="{{URL::to('/')}}" class="btn btn-light"> <i class="fa fa-chevron-left"></i> Continue
                            shopping </a>
                    </div>
                </div> <!-- card.// -->

                <div class="alert alert-success mt-3">
                    <p class="icontext"><i class="icon text-success fa fa-truck"></i> Free Delivery within 1-2 weeks</p>
                </div>

            </main> <!-- col.// -->

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
<div class="modal editQuantity" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Quantity</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">QUANTITY:</label>
                        <input
                            oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                            type="number" class="form-control" id="modelquantity" maxlength="3">
                        <input type="hidden" class="form-control" id="modelMarketId">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" onclick="updateCard()" class="btn btn-primary">Save changes</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
@include('layout.footer_side')

<script>

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    function confirmOrder() {
        Swal.fire({
            text: "Are you sure? Want to Confirm Your Order!",
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes Order Now'
        }).then((result) => {
            if (result.isConfirmed) {
                url = "{{ url('PlaceOrder') }}";
                $.ajax({
                    url: url,
                    type: "POST",
                    data: {"_token": "{{ csrf_token() }}"},
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
                        } else {
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

    function updateCard() {
        var quantity = document.getElementById('modelquantity').value;
        var marketId = document.getElementById('modelMarketId').value;

        url = "{{ url('UpdateToCard') }}";
        $.ajax({
            url: url,
            type: "POST",
            data: {"_token": "{{ csrf_token() }}", "quantity": quantity, "marketId": marketId},
            datatype: 'JSON',
            success: function (data) {
                console.log(data);
                var dataResult = JSON.parse(data);
                if (dataResult.statusCode == 200) {

                    Swal.fire({
                        icon: 'success',
                        text: dataResult.statusMsg,

                    }).then((result) => {
                        window.location.href = 'ShoppingCart';
                    })
                } else {
                    Swal.fire({
                        text: dataResult.statusMsg,
                        icon: "error",
                        timer: '1500'
                    });
                }
            }, error: function (data) {
                console.log(data);
                Swal.fire({
                    text: "Error occured !",
                    icon: "error",
                    timer: '1500'
                });
            }
        });
    }

    function editCard(markets_id, products_id, quantity) {

        $('.editQuantity').modal('show');

        $('#modelMarketId').val(markets_id);
        $('#modelquantity').val(quantity);

    }

    function removeCardItemAleart(markets_id) {
        Swal.fire({
            text: "Are you sure? Want to Remove This Item!",
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, Remove it!'
        }).then((result) => {
            if (result.isConfirmed) {
                url = "{{ url('RemoveToCard') }}";
                $.ajax({
                    url: url,
                    type: "POST",
                    data: {"_token": "{{ csrf_token() }}", "markets_id": markets_id},
                    datatype: 'JSON',
                    success: function (data) {
                        console.log(data);
                        var dataResult = JSON.parse(data);
                        if (dataResult.statusCode == 200) {

                            Swal.fire({
                                text: dataResult.statusMsg,
                            }).then((result) => {
                                window.location.href = 'ShoppingCart';
                            })
                        } else {
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
