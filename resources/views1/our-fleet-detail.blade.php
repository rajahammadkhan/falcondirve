@extends('layouts.master')

@php
    $explodedName = explode(" ", $vehicle->name);
    $first = preg_replace('/\W\w+\s*(\W*)$/', '$1', $vehicle->name);
@endphp
@section('title') {{$first}} {{$explodedName[count($explodedName)-1]}} | @endsection

@section('top-styles')
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
    .paragraph-read-more{
        display: -webkit-box;
        -webkit-line-clamp: 11;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .paragraph-read-more-2{
        display: -webkit-box;
        -webkit-line-clamp: none;
        -webkit-box-orient: vertical;
        overflow: hidden !important;
        text-overflow: ellipsis;
    }
</style>
@endsection

@section('content')
<section class="page-header">
    <div class="page-header-shape"></div>
    <div class="container">
        <div class="page-header-info">
            <h4>Car Details!</h4>
            <h2>Use Falcon Drive Car Rental<br><span>Experience the Freedom <br>of the Open Road.</span></h2>
        </div>
    </div>
</section>
<!--/.page-header-->

<section class="taxi-details bd-bottom padding">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 wow fade-in-left" data-wow-delay="200ms">
                <div class="section-heading">
                    @if(isset($data['noOfDays']))
                    <h4><span></span>{{$vehicle->car_type}}</h4>
                    @else
                        @foreach($brands as $brand)
                            @if($brand->id === $vehicle->brand_id)
                               <h4><span></span>{{$brand->name}}</h4>
                            @endif
                        @endforeach
                    @endif
                    <h2>{{$vehicle->name}}</h2>
                </div>
                <div id="carouselExampleDark" class="carousel carousel-dark slide">
                    <div class="carousel-inner">
                        @foreach($vehicle->gallery_images as $key => $gallery)
                            <div class="carousel-item {{$key == 0 ? 'active' : ''}}" data-bs-interval="10000">
                                <div class="taxi-details-img">
                                    <img src="{{config('falcondrive.file_path').$gallery->image}}" class="w-100" alt="{{$vehicle->name}}">
                                </div>
                            </div>
                        @endforeach
                    </div>

                    <ol class="carousel-indicators">
                        @foreach($vehicle->gallery_images as $key=>$gallery)
                            <li data-bs-target="#carouselExampleDark" class="{{ $key == 0 ? 'active' : '' }}" data-bs-slide-to="{{ $key++ }}" {{ $key == 0 ? 'aria-current="true"' : '' }}>
                                <img src="{{config('falcondrive.file_path').$gallery->image}}" class="d-block w-100">
                            </li>
                        @endforeach
 
                    </ol>
                </div>
                
            </div>
            
            <div class="col-lg-4 wow fade-in-right" data-wow-delay="300ms">

            @if(isset($success))
                <div class="row" style="top: 50px;position: relative;" id="aler">
                    <div class="col-md-12" style="background: #b4822c;border-radius: 10px;">
                        <center>  
                          <h3 class="text-center" style="font-size: 24px; color: white; font-weight: 900;">THANK YOU!</h3>
                            <h5 class="text-center" style="font-size: 18px; font-weight: 700;color: white;">{{$success}}</h5>
                        </center>      
                    </div>
                </div>
            @endif

                <div class="taxi-booking" style="padding: 32px 0;">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="features">
                                    <div>Daily:</div>
                                    <div><span>{{number_format($vehicle->price)}}</span> AED</div>
                                </div>
                                <hr style="margin: 6px 0">
                                <div class="features">
                                    <div>Weekly:</div>
                                    <div><span>{{number_format($vehicle->w_price)}}</span> AED</div>
                                </div>
                                <hr style="margin: 6px 0">
                                <div class="features">
                                    <div class="pb-4">Monthly:</div>
                                    <div class="pb-4"><span>{{number_format($vehicle->m_price)}}</span> AED</div>
                                </div>
                                <form action="{{route('booking_form.store')}}" method="post">
                                @csrf
                                    <div class="taxi-booking-form">
                                        @if(!empty($data['full_name']))
                                            <div class="features">
                                                <div style="font-size: 13px;">Full Name:</div>
                                                <div><span style="font-size: 15px;">{{$data['full_name']}}</span></div>
                                            </div>

                                            <div class="features">
                                                <div style="font-size: 13px;">Email:</div>
                                                <div><span style="font-size: 15px;">{{$data['email']}}</span></div>
                                            </div>

                                            <div class="features">
                                                <div style="font-size: 13px;">Number:</div>
                                                <div><span style="font-size: 15px;">{{$data['number']}}</span></div>
                                            </div>
                                        @else
                                            <div class="form-field">
                                                <i class="las la-user-tie"></i>
                                                <input type="text" id="full-name" name="first_name" class="form-control" placeholder="Full Name" required>
                                            </div>
                                            <div class="form-field">
                                                <i class="las la-envelope-open"></i>
                                                <input type="email" id="email" name="email1" class="form-control" placeholder="Email" required>
                                            </div>
                                            <div class="form-field">
                                                <i class="las la-phone"></i>
                                                <input type="text" name="contact_no" id="contact_no" class="form-control" placeholder="Contact" required>
                                            </div> 
                                        @endif                                       

                                        <input type="hidden" name="vehicle_id" value="{{$vehicle->id}}">
                                        <input type="hidden" name="car_name" value="{{$vehicle->name}}">

                                        @if(isset($data['noOfDays']))
                                        <div class="form-field">
                                        </div>
                                        <div class="features">
                                            <div style="font-size: 13px;">Start Date:</div>
                                            <div><span style="font-size: 15px;">{{$data['start_date']}}</span></div>
                                        </div>

                                        <div class="features">
                                            <div style="font-size: 13px;">End Date:</div>
                                            <div><span style="font-size: 15px;">{{$data['end_date']}}</span></div>
                                        </div>

                                        <div class="features">
                                            <div style="font-size: 13px;">Start Time:</div>
                                            <div><span style="font-size: 15px;">{{date('h:i A',strtotime($data['start_time']))}}</span></div>
                                        </div>

                                        <div class="features">
                                            <div style="font-size: 13px;">Start Time:</div>
                                            <div><span style="font-size: 15px;">{{date('h:i A',strtotime($data['end_time']))}}</span></div>
                                        </div>

                                        <div class="features">
                                            <div style="font-size: 13px;">Days:</div>
                                            <div><span style="font-size: 15px;">{{$data['noOfDays']}}</span></div>
                                        </div>

                                        <div class="features">
                                            <div style="font-size: 13px;">Total Amount:</div>
                                            <div><span style="font-size: 15px;">AED {{number_format($data['total_amount'])}}</span></div>
                                        </div>
                                            <input type="hidden" name="first_name" value="{{$data['full_name']}}">
                                            <input type="hidden" name="email1" value="{{$data['email']}}">
                                            <input type="hidden" name="contact_no" value="{{$data['number']}}">
                                            <input type="hidden" name="start_date" value="{{$data['start_date']}}">
                                            <input type="hidden" name="end_date" value="{{$data['end_date']}}">
                                            <input type="hidden" name="start_time" value="{{$data['start_time']}}">
                                            <input type="hidden" name="end_time" value="{{$data['end_time']}}">
                                            <input type="hidden" name="total_amount" value="{{$data['total_amount']}}">
                                            <input type="hidden" name="no_of_days" value="{{$data['noOfDays']}}">
                                        @else
                                        <div class="form-field"></div>
                                        <div class="form-field" style="display: none">
                                            <i class="las la-car"></i>
                                            <select name="selected_package" id="car_name" class="niceSelect">
                                                <option value="daily">Daily</option>
                                                <option value="weekly">Weekly</option>
                                                <option value="monthly">Monthly</option>
                                            </select>
                                        </div>

                                        <div class="form-field">
                                            <i class="las la-calendar"></i>
                                            <input type="text" id="start-date" name="start_date" class="form-control date-picker" placeholder="Start Date" required>
                                        </div>
                                        <div class="form-field" id="end_date">
                                            <i class="las la-calendar"></i>
                                            <input type="text" id="end-date" name="end_date" class="form-control date-picker" placeholder="End Date" required>
                                        </div>
                                        <div class="form-field">
                                            <i class="las la-calendar"></i>
                                            <input type="text" id="ride-time" name="start_time" class="form-control time-picker" placeholder="Start Time" required>
                                        </div>
                                        <div class="form-field">
                                            <i class="las la-clock"></i>
                                            <input type="text" id="ride-time" name="end_time" class="form-control time-picker" placeholder="End Time" required>
                                        </div>
                                    @endif
                                        <div class="form-field">
                                            <button id="submit" class="default-btn" type="submit">Book Now</button>
                                        </div>
                                    </div>
                                </form>
                                <!-- Booking Form -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/.taxi-details-->

<!--/.booking-form-->
{{-- features --}}

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="ul_head wow fade-in-right" data-wow-delay="200ms"><h2>Car Features</h2></div>
            <ul class="taxi-features wow fade-in-left" data-wow-delay="300ms">
                @foreach($vehicle->features as $feature)
                    <li><span><i class="las la-check"></i>{{$feature->name}}:</span> 
                        @if($feature->name == 'Security Amount' || $feature->name == 'Price' || $feature->name == 'Deposit' )
                            <div style="float: right;">{{number_format($feature->value)}}</div></li>
                        @else
                            <div style="float: right;">{{$feature->value}}</div>
                        @endif
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
</div>


{{-- features --}}
{{-- Car Description --}}

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="feature-wrap-2">
                <div class="section-heading mb-30 wow fade-in-right" data-wow-delay="400ms">
                    <h2 style="text-align: center">Car Description</h2>
                </div>
                <!--/.section-heading-->
                <div class="feature-content-2 wow fade-in-left" data-wow-delay="500ms">
                    <p>
                        <div class="paragraph-read-more" id="myElement">
                        {!! $vehicle->description !!}
                        </div>
                    </p>
                    <button id="readMoreButton" class="default-btn mt-3">Show More</button>
                    <button id="readLessButton" style="display: none;" class="default-btn mt-3">Show Less</button>
                </div>
                <div class="col-lg-12">
                    <hr>
                    <div class="btoom">
                        <div class="col-lg-6">Published: {{ Carbon\Carbon::parse($vehicle->created_at)->format('F jS, Y') }}</div>
                        <div class="col-lg-6 btoom_end"> Location: {{$vehicle->location}} </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- Car Description --}}
