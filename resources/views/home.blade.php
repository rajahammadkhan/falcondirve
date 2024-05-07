@extends('layouts.master')

@section('top-styles')
<style>
    #blog-section{
        margin-top: -100px;
    }
    .service-section{
        margin-top: 50px;
    }
    .carousel-control-prev {
  width: 3em;
  height: 3em;
  border-radius: 50%;
  top: 50%;
  transform: translateY(-50%);
  left: 10px;
}
.carousel-control-next{
  width: 3em;
  height: 3em;
  border-radius: 50%;
  top: 50%;
  transform: translateY(-50%);
  right: 10px;
}

@media only screen and (min-width: 300px) and (max-width: 767px){
    .carousel-control-prev{
        display: none;
    }
    .carousel-control-next{
        display: none;
    }
    #blog-section{
        margin-top: -80px;
    }
    
}
.slide-out {
    animation: slideOut 0.5s forwards;
  }

  .slide-in {
    animation: slideIn 0.5s forwards;
  }

  @keyframes slideOut {
    from {
      transform: translateX(0);
    }

    to {
      transform: translateX(-100%);
    }
  }

  @keyframes slideIn {
    from {
      transform: translateX(100%);
    }

    to {
      transform: translateX(0);
    }
  }
</style>
@endsection

@section('content')  
<div class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="slider-section">
          <div class="main-slider">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="slider-img">
                  <img src="{{url('')}}/assets/img/slider-bg.jpg" alt="img" class="kenburns" style="animation-duration: 12000ms;">
                </div>
                <div class="car-holder">
                  <img src="" alt="car" class="car-animation">
                  <div class="shape">
                    <div data-animation="slide-in-bottom" data-duration="1.5s" data-delay="0.3s"></div>
                    <div data-animation="fade-in" data-duration="1.5s" data-delay="0.2s"></div>
                    <div data-animation="slide-in-top" data-duration="1.5s" data-delay="0.5s"></div>
                  </div>
                </div>
                <!-- Rest of the slider content -->
                <div class="slider-content-wrap d-flex align-items-center text-left">
                    <div class="container">
                        <div class="slider-content">
                                    <form action="{{route('vehicles.search')}}" method="post">
                                @csrf
                                    <div class="slider-caption medium">
                                        <div class="inner-layer">
                                            
                                            <label class="radio-button default-radio" for="economy">
                                                <input type="radio" name="ra" value="economy" id="economy">
                                                <span class="radio-text">Economy</span>
                                            </label>
                                            <label class="radio-button default-radio" for="SUV">
                                                <input type="radio" name="ra" value="SUV" id="SUV">
                                                <span class="radio-text">SUV</span>
                                            </label>
                                            <label class="radio-button default-radio" for="Hatchback">
                                                <input type="radio" name="ra" value="Hatchback" id="Hatchback">
                                                <span class="radio-text">Hatchback</span>
                                            </label>
                                            <label class="radio-button default-radio" for="Luxury">
                                                <input type="radio" name="ra" value="Luxury" id="Luxury">
                                                <span class="radio-text">Luxury</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="slider-caption big">
                                        <div class="inner-layer">
                                            <div data-animation="fade-in-bottom" data-delay="0.5s">
                                <div class="booking-form">
                                <div class="form-field">
                                        <i class="las la-calendar"></i>
                                        <input type="text" id="ride-date" name="start_date" class="form-control date-picker"
                                            placeholder="Start Date" required>
                                    </div>
                                <div class="form-field">
                                        <i class="las la-calendar"></i>
                                        <input type="text" id="ride-date" name="end_date" class="form-control date-picker"
                                            placeholder="End Date" required>
                                    </div>
                                </div>
                                <div class="booking-form" style="margin-top: 20px;">
                                    <div class="form-field">
                                        <i class="las la-clock"></i>
                                        <input type="text" id="ride-time" name="start_time" class="form-control time-picker"
                                            placeholder="Start Time" required>
                                    </div>
                                    <div class="form-field">
                                        <i class="las la-clock"></i>
                                        <input type="text" id="ride-time" name="end_time" class="form-control time-picker"
                                            placeholder="End Time" required>
                                    </div>
                                </div>
                            
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slider-btn">
                                        <input type="submit" class="default-btn" data-animation="fade-in-bottom"
                                            data-delay="0.9s" value="Search Now">
                                    </div>
                                </form>
                        </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    <a class="carousel-control-prev" href="#" role="button" onclick="slideCar('prev')">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </a>
    <a class="carousel-control-next" href="#" role="button" onclick="slideCar('next')">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </a>
  </div>

    <section class="logo_section">
        <div class="container">
            <div class="row">
               <center>
                <div class="owl-carousel">
                    @foreach($brands as $brand)
                        <div class="item"><img src="{{config('falcondrive.file_path').$brand->color_logo}}" alt="{{$brand->name}}"></div>
                    @endforeach
                </div>
               </center>
            </div>
        </div>
    </section>

    <!-- logo section slider -->
        <section class="pricing-section bg-grey bd-bottom" style="padding-top: 50px; padding-bottom: 50px;">
        <div class="container">
            <div class="section-heading text-center mb-40 wow fade-in-bottom" data-wow-delay="200ms">
                <h4><span></span>Lets Go With Us!</h4>
                <h2>Choose Your Car!</h2>
            </div><!--/.section-heading-->
            <ul class="nav pricing-tab-menu" id="pricing-tab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="Economy" data-bs-toggle="tab"
                        data-bs-target="#Economy-content" type="button" role="tab"
                        aria-controls="Economy-content" aria-selected="true">Economy</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="SUV" data-bs-toggle="tab" data-bs-target="#SUV-content"
                        type="button" role="tab" aria-controls="SUV-content" aria-selected="false">SUV</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="Hatchback" data-bs-toggle="tab"
                        data-bs-target="#Hatchback-content" type="button" role="tab"
                        aria-controls="Hatchback-content" aria-selected="false">Hatchback</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="Luxury" data-bs-toggle="tab"
                        data-bs-target="#Luxury-content" type="button" role="tab"
                        aria-controls="Luxury-content" aria-selected="false">Luxury</button>
                </li>
            </ul>
            <!--Tab Menu-->
            <div class="tab-content" id="pricing-tab-content">
                <div class="tab-pane fade show active" id="Economy-content" role="tabpanel"
                    aria-labelledby="Economy-content">
                    <div class="row">                        
                        @foreach($featured_vehicles_Economy as $vehicle)
                            <div class="col-lg-4 col-md-6 sm-padding mb-5">
                                <div class="pricing-item">
                                    <div class="pricing-head-wrap">
                                        <div class="pricing-car">
                                            <a href="{{route('vehicle_detail',$vehicle->slug)}}">
                                                <img src="{{config('falcondrive.file_path').$vehicle->featured_image}}" alt="{{$vehicle->name}}">
                                            </a>
                                            @foreach($brands as $vehicles)
                                                @if($vehicles->id === $vehicle->brand_id)
                                                    <div class="price"><img src="{{config('falcondrive.file_path').$vehicles->logo}}" alt="{{$vehicles->name}}"> <h4>{{$vehicles->name}}</h4></div>
                                                @endif
                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="pricing-head">
                                        <h3 style="margin-bottom: 10px"><a href="{{route('vehicle_detail',$vehicle->slug)}}">{{strtoupper($vehicle->name)}}</a></h3>
                                        <span class="location">Price/Day AED {{number_format($vehicle->price)}}</span><br>
                                        <span class="location">Price/Week AED {{number_format($vehicle->w_price)}}</span><br>
                                        <span class="location">Price/Month AED {{number_format($vehicle->m_price)}}</span>
                                    </div>
                                    <ul class="pricing-list">
                                        @foreach($vehicle->features as $feature)
                                            <li>{{$feature->name}}: <span>{{$feature->value}}</span></li>
                                        @endforeach
                                        <div class="cards_buttons">
                                            <li><a href="{{route('vehicle_detail',$vehicle->slug)}}" class="default-btn" style="background: #ff0000;">Book Now</a></li>
                                            <li><a href="https://wa.me/{{getSettings('whatsapp_link')}}" class="default-btn" style="background: green;"><i class="lab la-whatsapp" style="margin-right: 5px;"></i>Chat Now</a></li>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="tab-pane fade" id="SUV-content" role="tabpanel" aria-labelledby="SUV-content">
                    <div class="row">
                        @foreach($featured_vehicles_SUV as $vehicle)
                            <div class="col-lg-4 col-md-6 sm-padding mb-5">
                                <div class="pricing-item">
                                    <div class="pricing-head-wrap">
                                        <div class="pricing-car">
                                            <a href="{{route('vehicle_detail',$vehicle->slug)}}">
                                                <img src="{{config('falcondrive.file_path').$vehicle->featured_image}}" alt="{{$vehicle->name}}">
                                            </a>
                                            @foreach($brands as $vehicles)
                                                @if($vehicles->id === $vehicle->brand_id)
                                                    <div class="price"><img src="{{config('falcondrive.file_path').$vehicles->logo}}" alt="{{$vehicles->name}}"> <h4>{{$vehicles->name}}</h4></div>
                                                @endif
                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="pricing-head">
                                        <h3 style="margin-bottom: 10px"><a href="{{route('vehicle_detail',$vehicle->slug)}}">{{strtoupper($vehicle->name)}}</a></h3>
                                        <span class="location">Price/Day AED {{number_format($vehicle->price)}}</span><br>
                                        <span class="location">Price/Week AED {{number_format($vehicle->w_price)}}</span><br>
                                        <span class="location">Price/Month AED {{number_format($vehicle->m_price)}}</span>
                                    </div>
                                    <ul class="pricing-list">
                                        @foreach($vehicle->features as $feature)
                                            <li>{{$feature->name}}: <span>{{$feature->value}}</span></li>
                                        @endforeach
                                        <div class="cards_buttons">
                                            <li><a href="{{route('vehicle_detail',$vehicle->slug)}}" class="default-btn" style="background: #ff0000;">Book Now</a></li>
                                            <li><a href="https://wa.me/{{getSettings('whatsapp_link')}}" class="default-btn" style="background: green;"><i class="lab la-whatsapp" style="margin-right: 5px;"></i>Chat Now</a></li>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="tab-pane fade" id="Hatchback-content" role="tabpanel" aria-labelledby="Hatchback-content">
                    <div class="row">
                        @foreach($featured_vehicles_Hatchback as $vehicle)
                            <div class="col-lg-4 col-md-6 sm-padding mb-5">
                                <div class="pricing-item">
                                    <div class="pricing-head-wrap">
                                        <div class="pricing-car">
                                            <a href="{{route('vehicle_detail',$vehicle->slug)}}">
                                                <img src="{{config('falcondrive.file_path').$vehicle->featured_image}}" alt="{{$vehicle->name}}">
                                            </a>
                                            @foreach($brands as $vehicles)
                                                @if($vehicles->id === $vehicle->brand_id)
                                                    <div class="price"><img src="{{config('falcondrive.file_path').$vehicles->logo}}" alt="{{$vehicles->name}}"> <h4>{{$vehicles->name}}</h4></div>
                                                @endif
                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="pricing-head">
                                        <h3 style="margin-bottom: 10px"><a href="{{route('vehicle_detail',$vehicle->slug)}}">{{strtoupper($vehicle->name)}}</a></h3>
                                        <span class="location">Price/Day AED {{number_format($vehicle->price)}}</span><br>
                                        <span class="location">Price/Week AED {{number_format($vehicle->w_price)}}</span><br>
                                        <span class="location">Price/Month AED {{number_format($vehicle->m_price)}}</span>
                                    </div>
                                    <ul class="pricing-list">
                                        @foreach($vehicle->features as $feature)
                                            <li>{{$feature->name}}: <span>{{$feature->value}}</span></li>
                                        @endforeach
                                        <div class="cards_buttons">
                                            <li><a href="{{route('vehicle_detail',$vehicle->slug)}}" class="default-btn" style="background: #ff0000;">Book Now</a></li>
                                            <li><a href="https://wa.me/{{getSettings('whatsapp_link')}}" class="default-btn" style="background: green;"><i class="lab la-whatsapp" style="margin-right: 5px;"></i>Chat Now</a></li>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>

                <div class="tab-pane fade" id="Luxury-content" role="tabpanel" aria-labelledby="Luxury-content">
                    <div class="row">
                        @foreach($featured_vehicles_Luxury as $vehicle)
                            <div class="col-lg-4 col-md-6 sm-padding mb-5">
                                <div class="pricing-item">
                                    <div class="pricing-head-wrap">
                                        <div class="pricing-car">
                                            <a href="{{route('vehicle_detail',$vehicle->slug)}}">
                                                <img src="{{config('falcondrive.file_path').$vehicle->featured_image}}" alt="{{$vehicle->name}}">
                                            </a>
                                            @foreach($brands as $vehicles)
                                                @if($vehicles->id === $vehicle->brand_id)
                                                    <div class="price"><img src="{{config('falcondrive.file_path').$vehicles->logo}}" alt="{{$vehicles->name}}"> <h4>{{$vehicles->name}}</h4></div>
                                                @endif
                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="pricing-head">
                                        <h3 style="margin-bottom: 10px"><a href="{{route('vehicle_detail',$vehicle->slug)}}">{{strtoupper($vehicle->name)}}</a></h3>
                                        <span class="location">Price/Day AED {{number_format($vehicle->price)}}</span><br>
                                        <span class="location">Price/Week AED {{number_format($vehicle->w_price)}}</span><br>
                                        <span class="location">Price/Month AED {{number_format($vehicle->m_price)}}</span>
                                    </div>
                                    <ul class="pricing-list">
                                        @foreach($vehicle->features as $feature)
                                            <li>{{$feature->name}}: <span>{{$feature->value}}</span></li>
                                        @endforeach
                                        <div class="cards_buttons">
                                            <li><a href="{{route('vehicle_detail',$vehicle->slug)}}" class="default-btn" style="background: #ff0000;">Book Now</a></li>
                                            <li><a href="https://wa.me/{{getSettings('whatsapp_link')}}" class="default-btn" style="background: green;"><i class="lab la-whatsapp" style="margin-right: 5px;"></i>Chat Now</a></li>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 mx-auto">
                        <div class="btn-div">
                            <a href="{{route('all_vehicles')}}" class="default-btn">View All</a>
                        </div>
                    </div>
                </div>
            </div><!-- Tab Content -->


        </div>
    </section>
    <?php
        $contactNo = getSettings('contact_no');
        $formattedNumber = str_replace(' ', '', $contactNo);
    ?>
    <!--/.pricing-section-->
    <section class="about-section about-section-home">
        <div class="container">
            <div class="row">
                <div class="col-md-6" style="padding-left: 30px; padding-right: 30px;">
                    <img src="{{url('')}}/assets/img/all-cars-images/cars-details-page/Chevrolet/Chevrolet-Malibu-2023/01-new-edit.jpg" alt="" class="back_image">
                </div>
                <div class="col-md-6" style="padding-left: 30px; padding-right: 30px;">
                    <div class="section-heading mb-40 wow fade-in-right" data-wow-delay="200ms">
                        <h4><span></span>About Our Company</h4>
                        <h2>Falcon Drive Car Rental</h2>
                        <p>Welcome to Falcon Drive Car Rental, the leading automobile rental service provider in the UAE. With a significant focus on customer service and a diverse fleet of high-quality automobiles. We strive to provide both locals and visitors with a smooth and enjoyable car rental experience.</p>
                    </div>
                    <!--/.section-heading-->
                    <ul class="about-info wow fade-in-right" data-wow-delay="400ms">
                        <li>
                            <img class="owner-thumb" src="{{url('')}}/assets/img/comment-1.png" alt="thumb">
                            <div class="owner">
                                <h4>Founder - CEO</h4>
                                <img class="signature" src="{{url('')}}/assets/img/signature.png" alt="signature">
                            </div>
                        </li>
                        <li>
                            <h2><span>Call To Rent A Car</span><a href="tel:<?php echo $formattedNumber; ?>">{{getSettings('contact_no')}}</a></h2>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>    <!--/.about-section-->

    <section class="service-section bg-grey padding">
        <div class="bg-half"></div>
        <div class="container">
            <div class="section-heading text-center mb-40 wow fade-in-bottom" data-wow-delay="200ms">
                <h4><span></span>What We Offer</h4>
                <h2 class="white">Start your journey with<br>Falcon Drive Car Rental!</h2>
            </div>
            <!--/.section-heading-->
            <div class="swiper-outside">
                <div class="service-carousel">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="service-item wow fade-in-bottom" data-wow-delay="200ms" id="service-item">
                                <div class="service-thumb">
                                    <img src="{{url('')}}/assets/img/service-1.jpg" alt="img">
                                    <div class="service-shape-wrap">
                                        <div class="service-shape"></div>
                                    </div>
                                    <div class="service-car"><img src="{{url('')}}/assets/img/car-2-demo.png" alt="car"></div>
                                </div>
                                <div class="service-content">
                                    <h3><a href="javascript:void(0)">Lowest Prices in Dubai</a></h3>
                                    <p>We are proud of the fact that we offer one of the lowest rental prices in the market. </p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="service-item wow fade-in-bottom" data-wow-delay="200ms">
                                <div class="service-thumb">
                                    <img src="{{url('')}}/assets/img/service-1.jpg" alt="img">
                                    <div class="service-shape-wrap">
                                        <div class="service-shape"></div>
                                    </div>
                                    <div class="service-car"><img src="{{url('')}}/assets/img/car-1.png" alt="car"></div>
                                </div>
                                <div class="service-content">
                                    <h3><a href="javascript:void(0)">First Class Service</a></h3>
                                    <p>We Offer Services, Easy Booking And Instant Delivery!</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="service-item wow fade-in-bottom" data-wow-delay="400ms">
                                <div class="service-thumb">
                                    <img src="{{url('')}}/assets/img/service-1.jpg" alt="img">
                                    <div class="service-shape-wrap">
                                        <div class="service-shape"></div>
                                    </div>
                                    <div class="service-car"><img src="{{url('')}}/assets/img/car-1-demo.png" alt="car"></div>
                                </div>
                                <div class="service-content">
                                    <h3><a href="javascript:void(0)">Pick & Drop</a></h3>
                                    <p>Delivery Pickup And Across Dubai!</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="service-item wow fade-in-bottom" data-wow-delay="600ms">
                                <div class="service-thumb">
                                    <img src="{{url('')}}/assets/img/service-1.jpg" alt="img">
                                    <div class="service-shape-wrap">
                                        <div class="service-shape"></div>
                                    </div>
                                    <div class="service-car"><img src="{{url('')}}/assets/img/car-1-demo-2.png" alt="car"></div>
                                </div>
                                <div class="service-content">
                                    <h3><a href="javascript:void(0)">Car Support</a></h3>
                                    <p>24/7 Roadside Assistance!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div><!-- Carousel Dots -->
                </div>
                <!-- Carousel Arrows -->
            </div>
        </div>
    </section>
    <!--/.service-section-->

