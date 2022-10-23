<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>SOC Bazar - @yield('titleSite')</title>

<meta name="csrf-token" content="{{ csrf_token() }}" />
<link href="{{url('public/images/title_logo.png')}}" rel="shortcut icon" type="image/x-icon">

<!-- jQuery -->
<script src="{{asset('public/js/jquery-2.0.0.min.js')}}" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="{{asset('public/js/bootstrap.bundle.min.js')}}" type="text/javascript"></script>
<link href="{{asset('public/css/bootstrap.css')}}" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="{{asset('public/fonts/fontawesome/css/all.min.css')}}" type="text/css" rel="stylesheet">

<!-- plugin: slickslider -->
<link href="{{asset('public/plugins/slickslider/slick.css')}}" rel="stylesheet" type="text/css" />
<link href="{{asset('public/plugins/slickslider/slick-theme.css')}}" rel="stylesheet" type="text/css" />
<script src="{{asset('public/plugins/slickslider/slick.min.js')}}"></script>

<!-- plugin: owl carousel  -->
<link href="{{asset('public/plugins/owlcarousel/assets/owl.carousel.css')}}" rel="stylesheet">
<link href="{{asset('public/plugins/owlcarousel/assets/owl.theme.default.css')}}" rel="stylesheet">
<script src="{{asset('public/plugins/owlcarousel/owl.carousel.min.js')}}"></script>

<!-- custom style -->
<link href="{{asset('public/css/ui.css')}}" rel="stylesheet" type="text/css"/>
<link href="{{asset('public/css/responsive.css')}}" rel="stylesheet" media="only screen and (max-width: 1200px)" />



<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css'>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>

<!-- custom javascript -->

<script src="{{asset('public/js/script.js')}}" type="text/javascript"></script>

<script type="text/javascript">
/// some script

// jquery ready start
$(document).ready(function() {
	// jQuery code

}); 
// jquery end
</script>
<script type="text/javascript">
/// some script

// jquery ready start
$(document).ready(function() {
	// jQuery code




    /////////////////  items slider. /plugins/slickslider/
    if ($('.slider-banner-slick').length > 0) { // check if element exists
        $('.slider-banner-slick').slick({
              infinite: true,
              autoplay: true,
              slidesToShow: 1,
              dots: false,
              prevArrow: '<button type="button" class="slick-prev"><i class="fa fa-chevron-left"></i></button>',
           	  nextArrow: '<button type="button" class="slick-next"><i class="fa fa-chevron-right"></i></button>',
        });
    } // end if

     /////////////////  items slider. /plugins/slickslider/
    if ($('.slider-custom-slick').length > 0) { // check if element exists
        $('.slider-custom-slick').slick({
              infinite: true,
              slidesToShow: 2,
              dots: true,
              prevArrow: $('.slick-prev-custom'),
              nextArrow: $('.slick-next-custom')
        });
    } // end if

  

    /////////////////  items slider. /plugins/slickslider/
    if ($('.slider-items-slick').length > 0) { // check if element exists
        $('.slider-items-slick').slick({
            infinite: true,
            swipeToSlide: true,
            slidesToShow: 4,
            dots: true,
            slidesToScroll: 2,
            prevArrow: '<button type="button" class="slick-prev"><i class="fa fa-chevron-left"></i></button>',
           	nextArrow: '<button type="button" class="slick-next"><i class="fa fa-chevron-right"></i></button>',
            responsive: [
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2
                    }
                },
                {
                    breakpoint: 640,
                    settings: {
                        slidesToShow: 1
                    }
                }
            ]
        });
    } // end if

    

    /////////////////  items slider. /plugins/owlcarousel/
    if ($('.slider-banner-owl').length > 0) { // check if element exists
        $('.slider-banner-owl').owlCarousel({
            loop:true,
            margin:0,
            items: 1,
            dots: false,
            nav:true,
            navText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],
        });
    } // end if 

    /////////////////  items slider. /plugins/owlslider/
    if ($('.slider-items-owl').length > 0) { // check if element exists
        $('.slider-items-owl').owlCarousel({
            loop:true,
            margin:10,
            nav:true,
            navText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],
            responsive:{
                0:{
                    items:1
                },
                640:{
                    items:3
                },
                1024:{
                    items:4
                }
            }
        })
    } // end if

    /////////////////  items slider. /plugins/owlcarousel/
    if ($('.slider-custom-owl').length > 0) { // check if element exists
        var slider_custom_owl = $('.slider-custom-owl');
        slider_custom_owl.owlCarousel({
            loop: true,
            margin:15,
            items: 2,
            nav: false,
        });

        // for custom navigation
        $('.owl-prev-custom').click(function(){
            slider_custom_owl.trigger('prev.owl.carousel');
        });

        $('.owl-next-custom').click(function(){
           slider_custom_owl.trigger('next.owl.carousel');
        });

    } // end if 



}); 
// jquery end
</script>

</head>
<body>