</section>
@if(isset($data['noOfDays']))
@else
<section class="related-taxi bg-grey padding">
    <div class="container">
        <div class="section-heading text-center mb-40">
            <h4><span></span>Our More Cars</h4>
            <h2>Related Cars To Ride</h2>
            <!--<p>We successfully cope with tasks of varying complexity, provide long-term <br>guarantees and regularly master new technologies.</p>-->
        </div>
        <!--/.section-heading-->
        <div class="swiper-outside">
            <div class="taxi-carousel swiper-container">
                <div class="swiper-wrapper">
                    @foreach($brands as $brand)
                        @foreach($selected_vehicle as $vehicle)
                            @if($brand->id === $vehicle->brand_id)
                                <div class="swiper-slide">
                                    <div class="pricing-item">
                                        <div class="pricing-head-wrap">
                                            <div class="pricing-car">
                                                <a href="{{route('vehicle_detail',$vehicle->slug)}}">
                                                    <img src="{{ config('falcondrive.file_path') . $vehicle->featured_image }}" alt="{{ $vehicle->name }}">
                                                </a>
                                                <div class="price">
                                                    <img src="{{ config('falcondrive.file_path') . $brand->logo }}" alt="{{ $brand->name }}">
                                                    <h4>{{ $brand->name }}</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="pricing-head">
                                            <h3><a href="{{ route('vehicle_detail', $vehicle->slug) }}">{{ strtoupper($vehicle->name) }}</a></h3>
                                            <span class="location">Price/Day AED {{ number_format($vehicle->price) }}</span>
                                        </div>
                                        <ul class="pricing-list">
                                            @foreach($vehicle->features as $feature)
                                                <li>{{ $feature->name }}: <span>{{ $feature->value }}</span></li>
                                            @endforeach
                                            <div class="cards_buttons">
                                                <li><a href="{{ route('vehicle_detail', $vehicle->slug) }}" class="default-btn" style="background: #ff0000;">Book Now</a></li>
                                                <li><a href="https://wa.me/{{ getSettings('whatsapp_link') }}" class="default-btn" style="background: green;"><i class="lab la-whatsapp" style="margin-right: 5px;"></i>Chat Now</a></li>
                                            </div>
                                        </ul>
                                    </div>
                                </div>
                            @endif
                        @endforeach
                    @endforeach
                </div>
            </div>
            <!-- Carousel Arrows -->
            <div class="swiper-nav swiper-next"><i class="las la-long-arrow-alt-right"></i></div>
            <div class="swiper-nav swiper-prev"><i class="las la-long-arrow-alt-left"></i></div>
        </div>
    </div>
