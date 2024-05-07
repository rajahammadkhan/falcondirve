<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Falcon Drive 404</title>
    <meta name="description" content="Falcon Drive Description">
    <meta name="keywords" content="Falcon Drive Keywords">

    <link rel="shortcut icon" type="image/x-icon" href="{{url('')}}/assets/img/favicon.png">
	
    <link rel="stylesheet" href="{{url('')}}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/animate.min.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/fontawesome.min.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/line-awesome.min.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/keyframe-animation.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/jquery.datetimepicker.min.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/nice-select.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/venobox.min.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/swiper.min.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/elements.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/header.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/slider.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/blog.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/main.css">
    <link rel="stylesheet" href="{{url('')}}/assets/css/responsive.css">
    </head>
    <body class="not-found-404">

      <div>

        @section('header')
          @include('layouts/header')
        @show

        <section class="page-header error">
          <div class="container">
              <div class="page-header-info text-center mt-40">
                  <h4>Oops! Where are we?</h4>
                  <h2>404 Page <span>Not Found!</span></h2>
                  <p>Page not Found! The page you are looking for was moved, <br>removed, renamed or might never existed.</p>
                  <a href="{{route('home')}}" class="default-btn mt-30">Back To Homepage</a>
              </div>
          </div>
      </section>
      <!--/.page-header-->

        @section('footer')
          @include('layouts/footer')
        @show
      </div>


      <div id="scrollup">
        <button id="scroll-top" class="scroll-to-top">
            <i class="las la-arrow-up"></i>
        </button>
    </div>
    <!--scrollup-->

    <div class="dl-cursor">
        <div class="cursor-icon-holder"><i class="las la-times"></i></div>
    </div>
    <!--/.dl-cursor-->

    <!--jQuery Lib-->
    <script src="{{url('')}}/assets/js/vendor/jquary-3.6.0.min.js"></script>
    <script src="{{url('')}}/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <script src="{{url('')}}/assets/js/vendor/jquery.ajaxchimp.min.js"></script>
    <script src="{{url('')}}/assets/js/vendor/bootstrap.min.js"></script>
    <script src="{{url('')}}/assets/js/vendor/popper.min.js"></script>
    <script src="{{url('')}}/assets/js/vendor/swiper.min.js"></script>
    <script src="{{url('')}}/assets/js/vendor/jquery.datetimepicker.full.js"></script>
    <script src="{{url('')}}/assets/js/vendor/jquery.nice-select.min.js"></script>
    <script src="{{url('')}}/assets/js/vendor/venobox.min.js"></script>
    <script src="{{url('')}}/assets/js/vendor/smooth-scroll.js"></script>
    <script src="{{url('')}}/assets/js/vendor/wow.min.js"></script>
    <script src="{{url('')}}/assets/js/book-ride.js"></script>
    <script src="{{url('')}}/assets/js/main.js"></script>
    </body>
</html>