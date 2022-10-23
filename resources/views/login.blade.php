@section('titleSite', 'Sign In')
@include('layout.header_files')
@include('layout.topbar_menu')

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-conten padding-y" style="min-height:84vh">

<!-- ============================ COMPONENT LOGIN   ================================= -->
	<div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body">
      <h4 class="card-title mb-4">Sign in</h4>
      <form method="post" id="SingInForm" data-toogle="valibator" enctype="multipart/form-data">
				{{csrf_field()}}
      	  {{--<a href="#" class="btn btn-facebook btn-block mb-2"> <i class="fab fa-facebook-f"></i> &nbsp  Sign in with Facebook</a>
      	  <a href="#" class="btn btn-google btn-block mb-4"> <i class="fab fa-google"></i> &nbsp  Sign in with Google</a>--}}
          <div class="form-group">
			 <input class="form-control" name="Username" id="Username" placeholder="Mobile No" type="text">
          </div> <!-- form-group// -->
          <div class="form-group">
			<input class="form-control" name="Password" id="Password" placeholder="Password" type="password">
          </div> <!-- form-group// -->
          
          <div class="form-group">
          	<a href="#" class="float-right">Forgot password?</a> 
            <label class="float-left custom-control custom-checkbox"> <input type="checkbox" class="custom-control-input" checked=""> <div class="custom-control-label"> Remember </div> </label>
          </div> <!-- form-group form-check .// -->
          <div class="form-group">
              <button type="button" onClick="submitLogin()" class="btn btn-primary btn-block"> Login  </button>
          </div> <!-- form-group// -->    
      </form>
      </div> <!-- card-body.// -->
    </div> <!-- card .// -->

     <p class="text-center mt-4">Don't have account? <a href="{{url('DACommerceRegistration')}}">Sign up</a></p>
     <br><br>
<!-- ============================ COMPONENT LOGIN  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<footer class="section-footer border-top padding-y">
	<div class="container">
		<p class="float-md-right"> 
			&copy Copyright 2019 All rights reserved
		</p>
		<p>
			<a href="#">Terms and conditions</a>
		</p>
	</div><!-- //container -->
</footer>
<!-- ========================= FOOTER END // ========================= -->

<script>
function submitLogin(){
	
	 var Username = $("#Username").val();
	 var Password = $("#Password").val();
	 
	 if(Username!=""){
		 if(Password!=""){
				sendRequest();		 
		 }else{
			Swal.fire({
				title: "Alert",
				text: 'Enter Your Password !!',
				timer: '1500'
			});
		 }
	 }else{
		Swal.fire({
			title: "Alert",
			text: 'Enter Your UserName !!',
			timer: '1500'
		});
	 }
}

function sendRequest() {

	url = "{{url('UserLogIn') }}";
	$.ajax({
		url: url,
		type: "POST",
		data: new FormData($("#SingInForm")[0]),
		contentType: false,
		processData: false,
		success: function (data) {
			console.log(data);
			var dataResult = JSON.parse(data);
			if (dataResult.statusCode == 200) {
				window.location.href = 'Home';
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

</body>
</html>
