@section('title', 'Sub Categories')
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
                    <h1 class="h3 mb-0 text-gray-800">Sub Categories</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="AdminHome">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Sub Categories</li>
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
                                <h6 class="m-0 font-weight-bold text-primary">Sub Categories Data</h6>
                                <a class="m-0 float-right btn btn-danger btn-sm" onclick="AddUserTypeData()" href="#">Add
                                    Sub Categorie <i class="fas fa-plus-circle"></i></a>
                            </div>
                            <div class="table-responsive p-3">
                                <table class="table align-items-center table-flush" id="dataTable">
                                    <thead class="thead-light">
                                    <tr>
                                        <th>ID</th>
                                        <th>Categorie ID</th>
                                        <th>Name</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>Categorie ID</th>
                                        <th>Name</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    @foreach ($sub_categories as $sub_categories)
                                        <tr>
                                            <th>{{ $sub_categories->sub_categories_id }}</th>
                                            <th>{{ $sub_categories->categories_id }}</th>
                                            <th>{{ $sub_categories->sub_categories_name }}</th>
                                            <th>
                                                @if($sub_categories->sub_categories_status=="A")
                                                    <span class="badge badge-success">Active</span>
                                                @elseif($sub_categories->sub_categories_status=="N")
                                                    <span class="badge badge-warning">InActive</span>
                                                @else
                                                    <span class="badge badge-warning">New</span>
                                                @endif
                                            </th>
                                            <th>
                                                <button onclick="showSlidereData({{$sub_categories->categories_id}})"
                                                        class="btn btn-sm btn-primary">View
                                                </button>
                                                <button onclick="deleteUserData({{$sub_categories->categories_id}})"
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
<div class="modal fade bd-example-modal-lg" id="modal-add-subcategories" tabindex="-1" role="dialog"
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
                            <label for="inputEmail" class="col-form-label">Name</label>
                            <input type="text" class="form-control" name="SubCategoriename">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Select Categorie</label>
                            <select class="form-control" name="CategorieId">
                                <option value="">Select Categorie</option>
                                <?php

                                $shop_user_id = Session::get('shop_user_id');

                                if (isset($shop_user_id)) {
                                    $categories = DB::select("select * from categories  where shop_id = '$shop_user_id' ");
                                } else {
                                    $categories = DB::select("select * from categories");
                                }
                                ?>
                                @foreach ($categories as $categories)
                                    <option
                                        value="{{$categories->categories_id}}">{{$categories->categories_name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Status Select</label>
                            <select class="form-control" name="SubCategoriestatus">
                                <option value="">Select Status</option>
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
<div class="modal fade bd-example-modal-lg" id="modal-edit-subcategories" tabindex="-1" role="dialog"
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
                            <label for="inputEmail" class="col-form-label">Name</label>
                            <input type="text" class="form-control" name="SubCategoriename">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Select Categorie</label>
                            <select class="form-control" name="CategorieId">
                                <option value="">Select Categorie</option>
                                <?php
                                $categories = DB::select('select * from categories');
                                ?>
                                @foreach ($categories as $categories)
                                    <option
                                        value="{{$categories->categories_id}}">{{$categories->categories_name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleFormControlSelect1">Status Select</label>
                            <select class="form-control" name="SubCategoriestatus">
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


<script>

    //Add User Modal Show
    function AddUserTypeData() {
        save_method = 'addsubcategories';
        $('input[name_method]').val('POST');
        $('#modal-add-subcategories').modal('show');
        $('.modal-title').text('Add Sub Categories');
        $('.btn-insert-socialIcon').text('Save Sub Categories');
        $('.modal-body').find('textarea,input').val('');
    }

    //insert Data By Ajax
    $(function () {
        $('#modal-add-subcategories form').on('submit', function (e) {
            if (!e.isDefaultPrevented()) {
                if (save_method == "addsubcategories") {
                    url = "{{ url('AdminSubCategories') }}";
                    $.ajax({
                        url: url,
                        type: "POST",
                        data: new FormData($("#modal-add-subcategories form")[0]),
                        contentType: false,
                        processData: false,
                        success: function (data) {
                            console.log(data);
                            var dataResult = JSON.parse(data);
                            if (dataResult.statusCode == 200) {
                                $('#modal-add-subcategories').modal('hide');
                                swal({
                                    title: "Success",
                                    text: dataResult.statusMsg,
                                    icon: "success",
                                    button: "Great"
                                }).then((result) => {
                                    window.location.href = 'AdminSubCategories';
                                });
                            } else if (dataResult.statusCode == 201) {
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
            url: "{{ url('AdminSubCategories') }}" + '/' + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {

                $('#modal-edit-subcategories').modal('show');
                $('#modal-title-User').text(data[0].categories_name + ' -- Information');
                $('#IDCategoriename').val(data[0].categories_name);
                $('#IDcreate_info').val(data[0].create_info);
                $('#IDupdate_info').val(data[0].update_info);
                $('.btn_edit').text('Edit Info');
                $('.btn_update').text('Update Info');
                $('.btn_update').hide();
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
        $('.btn_update').show();
        $("#IDCategoriename").prop('readonly', false);
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
                    url: "{{ url('AdminSubCategories') }}" + '/' + id,
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
                                window.location.href = 'AdminSubCategories';
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
