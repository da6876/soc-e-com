@section('title', 'Admin Users')
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
            <h1 class="h3 mb-0 text-gray-800">Shop Users</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="AdminHome">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Shop Users</li>
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
                  <h6 class="m-0 font-weight-bold text-primary">Shop Users Data</h6>
                  <a class="m-0 float-right btn btn-danger btn-sm" onclick="AddUserTypeData()" href="#">Add New Shop <i class="fas fa-plus-circle"></i></a>
                </div>
                <div class="table-responsive p-3">
                  <table class="table align-items-center table-flush" id="dataTable">
                    <thead class="thead-light">
                      <tr>
                        <th>Image</th>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Status</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>Image</th>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Status</th>
                        <th>Action</th>
                      </tr>
                    </tfoot>
                    <tbody>
                      @foreach ($users as $user)
					  <tr>
                        <th>
							<img src="{{URL::to($user->image)}}" class="img-fluid" alt="{{ $user->name }}" width="60">
						</th>
                        <th>{{ $user->shop_user_id }}</th>
                        <th>{{ $user->name }}</th>
                        <th>{{ $user->phone }}</th>
                        <th>{{ $user->email }}</th>
                        <th> 
							@if($user->shop_user_status=="A")
								<span class="badge badge-success">Active</span>
							@elseif($user->shop_user_status=="N")
								<span class="badge badge-warning">InActive</span>
							@else
								<span class="badge badge-warning">New</span>
							@endif
						</th>
                        <th> 
						<button onclick="showSlidereData({{$user->shop_user_id}})" class="btn btn-sm btn-primary">View</button>
						<button onclick="deleteUserData({{$user->shop_user_id}})" class="btn btn-sm btn-danger">Delete</button>
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
<div class="modal fade bd-example-modal-lg" id="modal-add-adminUser" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Name</label>
							<input type="text" class="form-control" name="name">
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Phone</label>
							<input type="number" class="form-control" name="phone">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Email</label>
							<input type="text" class="form-control" name="email">
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Password</label>
							<input type="password" class="form-control" name="password">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Shop Name</label>
							<input type="text" class="form-control" name="shop_name">
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Shop Address</label>
							<input type="text" class="form-control" name="shop_address">
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-md-6">
							<label for="exampleFormControlSelect1">User Type</label>
							<select class="form-control" name="user_type_id">
								<option value="">Select User Type</option>
								<?php 
								
									$users = DB::select('select * from user_type');
									
								?>
								@foreach ($users as $user)
								<option value="{{$user->user_type_id}}">{{$user->user_type_name}}</option>
								@endforeach
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="exampleFormControlSelect1">Status Select</label>
							<select class="form-control" name="status">
								<option value="A">A</option>
								<option value="B">N</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
					  <div class="custom-file">
						<input type="file" class="custom-file-input" name="user_image" id="customFile">
						<label class="custom-file-label" for="customFile">Choose file</label>
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
<div class="modal fade bd-example-modal-lg" id="modal-edit-adminUser" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="modal-title-User"></h5>
				
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form method="post" id="addData_from"  enctype="multipart/form-data" data-toogle="valibator">
				{{csrf_field()}}
				
				<div class="modal-body">

					<div class="row">
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Name</label>
							<input type="text" class="form-control" name="name" id="IDname" readonly>
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Phone</label>
							<input type="number" class="form-control" name="phone" id="IDphone" readonly>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Email</label>
							<input type="text" class="form-control" name="email" id="IDemail" readonly>
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Password</label>
							<input type="password" class="form-control" name="password" id="IDpassword" readonly>
						</div>
					</div>
					<div class="row dateinfo">
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Create Date</label>
							<input type="text" class="form-control" name="createDate" id="IDcreate_info" readonly>
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail" class="col-form-label">Update Date</label>
							<input type="text" class="form-control" name="updateDate" id="IDupdate_info" readonly>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-md-6">
							<label for="exampleFormControlSelect1">User Type</label>
							<select class="form-control" name="user_type_id">
								<option value="">Select User Type</option>
								<?php 
								
									$users = DB::select('select * from user_type');
									
								?>
								@foreach ($users as $user)
								<option value="{{$user->user_type_id}}">{{$user->user_type_name}}</option>
								@endforeach
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="exampleFormControlSelect1">Status Select</label>
							<select class="form-control" name="status">
								<option value="A">A</option>
								<option value="B">N</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
					  <div class="custom-file">
						<input type="file" class="custom-file-input" name="user_image" id="customFile">
						<label class="custom-file-label" for="customFile">Choose file</label>
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
 
	//Add User Modal Show
	 function AddUserTypeData() {
				 save_method = 'addShopUser';
				$('input[name_method]').val('POST');
				$('#modal-add-adminUser').modal('show');
				//$('#modal-add-data addData_from')[0].reset();
				//$(this).find('#modal-add-data')[0].reset();
				$('.modal-title').text('Add User');
				$('.btn-insert-socialIcon').text('Save Shop User');
				$('.modal-body').find('textarea,input').val('');
			}
		
	//insert Data By Ajax
	$(function () {
		$('#modal-add-adminUser form').on('submit', function (e) {
			if (!e.isDefaultPrevented()) {
				if (save_method == "addShopUser") {
					url = "{{ url('ShopAdmin') }}";
					$.ajax({
						url: url,
						type: "POST",
						data: new FormData($("#modal-add-adminUser form")[0]),
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
										window.location.href = 'ShopAdmin';
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
			url: "{{ url('ShopAdmin') }}" + '/' + id,
			type: "GET",
			dataType: "JSON",
			success: function (data) {
				
				$('#modal-edit-adminUser').modal('show');
				$('#modal-title-User').text(data[0].name + ' -- Information');
				$('#IDname').val(data[0].name);
				$('#IDphone').val(data[0].phone);
				$('#IDemail').val(data[0].email);
				$('#IDpassword').val(data[0].password);
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

	function checkFunction(){
		$('.btn_edit').hide();
		$('.btn_update').show();
		$("#IDname").prop('readonly', false);
		$("#IDemail").prop('readonly', false);
		$("#IDphone").prop('readonly', false);
		$("#IDpassword").prop('readonly', false);
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
								url: "{{ url('ShopAdmin') }}" + '/' + id,
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
												window.location.href = 'ShopAdmin';
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
