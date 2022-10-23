@section('title', 'Brands')
@include('layout.admin_header_files')
<style>
th, td {
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    max-width: 400px;
}
</style>
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
            <h1 class="h3 mb-0 text-gray-800">Order </h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="AdminHome">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Order </li>
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
                  <h6 class="m-0 font-weight-bold text-primary">Order Info</h6>
                </div>
                <div class="table-responsive p-3">
                  <table class="table align-items-center table-flush" id="dataTable">
                    <thead class="thead-light">
                      <tr>
                        <th>Cust. Contact Info</th>
                        <th>Order Status</th>
                      {{--<th>Product Info</th>
                        <th>OrderStatus</th>--}}
                        <th>Order Info</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>Cust. Contact Info</th>{{--
                        <th>Order Info</th>
                        <th>Product Info</th>--}}
                        <th>OrderStatus</th>
                        <th>Order Info</th>
                        <th>Action</th>
                      </tr>
                    </tfoot>
                    <tbody>
                      @foreach ($users as $users)
					  <tr>
                        <th>
                            Name : {{ $users->UserInfoName }},<br>
                            Phone : {{ $users->phone }},<br>
                            Email:{{ $users->email }}

                        </th>
                          <th>
                              @if($users->order_status=='Rejected')
                                <span class="badge badge-danger">{{$users->order_status}}</span>
                              @elseif($users->order_status=='Pending')
                                  <span class="badge badge-secondary">{{$users->order_status}}</span>
                              @elseif($users->order_status=='Acpect')
                                  <span class="badge badge-success">{{$users->order_status}}</span>
                              @elseif($users->order_status=='Processing')
                                  <span class="badge badge-info">{{$users->order_status}}</span>
                              @elseif($users->order_status=='Deliver')
                                  <span class="badge badge-light">{{$users->order_status}}</span>
                              @elseif($users->order_status=='Confirm')
                                  <span class="badge badge-primary">{{$users->order_status}}</span>
                              @else
                                  <span class="badge badge-gray">{{$users->order_status}}</span>
                              @endif
                          </th>
                        <th>
                            Product Name : {{ $users->ProductName }},<br>
                            Order Price : {{ $users->OrderPrice }},<br>
                            Order Quintity :  {{ $users->OrderQuntity }},<br>
                            Shipping Address : {{ $users->ShipingAddress }}
                            Order Date : {{ $users->OrderDate }}
                        </th>
                        {{--<th>
                            Product Name : {{ $users->ProductName }},<br>
                            Stock Price : {{ $users->discount_price }},<br>
                            Stock Quintity :  {{ $users->quantity }}
                        </th>--}}
                        <th>
						<button onclick="AddUserTypeData({{ $users->order_id }})" class="btn btn-sm btn-primary">Update Status</button>
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
  <div class="modal fade bd-example-modal-lg" id="modal-add-addBrand" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
          <div class="modal-content">
              <div class="modal-header">
                  <h5 class="modal-title"></h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div>
              <form method="post" id="addData_from"  enctype="multipart/form-data" data-toogle="valibator">
                  {{csrf_field()}}

                  <div class="modal-body">

                      <div class="row">
                              <input type="hidden" class="form-control" id="OrderId" name="OrderId">
                          <div class="form-group col-md-12">
                              <label for="exampleFormControlSelect1">Status Select</label>
                              <select class="form-control" name="status">
                                  <option value="">Select Status</option>
                                  <option value="Rejected">Rejected</option>
                                  <option value="Accept">Accept</option>
                                  <option value="Processing">Processing</option>
                                  <option value="Deliver">Deliver</option>
                                  <option value="Confirm">Confirm</option>
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
     function AddUserTypeData(order_id) {
         save_method = 'updateOder';
         $('input[name_method]').val('POST');
         $('#modal-add-addBrand').modal('show');
         $('.modal-title').text('Add Brand');
         $('.btn-insert-socialIcon').text('Save');
         $('.modal-body').find('textarea,input').val('');
         $("#OrderId").val(order_id)
     }

     //insert Data By Ajax
     $(function () {
         $('#modal-add-addBrand form').on('submit', function (e) {
             if (!e.isDefaultPrevented()) {
                 if (save_method == "updateOder") {
                     url = "{{ url('ChangeOrder') }}";
                     $.ajax({
                         url: url,
                         type: "POST",
                         data: new FormData($("#modal-add-addBrand form")[0]),
                         contentType: false,
                         processData: false,
                         success: function (data) {
                             console.log(data);
                             var dataResult = JSON.parse(data);
                             if (dataResult.statusCode == 200) {
                                 $('#modal-add-adminUser').modal('hide');
                                 swal({
                                     title: "Success",
                                     text: dataResult.statusMsg,
                                     icon: "success",
                                     button: "Great"
                                 }).then((result) => {
                                     window.location.href = 'OrderInfo';
                                 });;
                             } else if (dataResult.statusCode == 201) {
                                 swal({
                                     title: "Oops",
                                     text: "Error occured !",
                                     icon: "error",
                                     timer: '1500'
                                 });
                             }
                         }, error: function (data) {
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



</script>
