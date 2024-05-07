@extends('layouts.master')

@section('title')@if(request()->segment(2)) {{ ucfirst(request()->segment(1)) .' '.ucfirst(request()->segment(2)) }} | @endif @endsection

@section('top-styles')
@endsection

@section('content') 

<section class="page-header">
    <div class="page-header-shape"></div>
    <div class="container">
        <div class="page-header-info">
            <h4>Our All Cars List</h4>
            <h2>Use Falcon Drive Car Rental<br><span>Experience the Freedom <br>of the Open Road.</span></h2>
        </div>
    </div>
</section>
<!--/.page-header-->

<section class="our-taxi padding">
    <div class="container">
        <div class="row">
            @foreach($vehicles as $vehicle)
                <div class="col-lg-4 col-md-6 sm-padding mb-5">
                    <form action="{{route('vehicles.form.post')}}" method="post">
                    @csrf
                    <div class="pricing-item">
                        <div class="pricing-head-wrap">
                            <div class="pricing-car form-post">
                                <button href="" class="form-post">
                                    <img src="{{config('falcondrive.file_path').$vehicle->featured_image}}" alt="{{$vehicle->name}}">
                                </button>
                                @foreach($brands as $vehicles)
                                    @if($vehicles->id === $vehicle->brand_id)
                                        <div class="price"><img src="{{config('falcondrive.file_path').$vehicles->logo}}" alt="{{$vehicles->name}}"> <h4>{{$vehicles->name}}</h4></div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                        <div class="pricing-head">
                            <h3  style="margin-bottom: 10px"><a href="{{route('vehicle_detail',$vehicle->slug)}}">{{strtoupper($vehicle->name)}}</a></h3>
                            <span class="location">Price/Day AED {{number_format($vehicle->price)}}</span><br>
                            <span class="location">Price/Week AED {{number_format($vehicle->w_price)}}</span><br>
                            <span class="location">Price/Month AED {{number_format($vehicle->m_price)}}</span>
                        </div>

                        @php
                            $totalAmount = $vehicle->price * $noOfDays; 
                        @endphp
                        <input type="hidden" name="total_amount" value="{{$totalAmount}}">
                        <input type="hidden" name="no_of_days" value="{{$noOfDays}}">
                        
                        @if(empty($data['full_name']))
                            <input type="hidden" name="full_name" value="{{ isset($full_name) ? $full_name : '' }}">
                            <input type="hidden" name="email" value="{{ isset($email) ? $email : '' }}">
                            <input type="hidden" name="number" value="{{ isset($number) ? $number : '' }}">
                        @else
                            <input type="hidden" name="full_name" value="{{ isset($full_name) ? $full_name : '' }}">
                            <input type="hidden" name="email" value="{{ isset($email) ? $email : '' }}">
                            <input type="hidden" name="number" value="{{ isset($number) ? $number : '' }}">
                        @endif

                        
                        <input type="hidden" name="start_date" value="{{$start_date}}">
                        <input type="hidden" name="end_date" value="{{$end_date}}">
                        <input type="hidden" name="start_time" value="{{$start_time}}">
                        <input type="hidden" name="end_time" value="{{$end_time}}">
                        <input type="hidden" name="vehicle_id" value="{{$vehicle->id}}">        

                        <div class="pricing-head">
                            <span class="location">Days {{$noOfDays}} / AED {{number_format($totalAmount)}} </span>
                        </div>   
                        <ul class="pricing-list">
                            @foreach($vehicle->features as $feature)
                                <li>{{$feature->name}}: <span>{{$feature->value}}</span></li>
                            @endforeach
                            <div class="cards_buttons">
                                <button href="" class="default-btn form-post" style="background: #800020;">Book Now</button>
                                <li><a href="https://wa.me/{{getSettings('whatsapp_link')}}" class="default-btn" style="background: green;"><i class="lab la-whatsapp" style="margin-right: 5px;"></i>Chat Now</a></li>
                            </div>
                        </ul>
                    </div>
                    </form>
                </div>                
            @endforeach
        </div>
    </div>
</section><!--/.our-taxi-->

@endsection

@section('bottom-mid-scripts')
@endsection

@section('bottom-bot-scripts')
@endsection