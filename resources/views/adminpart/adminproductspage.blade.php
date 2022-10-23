@section('title', 'Products')
@include('layout.admin_header_files')

<body id="page-top">
<div id="wrapper">
    <!-- Sidebar -->
@include('layout.admin_side_bar')
<!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
            <!-- TopBar -->
        @include('layout.admin_top_bar')
        <!-- Topbar -->

            <!-- Container Fluid-->
            <div class="container-fluid" id="container-wrapper">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Products</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="AdminHome">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Products</li>
                    </ol>
                </div>

                <div class="row mb-3">
                    <!-- Earnings (Monthly) Card Example -->

                    <!-- Earnings (Annual) Card Example -->

                    <!-- New User Card Example -->

                    <!-- Pending Requests Card Example -->


                    <!-- Area Chart -->

                    <!-- Pie Chart -->

                    <!-- Invoice Example -->
                    <div class="col-xl-12 col-lg-6 mb-4">
                        <div class="card">
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">Products Data</h6>
                                <a class="m-0 float-right btn btn-danger btn-sm" onclick="AddUserTypeData()" href="#">Add
                                    Products <i class="fas fa-plus-circle"></i></a>
                            </div>
                            <div class="table-responsive p-3">
                                <table class="table align-items-center table-flush" id="dataTable">
                                    <thead class="thead-light">
                                    <tr>
                                        <th>Image</th>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Details</th>
                                        <th>Price</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>Image</th>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Details</th>
                                        <th>Price</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    @foreach ($products as $products)
                                        <tr>
                                            <th>
                                                <img src="{{URL::to($products->image_one)}}" class="img-fluid"
                                                     alt="{{ $products->name }}" width="60">
                                            </th>
                                            <th>{{ $products->products_id }}</th>
                                            <th>{{ $products->name }}</th>
                                            <th>{{ $products->details }}</th>
                                            <th>{{ $products->price }}</th>
                                            <th>
                                                @if($products->products_status=="A")
                                                    <span class="badge badge-success">Active</span>
                                                @elseif($products->products_status=="N")
                                                    <span class="badge badge-warning">InActive</span>
                                                @else
                                                    <span class="badge badge-warning">New</span>
                                                @endif
                                            </th>
                                            <th>
                                                <button onclick="showSlidereData({{$products->products_id}})"
                                                        class="btn btn-sm btn-primary">View
                                                </button>
                                                <button onclick="deleteUserData({{$products->products_id}})"
                                                        class="btn btn-sm btn-danger">Delete
                                                </button>
                                            </th>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <div class="card-footer"></div>
                        </div>
                    </div>
                    <!-- Message From Customer-->

                </div>
                <!--Row-->


            </div>
            <!---Container Fluid-->
        </div>
        <!-- Footer -->
    @include('layout.admin_footer')
    <!-- Footer -->
    </div>
</div>

<!-- Scroll to top -->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
@include('layout.admin_footer_files')