<section class="download-section bd-bottom padding">
        <div class="container">
            <div class="row">
                <div class="section-heading text-center mb-40 wow fade-in-bottom" data-wow-delay="200ms">
                    <h4><span></span>Our Booking Process!</h4>
                    <h2>The 4-Step Process At Falcon Drive</h2>
                </div>
                <ul class="ridek-features">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="feature-div">
                                        <p>01</p>
                                    </div>
                                </div>
                            </div>
                            <li class="wow fade-in-left" data-wow-delay="300ms">
                                <div class="feature-content-3">
                                    <h3>Explore Cars:</h3>
                                    <p>Check out our wide range of top quality cars and avail of the hire car dubai services hassle free.</p>
                                </div>
                            </li>
                        </div>
                        <div class="col-lg-3">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="feature-div">
                                        <p>02</p>
                                    </div>
                                </div>
                            </div>
                            <li class="wow fade-in-right" data-wow-delay="400ms">
                               <div class="feature-content-3">
                                    <h3>Choose a Car:</h3>
                                    <p>Choose SUV, Economy, Hatchbacks, etc depending on the trip and pessenger count you have in mind.</p>
                                </div>
                            </li>
                        </div>
                        <div class="col-lg-3">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="feature-div">
                                        <p>03</p>
                                    </div>
                                </div>
                            </div>
                            <li class="wow fade-in-left" data-wow-delay="500ms">
                                <div class="feature-content-3">
                                    <h3>Book a Car:</h3>
                                    <p>Once the choice is made, book the car online or contact our representative for the planned drive.</p>
                                </div>
                            </li>
                        </div>
                        
                        <div class="col-lg-3">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="feature-div">
                                        <p>04</p>
                                    </div>
                                </div>
                            </div>
                            <li class="wow fade-in-right" data-wow-delay="600ms">
                                <div class="feature-content-3">
                                    <h3>Drive Your Car:</h3>
                                    <p>Rent a car in UAE with few steps, up to date documentation, and transparent communications.</p>
                                </div>
                            </li>
                        </div>
                    </div>
                </ul>
            </div>
        </div>
    </section>
    <!--/.download-section-->
    <section class="booking-section">
        <div class="container">
            <div class="row pos-relative padding">
                <div class="col-lg-4">
                    <div class="booking-car wow fade-in-left" data-wow-delay="200ms"></div>
                </div>
                <div class="col-lg-8">
                    <div class="booking-wrap">
                        <div class="section-heading mb-30">
                            <h4><span></span>Online Booking</h4>
                            <h2 class="white">Book Your Car</h2>
                        </div>

                        <form action="{{route('homevehicles.search')}}" method="post">
                            @csrf
                            <div class="booking-form">
                                <div class="form-field">
                                    <i class="las la-user-tie"></i>
                                    <input type="text" id="full-name" name="full_name" class="form-control"
                                        placeholder="Your Name" required>
                                </div>
                                <div class="form-field">
                                    <i class="las la-envelope-open"></i>
                                    <input type="email" id="email" name="email" class="form-control" placeholder="Email"
                                        required>
                                </div>
                                <div class="form-field">
                                    <i class="las la-phone"></i>
                                    <input type="text" id="num" name="number" class="form-control" placeholder="Contact Number"
                                        required>
                                </div>
                                <div class="form-field">
                                    <i class="las la-car"></i>
                                    <select name="choose_car_brand" id="choose_car" class="niceSelect">
                                        <option value="">Choose Your Car Brand</option>
                                        @foreach(getVehicleBrands() as $brand)
                                            <option value="{{$brand->id}}">{{$brand->name}}</option>
                                        @endforeach  
                                    </select>
                                </div>
                                <div class="form-field">
                                    <i class="las la-calendar"></i>
                                    <input type="text" id="start-dest" name="start_date" class="form-control date-picker"
                                        placeholder="Start Date" required>
                                </div>
                                <div class="form-field">
                                    <i class="las la-calendar"></i>
                                    <input type="text" id="end-dest" name="end_date" class="form-control date-picker"
                                        placeholder="End Date" required>
                                </div>
                                <div class="form-field">
                                    <i class="las la-clock"></i>
                                    <input type="text" id="ride-time" name="start_time" class="form-control time-picker"
                                        placeholder="Start Time" required>
                                </div>
                                <div class="form-field">
                                    <i class="las la-clock"></i>
                                    <input type="text" id="ride-time" name="end_time" class="form-control time-picker"
                                        placeholder="End Time" required>
                                </div>
                                <div class="form-field">
                                    <button id="submit" class="default-btn" type="submit">Book Now</button>
                                </div>
                            </div>
                        </form><!-- Booking Form -->

                    </div>
                </div>
            </div>
        </div>
    </section><!--/.booking-section-->

    <section class="testimonial-section bg-grey">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="section-heading mb-10">
                        <h4><span></span>Clients Testimonial</h4>
                        <h2>Falcon Passenger Reviews...</h2>
                    </div>
                    <div class="swiper-outside testi-pagination">
                        <div class="testimonial-carousel">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide" id="oneline">
                                    <div class="testi-item">
                                        <div class="quote-icon"><i class="las la-quote-right"></i></div>
                                        <p>Good to have transportation available in places and times it is otherwise
                                            hard to find, but the app has always been a bit difficult to use especially
                                            how it works or doesnt with large font phone settings.</p>
                                        <div class="testi-author">
                                            <div class="author-thumb"><img src="{{url('')}}/assets/img/comment-1.png" alt="author">
                                            </div>
                                            <div class="author-info">
                                                <h3>Eredrik Johanson <span>Financial .INC</span></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide" id="twoline">
                                    <div class="testi-item">
                                        <div class="quote-icon"><i class="las la-quote-right"></i></div>
                                        <p>Good to have transportation available in places and times it is otherwise
                                            hard to find, but the app has always been a bit difficult to use especially
                                            how it works or doesnt with large font phone settings.</p>
                                        <div class="testi-author">
                                            <div class="author-thumb"><img src="{{url('')}}/assets/img/comment-1.png" alt="author">
                                            </div>
                                            <div class="author-info">
                                                <h3>Eredrik Johanson <span>Financial .INC</span></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide" id="threeline">
                                    <div class="testi-item">
                                        <div class="quote-icon"><i class="las la-quote-right"></i></div>
                                        <p>Good to have transportation available in places and times it is otherwise
                                            hard to find, but the app has always been a bit difficult to use especially
                                            how it works or doesnt with large font phone settings.</p>
                                        <div class="testi-author">
                                            <div class="author-thumb"><img src="{{url('')}}/assets/img/comment-1.png" alt="author">
                                            </div>
                                            <div class="author-info">
                                                <h3>Eredrik Johanson <span>Financial .INC</span></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div><!-- Carousel Dots -->
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="feature-wrap">
                        <div class="section-heading mb-30 wow fade-in-right" data-wow-delay="200ms">
                            <h4 class="white"><span></span>Why Choose Us!</h4>
                            <p class="white">Here are several reasons why you should choose Falcon Drive Rent a Car for your car rental needs.</p>
                        </div>
                        <!--/.section-heading-->
                        <ul class="ridek-features">
                            <li class="wow fade-in-right" data-wow-delay="300ms">
                                <div class="feature-content">
                                    <h3>Extensive Vehicle Selection:</h3>
                                    <p>We understand that every customer has unique preferences and requirements. That's why we offer a diverse fleet of vehicles, including sedans, SUVs, luxury cars, and more...</p>
                                </div>
                            </li>
                            <li class="wow fade-in-right" data-wow-delay="400ms">
                                <div class="feature-content">
                                    <h3>Well-Maintained Fleet:</h3>
                                    <p>we take pride in offering well-maintained vehicles that are in excellent condition. Our fleet undergoes regular maintenance and inspections to ensure optimal performance, safety, and...</p>
                                </div>
                            </li>
                            <li class="wow fade-in-right" data-wow-delay="500ms">
                                <div class="feature-content">
                                    <a href="{{route('about-us')}}/#why-choose-us" class="default-btn" id="btn-raed" data-animation="fade-in-bottom"
                                        data-delay="0.9s">Read More...</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/.testimonial-section-->

    <section class="cta-section padding">
        <div class="cta-men wow fade-in-bottom" data-wow-delay="200ms"></div>
        <div class="container">
            <div class="cta-content">
                <h2>Call Us Now <span>Book Your Car</span> <br> For Your Next Ride!</h2>
                <div class="cta-call">
                    <i class="las la-phone-volume"></i>
                    <p><span>Call To Rent A Car</span><a href="tel:{{getSettings('contact_no')}}">{{getSettings('contact_no')}}</a></p>
                </div>
            </div>
        </div>
    </section>
    <!--/.cta-section-->

    <section class="blog-section bg-grey padding">
        <div class="container">
            <div class="section-heading text-center mb-40 wow fade-in-bottom" data-wow-delay="200ms">
                <h4><span></span>Recent Posts!</h4>
                <h2>News And Insights!</h2>
            </div>
            <!--/.section-heading-->
            <div class="row grid-post">
                @foreach($blogs as $blog)
                    <div class="col-md-4 padding-15">
                        <div class="post-card" style="height: 460px;">
                            <div class="post-thumb">
                                <a href="{{route('blog_detail',$blog->slug)}}"><img src="{{config('falcondrive.file_path').$blog->image}}" alt="{{$blog->name}}"></a>
                            </div>
                            <div class="post-content-wrap">
                                <ul class="post-meta">
                                    <li><i class="las la-calendar"></i>{{date('F d, Y',strtotime($blog->date))}}</li>
                                    <li><i class="las la-user"></i>Published By: {{$blog->by}}</li>
                                </ul>
                                <div class="post-content">
                                    <h3 style="font-size: 18px;">
                                        <a href="{{route('blog_detail',$blog->slug)}}">{{$blog->name}}</a>
                                    </h3>
                                    <a href="{{route('blog_detail',$blog->slug)}}" class="read-more">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
    <!--/.blog-section-->
    <section class="blog-section bg-grey padding" id="blog-section">
        <div class="container">
            <div class="section-heading text-center mb-40 wow fade-in-bottom" data-wow-delay="200ms">
                <h4><span></span>Required Documents!</h4>
                <h2>What documents do you need to rent a car?</h2>
            </div>
            <!--/.section-heading-->
            <div class="row grid-post">
                <div class="col-lg-6 wow fade-in-bottom" data-wow-delay="300ms">
                    <div class="main">
                        <div class="img-div">
                            <img src="{{url('')}}/assets/img/arabic-man.png" alt="">
                        </div>
                        <div class="text-div">
                            <ul class="main-ul">
                                <h3>As a UAE resident:</h3>
                                <li><i class="las la-dot-circle" style="color: #b4822c;"></i>&nbsp; Passport copy</li>
                                <li><i class="las la-dot-circle" style="color: #b4822c;"></i>&nbsp; Emirates ID copy</li>
                                <li><i class="las la-dot-circle" style="color: #b4822c;"></i>&nbsp; Valid UAE driving license</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fade-in-bottom" data-wow-delay="400ms">
                    <div class="main">
                        <div class="img-div">
                            <img src="{{url('')}}/assets/img/tour.png" alt="">
                        </div>
                        <div class="text-div">
                            <ul class="main-ul">
                                <h3>As a tourist:</h3>
                                <li><i class="las la-dot-circle" style="color: #b4822c;"></i>&nbsp; Passport copy</li>
                                <li><i class="las la-dot-circle" style="color: #b4822c;"></i>&nbsp; Valid international driving license</li>
                                <li><i class="las la-dot-circle" style="color: #b4822c;"></i>&nbsp; Copy of visit visa/stamp</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 wow fade-in-left" data-wow-delay="500ms">
                    <p style="text-align: center; margin-top: 10px;">Visitors from European and GCC countries can drive using their home countries driving license.</p>
                </div>
            </div>
        </div>
    </section>

