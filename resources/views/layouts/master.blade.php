<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    @php
      $route = Route::getCurrentRoute()->getName();
      $currentMenu = getCurrentMenu($route);

      if($currentMenu == null){
        $explodedPath = explode('/',Request::getPathInfo());
        
      }

      if($route == 'more_info'){
        $name = 'More Information';
      }else{
        $name = 'Blogs';
      }
        $abc= 'Falcon Drive'
    @endphp

    <title>@yield('title'){{$currentMenu->meta_title ?? $currentService->meta_title ?? $currentBlog->meta_title ?? $blog->meta_title ??  $abc ?? null}}</title>
    <meta name="description" content="@yield('description'){{$currentMenu->meta_description ?? $currentService->meta_description ?? $currentBlog->meta_description ?? null}}">
    <meta name="keywords" content="@yield('keywords'){{$currentMenu->keywords ?? $currentService->keywords ?? $currentBlog->keywords ?? null}}">

    <link rel="shortcut icon" type="image/x-icon" sizes="96x96" href="{{url('')}}/assets/img/fav_icon_new.png">
  
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">

    <style>
      #myDiv {
        display: none;
      }
      .carousel-indicators {
        position: absolute;
        left: -131px;
        top: 500px;
        width: 862px;
}

.carousel-indicators li {
  width: 300px;
  height: 100%;
  opacity: 0.8;
}
.carousel-indicators [data-bs-target]{
    width: 210px !important;
    height: 132px !important;
}
.carousel-indicators button [data-bs-target] {
  width: 200px;
  opacity: 0.8;
}
.carousel-dark .carousel-indicators [data-bs-target]{
    background-color: #fff !important;
}

.carousel-indicators button [data-bs-target].active {
  opacity: 1;
}
.carousel-indicators li img {
  max-width: 100%;
  max-height: 100%;
  object-fit: contain;
}
.taxi-booking{
  box-shadow: 0px 0px 20px rgba(0,0,0,0.15);
  position: relative;
  top: 32px;
}
.ul_head h2{
  position: relative; 
  top: 170px;
  font-size: 42px;
  font-weight: bold;
  text-align: center;
}
.features{
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 20px;
}
.features span{
  color: #d7b43c;
  font-size: 17px;
  font-weight: bold;
}

.float{
        position:fixed;
        width:50px;
        height:50px;
        bottom:40px;
        right:30px;
        background-color: green;
        color:#FFF;
        border-radius:50px;
        text-align:center;
        font-size:30px;
        z-index:1000;
    }

    .float:hover{
        color: white;
    }

    .my-float{
        margin-top:11px;
    }
    .backgournd_left{
      background-color: #d7b43c;
      height: 170px;
      width: 35%;
      position: relative;
      top: -10px;
      left: -10px;
    }
    .backgournd_right{
      background-color: #d7b43c;
      height: 170px;
      width: 35%;
      position: relative;
      bottom: 326px;
      right: -402px;
    }
    .owl-carousel .owl-item img{
      display: block;
      width: 70%;
    }
    .sticky-header.sticky-fixed-top{
      z-index: 99999 !important;
    }
    .related-taxi{
      margin-top: -150px;
    }
    .main{
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-left: 5px solid #d7b43c;
    }
    .feature-div{
      margin-left: -12px;
      position: relative;
      left: 120px;
      width: 70px;
    }
    .about-section-home{
      padding-top: 50px; 
      margin-bottom: 0px;
    }
    .custom-section{
      width: 100%;
      height: auto;
      margin-bottom: 50px;
      margin-top: 50px;
    }
    .main-back{
      background: #d7b43c0d;
      padding: 50px;
      border-radius: 15px;
    }
    .man-image{
      padding: 0px 30px; 
      border-radius: 10px;
    }
    .menu-btn-custom{
      background-color: #222;
      color: #fff;
      height: auto;
      padding: 10px 30px;
      display: flex;
      align-items: center;
      text-decoration: none;
      width: 25%;
      border-radius: 15px;
    }
    .menu-btn-custom:hover{
      background-color: #222;
      color: #fff;
    }
        /* radio buttons css */



.radio-button.default-radio .radio-text {
  height: 45px;
  font-size: 16px;
  font-weight: 500;
  color: #fff;
  padding: 0 30px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  position: relative;
  z-index: 1;
  overflow: hidden;
  border-radius: 15px;
  background-color: #d7b43c;
  transition: background-color 0.3s;
  cursor: pointer;
  margin-top: 5px;
}

.radio-button.default-radio input[type="radio"] {
  display: none;
}

.radio-button.default-radio input[type="radio"]:checked + .radio-text {
  background-color: #343a40;
}