<!-- Add Modal -->
<div class="modal fade bd-example-modal-lg" id="modal-add-product" tabindex="-1" role="dialog"
     aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="post" id="addData_from" enctype="multipart/form-data" data-toogle="valibator">
                {{csrf_field()}}

                <div class="modal-body">

                    <div class="row">
                        <div class="form-group col-md-12">
                            <label for="inputEmail" class="col-form-label">Product Name</label>
                            <input type="text" class="form-control" name="ProductName">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label for="inputEmail" class="col-form-label">Product Details</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" name="ProductDetails"
                                      rows="3"></textarea>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Category</label>
                            <select class="form-control" name="Category_id">
                                <option value="">Select Category</option>
                                <?php
                                $shop_user_id = Session::get('shop_user_id');

                                if (isset($shop_user_id)) {
                                    $categories = DB::select("select * from categories  where shop_id = '$shop_user_id' ");
                                } else {
                                    $categories = DB::select("select * from categories");
                                }
                                ?>
                                @foreach ($categories as $user)
                                    <option value="{{$user->categories_id}}">{{$user->categories_name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Sub Category</label>
                            <select class="form-control" name="sub_categories_id">
                                <option value="">Select Sub Category</option>
                                <?php

                                $shop_user_id = Session::get('shop_user_id');

                                if (isset($shop_user_id)) {
                                    $users = DB::select("select * from sub_categories  where shop_id = '$shop_user_id' ");
                                } else {
                                    $users = DB::select('select * from sub_categories');
                                }
                                ?>
                                @foreach ($users as $user)
                                    <option value="{{$user->sub_categories_id}}">{{$user->sub_categories_name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>


                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Brand</label>
                            <select class="form-control" name="Brand_id">
                                <option value="">Select Brand</option>
                                <?php

                                $shop_user_id = Session::get('shop_user_id');

                                if (isset($shop_user_id)) {
                                    $users = DB::select("select * from brands where shop_id = '$shop_user_id' ");
                                } else {

                                    $users = DB::select('select * from brands');
                                }
                                ?>
                                @foreach ($users as $user)
                                    <option value="{{$user->brands_id}}">{{$user->brands_name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Country</label>
                            <select class="form-control" name="Country_id" id="Country_ids">
                                <option value="">Select Country</option>
                                <?php
                                $users = DB::select('select * from country');
                                ?>
                                @foreach ($users as $user)
                                    <option value="{{$user->id}}">{{$user->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image One</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="image1" id="customFile">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image Two</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="image2" id="customFile">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image Three</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="image3" id="customFile">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image Four</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="image4" id="customFile">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="form-group col-md-3">
                            <label>Price</label>
                            <input name="Price" type="number" class="form-control">
                        </div>

                        <div class="form-group col-md-3">
                            <label>Discount Price</label>
                            <input name="DiscountPrice" type="number" class="form-control">
                        </div>

                        <div class="form-group col-md-3">
                            <label>Discount</label>
                            <input name="Discount" type="number" class="form-control">
                        </div>

                        <div class="form-group col-md-3">
                            <label>Quantity</label>
                            <input name="Quantity" type="number" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="inputEmail" class="col-form-label">Product Code</label>
                            <input type="text" class="form-control" name="Product_Code">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="exampleFormControlSelect1">Sort Order</label>
                            <select class="form-control" name="sort_order" id="sort_order">
                                <option value="Top">Top Category</option>
                                <option value="Populer">Populer Category</option>
                                <option value="New">New arrived</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="exampleFormControlSelect1">Status Select</label>
                            <select class="form-control" name="status">
                                <option value="A">A</option>
                                <option value="N">N</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary btn-insert-socialIcon"></button>

                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Show Modal -->
<div class="modal fade bd-example-modal-lg" id="modal-edit-product" tabindex="-1" role="dialog"
     aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modal-title-User"></h5>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="post" id="addData_from" enctype="multipart/form-data" data-toogle="valibator">
                {{csrf_field()}}

                <div class="modal-body">
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label for="inputEmail" class="col-form-label">Product Name</label>
                            <input type="text" class="form-control" name="ProductName" id="ProductName">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label for="inputEmail" class="col-form-label">Product Details</label>
                            <input type="text" class="form-control" name="ProductDetails" id="ProductDetails">
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Category</label>
                            <select class="form-control" name="Category_id" id="Category_id">
                                <option value="">Select Category</option>
                                <?php

                                $users = DB::select('select * from categories');

                                ?>
                                @foreach ($users as $user)
                                    <option value="{{$user->categories_id}}">{{$user->categories_name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Sub Category</label>
                            <select class="form-control" name="sub_categories_id" id="sub_categories_id">
                                <option value="">Select Sub Category</option>
                                <?php

                                $users = DB::select('select * from sub_categories');

                                ?>
                                @foreach ($users as $user)
                                    <option value="{{$user->sub_categories_id}}">{{$user->sub_categories_name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Brand</label>
                            <select class="form-control" name="Brand_id" id="Brand_id">
                                <option value="">Select Brand</option>
                                <?php

                                $users = DB::select('select * from brands');

                                ?>
                                @foreach ($users as $user)
                                    <option value="{{$user->brands_id}}">{{$user->brands_name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Country</label>
                            <select class="form-control" name="Country_id" id="Country_id">
                                <option value="">Select Country</option>
                                <?php
                                $users = DB::select('select * from country');
                                ?>
                                @foreach ($users as $user)
                                    <option value="{{$user->id}}">{{$user->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="row img_row1">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image One</label>
                            <div class="form-group">
                                <img src="" class="img-fluid" id="Image01" alt="Image Three" width="200">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image Two</label>
                            <div class="form-group">
                                <img src="" class="img-fluid" id="Image02" alt="Image Three" width="200">
                            </div>
                        </div>
                    </div>

                    <div class="row img_row2">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image Three</label>
                            <div class="form-group">
                                <img src="" class="img-fluid" id="Image03" alt="Image Three" width="200">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image Four</label>
                            <div class="form-group">
                                <img src="" class="img-fluid" id="Image04" alt="Image Three" width="200">
                            </div>
                        </div>
                    </div>

                    <div class="row img_edit_show1">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image One</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="image1" id="customFile">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image Two</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="image2" id="customFile">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>
                    </div>

                    <div class="row img_edit_show2">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image Three</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="image3" id="customFile">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Image Four</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="image4" id="customFile">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="form-group col-md-3">
                            <label for="touchSpin3">Price</label>
                            <input name="Price" id="Price" type="number" class="form-control">
                        </div>

                        <div class="form-group col-md-3">
                            <label for="touchSpin3">Discount Price</label>
                            <input name="DiscountPrice" id="DiscountPrice" type="number" class="form-control">
                        </div>

                        <div class="form-group col-md-3">
                            <label for="touchSpin3">Discount</label>
                            <input type="text" class="form-control" id="IDDiscount" name="Discount">

                        </div>

                        <div class="form-group col-md-3">
                            <label for="touchSpin3">Quantity</label>
                            <input name="Quantity" id="Quantity" type="number" class="form-control">
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="inputEmail" class="col-form-label">Product Code</label>
                            <input type="text" class="form-control" id="Product_Code" name="Product_Code">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="exampleFormControlSelect1">Sort Order</label>
                            <select class="form-control" name="sort_order" id="sort_order">
                                <option value="Top">Top Category</option>
                                <option value="Populer">Populer Category</option>
                                <option value="New">New arrived</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="exampleFormControlSelect1">Status Select</label>
                            <select class="form-control" name="status" id="status">
                                <option value="A">A</option>
                                <option value="N">N</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary btn_edit" onclick="checkFunction()"></button>
                        <button type="submit" class="btn btn-primary btn_update" onclick=""></button>

                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


<script>

    $("#Country_ids").val("18");

    //Add User Modal Show
    function AddUserTypeData() {
        save_method = 'addProducts';
        $('input[name_method]').val('POST');
        $('#modal-add-product').modal('show');
        //$('#modal-add-data addData_from')[0].reset();
        //$(this).find('#modal-add-data')[0].reset();
        $('.modal-title').text('Add User');
        $('.btn-insert-socialIcon').text('Save Admin User');
        $('.modal-body').find('textarea,input').val('');
    }

    //insert Data By Ajax
    $(function () {
        $('#modal-add-product form').on('submit', function (e) {
            if (!e.isDefaultPrevented()) {
                if (save_method == "addProducts") {
                    url = "{{ url('AdminProducts') }}";
                    $.ajax({
                        url: url,
                        type: "POST",
                        data: new FormData($("#modal-add-product form")[0]),
                        contentType: false,
                        processData: false,
                        success: function (data) {
                            console.log(data);
                            var dataResult = JSON.parse(data);
                            if (dataResult.statusCode == 200) {
                                $('#modal-add-product').modal('hide');
                                swal({
                                    title: "Success",
                                    text: dataResult.statusMsg,
                                    icon: "success",
                                    button: "Great"
                                }).then((result) => {
                                    window.location.href = 'AdminProducts';
                                });
                            } else if (dataResult.statusCode == 201) {
                                console.log(dataResult);
                                swal({
                                    title: "Oops",
                                    text: "Error occured !",
                                    icon: "error",
                                    timer: '1500'
                                });
                            }
                        }, error: function (data) {
                            console.log(data);
                            swal({
                                title: "Oops",
                                text: "Error occured !",
                                icon: "error",
                                timer: '1500'
                            });
                        }
                    });
                    return false;
                }
            }
        });
    });

    //Show User Data
    function showSlidereData(id) {

        $.ajax({
            url: "{{ url('AdminProducts') }}" + '/' + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                console.log(data);
                $('#modal-edit-product').modal('show');
                $('#modal-title-User').text(data[0].name + '(' + data[0].product_code + ')-- Information');
                $("#ProductName").prop('readonly', true);
                $('#ProductName').val(data[0].name);
                $("#ProductDetails").prop('readonly', true);
                $('#ProductDetails').val(data[0].details);
                $("#Price").prop('readonly', true);
                $('#Price').val(data[0].price);
                $("#DiscountPrice").prop('readonly', true);
                $('#DiscountPrice').val(data[0].discount_price);
                $("#IDDiscount").prop('readonly', true);
                $('#IDDiscount').val(data[0].discount);
                $("#Quantity").prop('readonly', true);
                $('#Quantity').val(data[0].quantity);
                $("#sort_order").prop('readonly', true);
                $('#sort_order').val(data[0].sort_order);
                $("#Product_Code").prop('readonly', true);
                $('#Product_Code').val(data[0].product_code);
                $('#Image01').attr('src', data[0].image_one);
                $('#Image02').attr('src', data[0].image_two);
                $('#Image03').attr('src', data[0].image_three);
                $('#Image04').attr('src', data[0].image_four);

                $("#Product_Type_id").val(data[0].product_types_id);
                $('#Product_Type_id').attr("readonly", "readonly");
                $("#sub_categories_id").val(data[0].sub_categories_id);
                $('#sub_categories_id').attr("readonly", "readonly");
                $("#Category_id").val(data[0].category_id);
                $('#Category_id').attr("readonly", "readonly");
                $("#Brand_id").val(data[0].brands_id);
                $('#Brand_id').attr("readonly", "readonly");
                $("#Country_id").val(data[0].country_id);
                $('#Country_id').attr("readonly", "readonly");
                $("#status").val(data[0].products_status);
                $('#status').attr("readonly", "readonly");

                $('.btn_edit').text('Edit Info');
                $('.btn_edit').text('Edit Info');
                $('.btn_update').text('Update Info');
                $('.btn_update').hide();
                $('.img_edit_show1').hide();
                $('.img_edit_show2').hide();
            }, error: function (data) {
                con
                swal({
                    title: "Oops",
                    text: "aa",
                    icon: "error",
                    timer: '1500'
                });
            }
        });
    }

    function checkFunction() {
        $('.btn_edit').hide();
        $('.img_row1').hide();
        $('.img_row2').hide();
        $('.img_edit_show1').show();
        $('.img_edit_show2').show();
        $('.btn_update').show();
        $("#ProductName").prop('readonly', false);
        $("#ProductDetails").prop('readonly', false);
        $("#Price").prop('readonly', false);
        $("#DiscountPrice").prop('readonly', false);
        $("#IDDiscount").prop('readonly', false);
        $("#Quantity").prop('readonly', false);
        $("#Product_Code").prop('readonly', false);
        $("#sort_order").prop('readonly', false);
        $('#Product_Type_id').attr("readonly", false);
        $('#Category_id').attr("readonly", false);
        $('#sub_categories_id').attr("readonly", false);
        $('#Brand_id').attr("readonly", false);
        $('#Country_id').attr("readonly", false);
        $('#status').attr("readonly", false);
        $(".dateinfo").hide();
    }

    //Dalete User Data
    function deleteUserData(id) {
        var csrf_token = $('meta[name="csrf-token"]').attr('content');
        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover this imaginary file!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        }).then((willDelete) => {
            if (willDelete) {
                $.ajax({
                    url: "{{ url('AdminProducts') }}" + '/' + id,
                    type: "POST",
                    data: {'_method': 'DELETE', '_token': csrf_token},
                    success: function (data) {
                        console.log(data);
                        var dataResult = JSON.parse(data);
                        if (dataResult.statusCode == 200) {
                            $('#slider-dataTabel').DataTable().ajax.reload();
                            swal({
                                title: "Delete Done",
                                text: "Poof! Your data file has been deleted!",
                                icon: "success",
                                button: "Done"
                            }).then((result) => {
                                window.location.href = 'AdminProducts';
                            });
                        } else {
                            swal("Your imaginary file is safe!");
                        }
                    }, error: function (data) {
                        console.log(data);
                        swal({
                            title: "Opps...",
                            text: "Error occured !",
                            icon: "error",
                            button: 'Ok ',
                        });
                    }
                });
            } else {
                swal("Your imaginary file is safe!");
            }
        });
    }


</script>