@endsection

@section('bottom-mid-scripts')
@endsection

@section('bottom-bot-scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script>
    var carImages = [
      'assets/img/car_one.png',
      'assets/img/car_two.png',
      'assets/img/car_three.png'
    ];
    var currentImageIndex = 0;

    function slideCar(direction) {
      var activeCar = $('.car-holder .car-animation');
      var nextCar = activeCar.next('.car-animation');

      if (direction === 'prev') {
        nextCar = activeCar.prev('.car-animation');
      }

      if (nextCar.length === 0) {
        nextCar = $('.car-holder .car-animation').first();
      }

      currentImageIndex += direction === 'next' ? 1 : -1;
      if (currentImageIndex < 0) {
        currentImageIndex = carImages.length - 1;
      } else if (currentImageIndex >= carImages.length) {
        currentImageIndex = 0;
      }

      nextCar.attr('src', carImages[currentImageIndex]);

      activeCar.addClass('slide-out');
      nextCar.addClass('slide-in');

      setTimeout(function() {
        activeCar.removeClass('slide-out').hide();
        nextCar.removeClass('slide-in').show();
        slideCar('next'); // Trigger next slide
      }, 3000);
    }

    // Initial slide
    slideCar('next');
  </script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript">
              $(function(){
        var dtToday = new Date();
        
        var month = dtToday.getMonth() + 1;
        var day = dtToday.getDate();
        var maxday = dtToday.getDate() + 1;
        var year = dtToday.getFullYear();
        if(month < 10)
            month = '0' + month.toString();
        if(day < 10)
            day = '0' + day.toString();
        if(maxday < 10)
            maxday = '0' + maxday.toString();
        
        var minDate= year + '-' + month + '-' + day;
        var maxDate= year + '-' + month + '-' + maxday;
        
        $('#ride-date').attr('min', minDate);
    });
    </script>
@endsection