.btn-div{
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .social_links{
      display: flex;
      justify-content: start;
      gap: 20px;
      align-items: center;
    }
    #btn-raed{
      border: 1px solid #fff; 
      position: relative; 
      left: -194px;
    }

    #btn-raed:hover{
        border: none;
    }
    .left_menu{
      display: grid ;
      grid-template-columns: repeat(2, auto);
      padding: 20px 30px !important;
    }
    .dropdown_menu li img{
      width: 25%;
    }
    .wrapper{
  background: #fff;
  border-radius: 10px;
  padding: 1px 10px 10px;
}
header h2{
  font-size: 24px;
  font-weight: 600;
}
header p{
  margin-top: 5px;
  font-size: 16px;
}
.price-input{
  width: 100%;
  display: flex;
  margin: 30px 0 35px;
}
.price-input .field{
  display: flex;
  width: 100%;
  height: 45px;
  align-items: center;
}
.field input{
  width: 100%;
  height: 100%;
  outline: none;
  font-size: 19px;
  margin-left: 12px;
  border-radius: 5px;
  text-align: center;
  border: 1px solid #999;
  -moz-appearance: textfield;
}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
  -webkit-appearance: none;
}
.price-input .separator{
  width: 130px;
  display: flex;
  font-size: 19px;
  align-items: center;
  justify-content: center;
}
.slider{
  height: 5px;
  position: relative;
  background: #ddd;
  border-radius: 5px;
}
.slider .progress{
  height: 100%;
  left: 0%;
  right: 0%;
  position: absolute;
  border-radius: 5px;
  background: #d7b43c;
}
.range-input{
  position: relative;
}
.range-input input{
  position: absolute;
  width: 100%;
  height: 5px;
  top: -5px;
  background: none;
  pointer-events: none;
  -webkit-appearance: none;
  -moz-appearance: none;
}
input[type="range"]::-webkit-slider-thumb{
  height: 17px;
  width: 17px;
  border-radius: 50%;
  background: #d7b43c;
  pointer-events: auto;
  -webkit-appearance: none;
  box-shadow: 0 0 6px rgba(0,0,0,0.05);
}
input[type="range"]::-moz-range-thumb{
  height: 17px;
  width: 17px;
  border: none;
  border-radius: 50%;
  background: #d7b43c;
  pointer-events: auto;
  -moz-appearance: none;
  box-shadow: 0 0 6px rgba(0,0,0,0.05);
}
#footer-logo{
  margin-left: -22px;
}
.custom_cions{
  width: 30px;
}
.custaom-icons-f{
  width: 40px;
}

    /* radio buttons css */
    @media only screen and (min-width: 300px) and (max-width: 767px){
        .pricing-head .location{
            display: block;
        }
        #footer-logo{
        margin-left: 0px;
      }
      .brand p{
        text-align: center;
      }
        .img-div{
            display: none;
        }
        .text-div{
            display: flex;
            justify-content: center;
            align-items: center;
            margin-left: 55px;
            margin-top: 10px;
        }
      #btn-raed{ 
      left: -76px;
    }
    .left_menu{
      padding: 0px !important;
    }
      .about-section-home{
        padding-top: 50px; 
        margin-bottom: -40px;
      }  
      .feature-div{
        margin-left: 288px;
        position: relative;
        left: -150px;
        margin-top: 20px;
        width: 70px;
      }
      .carousel-indicators [data-bs-target]{
        height: 52px !important;
    }
    .carousel-indicators{
        position: relative !important;
        left: -54px;
        top: 0px;
        width: 348px;
    }
    .backgournd_left{
      display: none
    }
    .backgournd_right{
      display: none;
    }
    .back_image{
      top: -40px;
    }
    .float{
        bottom: 17px !important;
        z-index: 1000 !important;
    }
    .feature-wrap-2{
        margin-top: -90px !important;
    }
}
    @media only screen and (min-width: 991px) and (max-width: 1199px){
        .mid-header-wrap .site-logo{
            max-width: 150px !important;
            margin-left: -22px !important;
        }
        .header-info{
            column-gap: 10px !important;
        }
        .header-info li{
            column-gap: 3px !important;
        }
        .header-info li .header-info-icon {
          font-size: 20px !important;
        }
        .header-info li .header-info-icon {
          font-size: 20px !important;
        }
        .header-info li .header-info-text h3 {
          font-size: 14px !important;
        }
        .nav-menu-inner {
          max-width: 100%;
        }
        .default-btn {
            padding: 0 10px !important;
        }
        .backgournd_right{
            right: -285px;
        }
        .service-item{
            height: 480px !important;
        }
        .feature-div{
            left: 76px;
            width: 200%;
        }
        #btn-raed{
            left: -76px;
        }
        .car-holder{
         width: 400px;
     }
    }
    @media only screen and (min-width: 1200px) and (max-width: 1299px){
        .mid-header-wrap .site-logo {
          max-width: 200px !important;
        }
        .header-info {
          column-gap: 25px !important;
        }
        .header-info li {
          column-gap: 5px !important;
        }
        .header-info li .header-info-icon {
          font-size: 26px !important;
        }
        .header-info li .header-info-text h3 {
          font-size: 16px !important;
        }
        .nav-menu-inner {
          max-width: 80%;
        }
        .car-holder{
         width: 560px;
     }
    }
 @media only screen and (min-width: 1300px) and (max-width: 1399px){
     .header-info li .header-info-icon{
         font-size: 24px !important;
     }
     .header-info li .header-info-text h3{
         font-size: 16px !important;
     }
     .mid-header-wrap .site-logo{
         max-width: 220px;
     }
     .car-holder{
         width: 560px;
     }
     
 }
    </style>

        @yield('top-styles')
    </head>
    <body>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
      <a href="https://wa.me/{{getSettings('whatsapp_link')}}" class="float" target="_blank">
          <i class="fa fa-whatsapp my-float"></i>
      </a>
      <div>

        @section('header')
          @include('layouts/header')
        @show

          @yield('content')

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

        @yield('bottom-mid-scripts')
      <script>
            $(document).ready(function(){
      $('.owl-carousel').owlCarousel({
        loop: true,
        autoplay: true,
        autoplayTimeout: 2000,
        speed: 400,
        responsive:{
          0:{
            items: 1
          },
          600:{
            items: 3
          },
          1000:{
            items: 5
          }
        }
      });
    });
      </script>
      <script>
        $(document).ready(function() {
          $('#toggleButton').click(function() {
            $('#myDiv').slideToggle();
          });
        });
      </script>
      <script>
        // Activate the carousel
        document.addEventListener('DOMContentLoaded', function() {
          const myCarousel = new bootstrap.Carousel(document.getElementById('carouselExampleDark'), {
            interval: 5000 // Adjust the interval as desired (in milliseconds)
          });
        });
      </script>
      
      <script>
        function showmore(){
          var content = document.getElementById("contentshow");
          var button = document.getElementById("show");
          var service_section = document.getElementById("service-section-1");

          if(content.style.display == "none"){
            content.style.display = "block";
            button.style.display = "none";
            service_section.style.marginTop = "0px";
          }
        }
        function hidemore(){
          var content = document.getElementById("contentshow");
          var button = document.getElementById("show");
          var service_section = document.getElementById("service-section-1");

          if(content.style.display == "block"){
            content.style.display = "none";
            button.style.display = "block";
            service_section.style.marginTop = "0px";
          }
        }
      </script>
            <script>
        const radioButtons = document.querySelectorAll('.default-radio input[type="radio"]');

        radioButtons.forEach(radioButton => {
          radioButton.addEventListener('change', function() {
            const selectedButton = document.querySelector('.default-radio input[type="radio"]:checked');
            const radioText = this.nextElementSibling;

            radioButtons.forEach(radioButton => {
              const radioText = radioButton.nextElementSibling;
              radioText.classList.remove('selected');
            });

            radioText.classList.add('selected');
          });
        });
      </script>

      <script>
          const rangeInput = document.querySelectorAll(".range-input input"),
          priceInput = document.querySelectorAll(".price-input input"),
          range = document.querySelector(".slider .progress");
          let priceGap = 1000;
          priceInput.forEach(input =>{
              input.addEventListener("input", e =>{
                  let minPrice = parseInt(priceInput[0].value),
                  maxPrice = parseInt(priceInput[1].value);
                  
                  if((maxPrice - minPrice >= priceGap) && maxPrice <= rangeInput[1].max){
                      if(e.target.className === "input-min"){
                          rangeInput[0].value = minPrice;
                          range.style.left = ((minPrice / rangeInput[0].max) * 100) + "%";
                      }else{
                          rangeInput[1].value = maxPrice;
                          range.style.right = 100 - (maxPrice / rangeInput[1].max) * 100 + "%";
                      }
                  }
              });
          });
          rangeInput.forEach(input =>{
              input.addEventListener("input", e =>{
                  let minVal = parseInt(rangeInput[0].value),
                  maxVal = parseInt(rangeInput[1].value);
                  if((maxVal - minVal) < priceGap){
                      if(e.target.className === "range-min"){
                          rangeInput[0].value = maxVal - priceGap
                      }else{
                          rangeInput[1].value = minVal + priceGap;
                      }
                  }else{
                      priceInput[0].value = minVal;
                      priceInput[1].value = maxVal;
                      range.style.left = ((minVal / rangeInput[0].max) * 100) + "%";
                      range.style.right = 100 - (maxVal / rangeInput[1].max) * 100 + "%";
                  }
              });
          });
      </script>
      
        @yield('bottom-bot-scripts')
    </body>
</html>