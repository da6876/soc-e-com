@section('titleSite', 'Sign Up')
@include('layout.header_files')
@include('layout.topbar_menu')

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">

<!-- ============================ COMPONENT REGISTER   ================================= -->
	<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
      <article class="card-body">
		<header class="mb-4"><h4 class="card-title">Sign up</h4></header>
		<form method="post" id="SingupForm" data-toogle="valibator" enctype="multipart/form-data">
				{{csrf_field()}}
				<div class="form-group">
					<label>Name</label>
					<input type="text" id="Name" name="Name" class="form-control" placeholder="">
				</div> <!-- form-group end.// -->
				<div class="form-row">
					<div class="col form-group">
						<label>Mobile</label>
						<input type="number"  maxlength="11" id="Mobile" name="Mobile" class="form-control" placeholder="">
						<small class="form-text text-muted">We'll never share your Mobile No.</small>
					</div>
					<div class="col form-group">
						<label>Email</label>
						<input type="email" id="Email" name="Email" class="form-control" placeholder="">
						<small class="form-text text-muted">We'll never share your email.</small>
					</div>
				</div> <!-- form-group end.// -->
				
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Create password</label>
					    <input id="password" name="password"  class="form-control" type="password">
					</div> <!-- form-group end.// --> 
					<div class="form-group col-md-6">
						<label>Repeat password</label>
					    <input id="Repeatpassword" class="form-control" type="password">
					    <input type="hidden" name ="user_image" class="form-control" type="password">
					</div> <!-- form-group end.// -->  
				</div>
			    <div class="form-group">
			        <button type="button" onclick="submitRefister()" class="btn btn-primary btn-block"> Register  </button>
			    </div> <!-- form-group// -->      
			    <div class="form-group"> 
		            <label class="custom-control custom-checkbox"> <input type="checkbox" id="confirmTerms" class="custom-control-input" checked=""> <div class="custom-control-label"> I am agree with <a href="#">terms and contitions</a>  </div> </label>
		        </div> <!-- form-group end.// -->           
			</form>
		</article><!-- card-body.// -->
    </div> <!-- card .// -->
    <p class="text-center mt-4">Have an account? <a href="">Log In</a></p>
    <br><br>
<!-- ============================ COMPONENT REGISTER  END.// ================================= -->


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
	function submitRefister(){
		//alert("AAA");
		 var Name = $("#Name").val();
		 var Mobile = $("#Mobile").val();
		 var Email = $("#Email").val();
		 var password = $("#password").val();
		 var Repeatpassword = $("#Repeatpassword").val();
		 if(Name!=""){
			 if(Mobile!=""){
				 if(Email!=""){
					 if(password!=""){
						if(Repeatpassword!=""){
							if(Repeatpassword==password){
								sendRequest();
							 }else{
								Swal.fire({
									title: "Alert",
									text: "Password Don't Match !!",
									timer: '1500'
								});
							 }
						 }else{
							Swal.fire({
								title: "Alert",
								text: 'Confiram Your Password',
								timer: '1500'
							});
						 }
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
						text: 'Enter Your Email Address !!',
						timer: '1500'
					});
				 }
			 }else{
				Swal.fire({
					title: "Alert",
					text: 'Enter Your Mobile No !!',
					timer: '1500'
				});
			 }
		 }else{
			Swal.fire({
				title: "Alert",
				text: 'Enter Your Name !!',
				timer: '1500'
			});
		 }
	}
	
	function sendRequest() {

        url = "{{url('UserSignUp') }}";
        $.ajax({
            url: url,
            type: "POST",
            data: new FormData($("#SingupForm")[0]),
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