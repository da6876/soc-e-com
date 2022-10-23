<style> 

    .box1{           
        position: absolute;
        opacity: 1;  /* for demo purpose  */
    }
    .stack-top{
        z-index: 9;
        margin: 0px; /* for demo purpose  */
    }
</style>
<style>
.dropbtn {
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {

}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
</style>
<header class="section-header">

<section class="header-main border-bottom">
	<div class="container">
<div class="row align-items-center">
	
    <div class="col-lg-2 col-4">
		<div class="brand-wrap">
			<a href="{{url('/')}}"><img class="logo" src="{{asset('public/images/sourceofcapacity_logo.png')}}"></a>
		</div> <!-- brand-wrap.// -->
	</div>
	
    <div class="col-lg-6 col-sm-12">
        <form action="#" class="search">
			<div class="input-group w-100">
			    <input type="text" class="form-control" name="productSearchs" id="productSearch" placeholder="Search">
			    <div class="input-group-append">
			      <button class="btn btn-primary" type="button" onclick="sendData()">
			        <i class="fa fa-search"></i>
			      </button>
			    </div>
		    </div>
		</form>
		        
        <div class="box1 stack-top col-lg-11 col-sm-12" >
             <div class="card" id="searchResult">
                
            </div>
        
            
        </div>
	</div> <!-- col.// -->
	
    <div class="col-lg-4 col-sm-6 col-8">
		<div class="widgets-wrap float-md-right">
			<div class="widget-header  mr-3">
                <?php 
                $admins_id=Session::get('admins_id');
                if(isset($admins_id)){
                   $TotalCardResult = DB::select("SELECT COUNT(admins_id) AS TotalCard FROM `markets` WHERE admins_id=".$admins_id." AND market_status ='P';"); 
                    
                foreach($TotalCardResult as $TotalCardResult)
                    
                ?>
				<a href="{{url('ShoppingCart')}}" class="icon icon-sm rounded-circle border"><i class="fa fa-shopping-cart"></i></a>
                
				<span class="badge badge-pill badge-danger notify" id="CardTotal">{{$TotalCardResult->TotalCard}}</span>
                <?php
                }  else{
                    ?>
                <a href="{{url('ShoppingCart')}}" class="icon icon-sm rounded-circle border"><i class="fa fa-shopping-cart"></i></a>
                
				<span class="badge badge-pill badge-danger notify" id="CardTotal">0</span>
                <?php
                }
                ?>
                
			</div>
			<div class="widget-header icontext">
                
                <?php 
                    $image = Session::get('userimage');
                ?>
                @if(isset($image))
                @if(Session::get('userimage')=="No Image")
                 
                <div class="dropdown">
                    <div  onclick="myFunction()"  class="dropbtn icon icon-sm rounded-circle border">
                        <i class="fa fa-user"></i></div> 
                  <div id="myDropdown" class="dropdown-content">
                    <a href="{{url('UserProfile')}}">Profile</a>
                    <a href="{{url('MyOrderInfo')}}">My Oder</a>
                    <a href="{{url('UserProfile')}}">Setting</a>
                  </div>
                </div>
                @else
                 
                <div class="dropdown">
                    <img onclick="toggleMenu()" src="{{asset(Session::get('userimage'))}}" width="50px" height="50px" class="rounded-circle" alt="User Image"/> 
                    <div id="menu-box" class="dropdown-content" >
                        <a href="{{url('UserProfile')}}">Profile</a>
                        <a href="{{url('MyOrderInfo')}}">My Oder</a>
                        <a href="{{url('UserProfile')}}">Setting</a>
                    </div>
                    
                </div>
                <!--<ul id="menu-box" style="display: block">
                  <li><a href="index.html">Start</a></li>
                  <li><a href="animal.html">Animal</a></li>
                  <li><a href="pictures.html">Pictures</a></li>
                </ul>-->
				@endif
                @else
                    <a href="{{url('DACommerceLogin')}}" class="icon icon-sm rounded-circle border"><i class="fa fa-user"></i></a> 
                @endif
				@if(Session::get('username')!="")
				<div class="text">
					<span class="text-muted">Welcome!</span>
					<div>   
						<a> {{Session::get('username')}}</a> |
                        
						<a href="{{url('Logout')}}">Logout</a>
					</div>
                    
				</div>
				@else
				<div class="text">
					<span class="text-muted">Welcome!</span>
					<div> 
						<a href="{{url('DACommerceLogin')}}">Sign in</a> |  
						<a href="{{url('DACommerceRegistration')}}"> Register</a>
					</div>
				</div>					
				@endif
			</div>

		</div> <!-- widgets-wrap.// -->
	</div> <!-- col.// -->

        </div> <!-- row.// -->
	</div> <!-- container.// -->
</section> <!-- header-main .// -->
</header> <!-- section-header.// -->

<script>
    
    $('.box1').hide();
    $('#productSearch').is(':focus');
    if ($('#productSearch').is(':focus')) {
        //$('.box1').show();
        //alert('aa');
    }else{
       // alert('aaaa');
       // $('.box1').hide();
    }
    function sendData(){
        var search = $('#productSearch').val();
         if(search != ''){
            $('.box1').show();
            load_data(search);
          }
          else{
        $('.box1').hide();
             load_data(search);
          }
    }

    $('#productSearch').keyup(function(){
      var search = $(this).val();
      if(search != ''){
            $('.box1').show();
            load_data(search);
      }
      else{
        $('.box1').hide();
          load_data();
      }
     });




 function load_data(query)
 {
    url = "{{ url('SearchProductData')}}" ;
    $.ajax({
        url:url,
        type: "POST",
        data:{query:query},
        success:function(data){
            console.log(data);
            $('#searchResult').html(data);
        }
    });
 }
     
    function showData(name){
        alert(name);
    }
    
    function toggleMenu() {
          var menuBox = document.getElementById('menu-box');    
          if(menuBox.style.display == "block") { // if is menuBox displayed, hide it
            menuBox.style.display = "none";
          }
          else { // if is menuBox hidden, display it
            menuBox.style.display = "block";
          }
        }

</script>
<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
