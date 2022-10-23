@section('titleSite', 'Sign Up')
@include('layout.header_files')
@include('layout.topbar_menu')
<style>
    .iiii{
        text-align: center;
    }
</style>
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">

<!-- ============================ COMPONENT REGISTER   ================================= -->
	<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
      <article class="card-body">
		<header class="mb-4">
            <h4 class="card-title">User Profile 
            <button type="button" id="btnEditProfile" onclick="editProfile()" class="btn btn-outline-primary"><i class="fa fa-edit">Edit</i></button>
            <button type="button" id="btnCancleEditProfile" onclick="cancleEditProfile()" class="btn btn-outline-primary"><i class="fa fa-cancle">Cancle</i></button>
            </h4></header>
		<form method="post" id="SingupForm" data-toogle="valibator" enctype="multipart/form-data">
				{{csrf_field()}}
				<div class="form-group ">
					<label>User Image</label><br>
                    <?php 
                        $image = Session::get('userimage');
                    ?>
                    @if(Session::get('userimage')=="No Image")
                    <div class="iiii">
                        <img src="public/images/profile.png"width="150px" height="150px" id="userImage" class="rounded-circle " alt="User Image"/> <br>
                    </div>
                    <div class="iiii1">
                       <input type="file" id="imageFile" name="imageFile" class="form-control" /> <br>
                    </div>
                    @else

                    <div class="iiii">
                     <img src="{{$image}}" width="150px" height="150px" id="userImage" class="rounded-circle " alt="User Image"/>
                    </div>
                    <div class="iiii1">
                       <input type="file" id="imageFile" name="imageFile" class="form-control" /> <br>
                    </div>
                    @endif
                    
				</div>
				<div class="form-group">
					<label>Name</label>
					<input type="text" id="Name" name="Name" class="form-control"
                           value="<?php echo Session::get('username');?>">
				</div> <!-- form-group end.// -->
				<div class="form-row">
					<div class="col form-group">
						<label>Mobile</label>
						<input type="number"  maxlength="11"  id="Mobile"  name="Mobile" class="form-control" 
                               value="<?php echo Session::get('userphone');?>">
					</div>
					<div class="col form-group">
						<label>Email</label>
						<input type="email" id="Email" id="Email" name="Email" class="form-control"  
                               value="<?php echo Session::get('useremail');?>">
					</div>
				</div> <!-- form-group end.// -->
				
			    <div class="form-group">
			        <button type="button" id="btnUpdateProfile" onclick="submitRefister()" class="btn btn-primary btn-block"> Edit Profile  </button>
			    </div> <!-- form-group// -->      
			           
			</form>
		</article><!-- card-body.// -->
    </div> <!-- card .// -->
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
    
        $("#btnCancleEditProfile").hide();
        $("#btnUpdateProfile").hide();
        $("#Name").prop("disabled", true);
        $("#Mobile").prop("disabled", true);
        $("#Email").prop("disabled", true);
        $(".iiii1").hide();
    
    function editProfile(){
        
        $("#Name").prop("disabled", false);
        $("#Mobile").prop("disabled", false);
        $("#Email").prop("disabled", false);
        $("#btnCancleEditProfile").show();
        $("#btnUpdateProfile").show();
        $("#btnEditProfile").hide();
        $(".iiii").hide();
        $(".iiii1").show();
    }
    
    function cancleEditProfile(){
        $("#Name").prop("disabled", true);
        $("#Mobile").prop("disabled", true);
        $("#Email").prop("disabled", true);
        $("#btnEditProfile").show();
        $(".iiii").show();
        $(".iiii1").hide();
        $("#btnCancleEditProfile").hide();
        $("#btnUpdateProfile").hide();
    }
    
	function submitRefister(){
		//alert("AAA");
		 var Name = $("#Name").val();
		 var Mobile = $("#Mobile").val();
		 var Email = $("#Email").val();
		 if(Name!=""){
			 if(Mobile!=""){
				 if(Email!=""){
                    sendRequest(); 
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

        url = "{{url('UserProfileUpdate') }}";
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
                    Swal.fire({
                        icon: 'success',
                        text: dataResult.statusMsg,

                    }).then((result) => {
					   window.location.href = 'Home';
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

</body>
</html>