</section>
<!--/.related-taxi-->
@endif
@endsection

@section('bottom-mid-scripts')
@endsection

@section('bottom-bot-scripts')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script type="text/javascript">
          $(function(){
    var dtToday = new Date();
    
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();
    
    var minDate= year + '-' + month + '-' + day;
    
    $('#c-start').attr('min', minDate);
    $('#c-end').attr('min', minDate);
});
</script>

<script type="text/javascript">
      $("#aler").show();
        setTimeout(function() { $("#aler").hide(); }, 10000);
</script>

<script>
    var readMoreButton = document.getElementById('readMoreButton');
    var readLessButton = document.getElementById('readLessButton');
    var element = document.getElementById('myElement');
    readMoreButton.addEventListener('click', function() {

  element.classList.add('paragraph-read-more-2');

  element.classList.remove('paragraph-read-more');

  if(readLessButton.style.display == "none"){
    readLessButton.style.display = "block";
    readMoreButton.style.display = "none";
  }
});
    readLessButton.addEventListener('click', function() {

  element.classList.remove('paragraph-read-more-2');

  element.classList.add('paragraph-read-more');

  if(readLessButton.style.display == "block"){
    readLessButton.style.display = "none";
    readMoreButton.style.display = "block";
  }
});
</script>
@endsection