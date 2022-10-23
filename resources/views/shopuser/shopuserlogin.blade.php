@section('title', 'Login')
@include('layout.admin_header_files')

<body class="bg-gradient-login">
<!-- Login Content -->
<div class="container-login">
    <div class="row justify-content-center">
        <div class="col-xl-6 col-lg-12 col-md-9">
            <div class="card shadow-sm my-5">
                <div class="card-body p-0">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="login-form">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4"><strong>Shop User </strong>- Login</h1>
                                </div>
                                <form class="user" method="post" id="loginForm" data-toogle="valibator"
                                      enctype="multipart/form-data">
                                    {{csrf_field()}}
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="username" id="usernames" aria-describedby="emailHelp"
                                               placeholder="Enter Email Address">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" name="UserPassword" id="UserPassword" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small" style="line-height: 1.5rem;">
                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                            <label class="custom-control-label" for="customCheck">Remember
                                                Me</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <a onclick="submitData()" class="btn btn-primary btn-block text-info">Login</a>
                                    </div>
                                    <hr>

                                </form>
                                <hr>
                                <div class="text-center">
                                    <a class="font-weight-bold small" href="#">Forget Password !</a>
                                </div>
                                <div class="text-center">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Login Content -->
@include('layout.admin_footer_files')
<script>

    function submitData() {
        var UserName = $('#usernames').val();
        var UserPassword = $('#UserPassword').val();

        if (UserName != "") {
            if (UserPassword != "") {
                sendRequest();
            } else {
                swal({
                    title: "Sorry",
                    text: "Please Enter Your Password !!",
                    timer: '1500'
                });
            }
        } else {
            swal({
                title: "Sorry",
                text: "Please Enter Email Address !!",
                timer: '1500'
            });
        }

    }

    function sendRequest() {

        url = "{{url('ShopLoginCheck') }}";
        $.ajax({
            url: url,
            type: "POST",
            data: new FormData($("#loginForm")[0]),
            contentType: false,
            processData: false,
            success: function (data) {
                console.log(data);
                var dataResult = JSON.parse(data);
                if (dataResult.statusCode == 200) {
                    window.location.href = 'ShopHome';
                } else {
                    swal({
                        title: dataResult.statusType,
                        text: dataResult.statusMsg,
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
    }
</script>
