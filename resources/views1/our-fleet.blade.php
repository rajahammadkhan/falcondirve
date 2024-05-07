@extends('layouts.master')

@section('title')@if(request()->segment(2)) {{ ucfirst(request()->segment(2)) }} | @endif @endsection

@section('top-styles')
<style type="text/css">
    .tags li .active{
        background: #d7b43c;
        color: white;
    }
    .category-list li .active{
        color: #d7b43c;
    }
    #active{
        background: #d7b43c;
        color: white;
    }

    .product_list{
        height: 200px; /* Adjust the height as needed */
        overflow: auto;
    }
</style>
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

<section class="blog-section blog-page bg-grey padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 sm-padding">
                <div class="sidebar-widget">
                    <form class="search-form">
                        <input type="text" class="form-control" placeholder="Search" name="product_brand_search" id="product_brand_search">
                        <button class="search-btn" type="button"><i class="fa fa-search"></i></button>
                        <div id="product_list" style="height: 0;"></div>
                    </form>
                </div>
                <!--Search Form-->
                <div class="sidebar-widget">
                    <div class="widget-title">
                        <h3>Select Your Car Type</h3>
                    </div>
                    <ul class="tags">

                        <li>
                            <a href="{{ route('get_vehicles_against_type', 'Economy') }}" class="{{ (request()->segment(2) == 'Economy' ) ? 'active' : '' }}">Economy</a>
                        </li>
                        
                        <li>
                            <a href="{{ route('get_vehicles_against_type', 'SUV') }}" class="{{ (request()->segment(2) == 'SUV' ) ? 'active' : '' }}">SUV</a>
                        </li>
                        
                        <li>
                            <a href="{{ route('get_vehicles_against_type', 'Hatchback') }}" class="{{ (request()->segment(2) == 'Hatchback' ) ? 'active' : '' }}">Hatchback</a>
                        </li>
                        
                        <li>
                            <a href="{{ route('get_vehicles_against_type', 'Luxury') }}" class="{{ (request()->segment(2) == 'Luxury' ) ? 'active' : '' }}">Luxury</a>
                        </li>

                        <!-- <li>
                            <label>
                                <input type="checkbox" class="type-checkbox" name="selected_economy[]" value="Economy" >
                                Economy
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="type-checkbox" name="selected_suv[]" value="SUV" >
                                SUV
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="type-checkbox" name="selected_hatchback[]" value="Hatchback" >
                                Hatchback
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="type-checkbox" name="selected_luxury[]" value="Luxury" >
                                Luxury
                            </label>
                        </li> -->
                    </ul>
                </div>
                <div class="sidebar-widget">
                    <div class="widget-title">
                        <h3>Select Your Brand</h3>
                    </div>
                    <form id="brand-form" action="{{ route('get_selected_vehicles_against_brand') }}" method="GET">
                        @csrf
                        <ul class="category-list">
                            <!-- @foreach($brands as $brand)
                                <li>
                                    <label>
                                        <input type="checkbox" class="brand-checkbox active" name="selected_brands[]" value="{{ $brand->id }}" {{ (in_array(strtolower($brand->name), explode(',', implode(',', (array)request()->input('selected_brands', []))))) ? 'checked' : '' }}>
                                        {{$brand->name}}
                                    </label>
                                    <span id="{{ (in_array(strtolower($brand->name), explode(',', implode(',', (array)request()->input('selected_brands', []))))) ? 'active' : '' }}">{{$brand->brandcount}}</span>
                                </li>
                            @endforeach -->
                            @foreach($brands as $brand)
                                <li>
                                    <label>
                                        <input type="checkbox" class="brand-checkbox" name="selected_brands[]" value="{{ $brand->id }}" {{ $brand->active ? 'checked' : '' }}>
                                        {{$brand->name}}
                                    </label>
                                    <span id="{{ $brand->active ? 'active' : '' }}">{{$brand->brandcount}}</span>
                                </li>
                            @endforeach

                        </ul>
                    </form>
                </div>
                <div class="sidebar-widget">
                    <div class="widget-title">
                        <h3>Select Your Price Range</h3>
                    </div>
                    <div class="wrapper">
                        <div class="price-input">
                          <div class="field">
                            <span>Min</span>
                            <input type="number" class="input-min"  value="{{$minPrice}}">
                          </div>
                          <div class="separator">-</div>
                          <div class="field">
                            <span>Max</span>
                            <input type="number" class="input-max" value="{{$maxPrice}}">
                          </div>
                        </div>
                        <div class="slider">
                          <div class="progress"></div>
                        </div>
                        <div class="range-input">
                          <input type="range" class="input-min" min="{{$minPrice}}" max="{{$maxPrice}}" value="{{$minPrice}}" step="0">
                          <input type="range" class="input-max" min="{{$minPrice}}" max="{{$maxPrice}}" value="{{$maxPrice}}" step="0">
                        </div>
                    </div>
                </div>
                <!--Categories-->
            </div>

            <div class="col-lg-8 sm-padding">
                <div class="row grid-post">
                    <div class="col-lg-12" style="margin-top: 17px;">
                        <div class="row" id="vehicles-list">
                            @foreach($vehicles as $vehicle)
                                <div class="col-lg-6 col-md-6 sm-padding mb-5">
                                    <div class="pricing-item">
                                        <div class="pricing-head-wrap">
                                            <div class="pricing-car">
                                                <a href="{{route('vehicle_detail',$vehicle->slug)}}">
                                                    <img src="{{config('falcondrive.file_path').$vehicle->featured_image}}" alt="{{$vehicle->name}}">
                                                </a>
                                                @foreach($brands as $brand)
                                                    @if($brand->id === $vehicle->brand_id)
                                                        <div class="price"><img src="{{config('falcondrive.file_path').$brand->logo}}" alt="{{$brand->name}}"> <h4>{{$brand->name}}</h4></div>
                                                    @endif
                                                @endforeach
                                            </div>
                                        </div>
                                        <div class="pricing-head">
                                            <h3><a href="{{route('vehicle_detail',$vehicle->slug)}}">{{strtoupper($vehicle->name)}}</a></h3>
                                            <span class="location">Price/Day AED {{number_format($vehicle->price)}}</span>
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
                </div>
            </div>            
        </div>
    </div>
</section><!--/.our-taxi-->

@endsection

@section('bottom-mid-scripts')
@endsection

@section('bottom-bot-scripts')
        <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>

<script type="text/javascript">
    $(document).ready(function () {
    var myDiv = document.getElementById('product_list');
    var searchInput = document.querySelector('input[name="product_brand_search"]');

    if (searchInput != null) {
        $(searchInput).on('keyup', function () {
            var query = $(this).val();
            $.ajax({
                url: '{{ route('search') }}',
                type: 'GET',
                data: {
                    'product_brand_search': query
                },
                success: function (data) {
                    $('#product_list').html(data);
                    myDiv.style.height = '300px';
                    myDiv.style.overflow = 'auto';
                }
            });
        });
    }

    $(document).on('click', 'li', function () {
        var value = document.querySelector('input[name="product_brand_search"]').text();
        $(searchInput).val(value);
        $('#product_list').html("");
    });
});

</script>

<script>
    $(document).ready(function () {
        // Handle the change event of the price input fields
        $('.input-min, .input-max').on('change', function () {
            // Retrieve the min and max values from the input fields
            var min = $('.input-min').val();
            var max = $('.input-max').val();

            // Make an Ajax request to get the vehicles with the specified price range
            $.ajax({
                url: '{{ route('get_price') }}',
                type: 'GET',
                data: {
                    min: min,
                    max: max
                },
                success: function (response) {
                    // Clear the vehicles list
                    $('#vehicles-list').empty();

                    // Loop through the vehicles and append them to the list
                    $.each(response, function (index, vehicle) {
                        var vehicleHtml = '<div class="col-lg-6 col-md-6 sm-padding mb-5">';
                        vehicleHtml += '<div class="pricing-item">';
                        vehicleHtml += '<div class="pricing-head-wrap">';
                        vehicleHtml += '<div class="pricing-car">';
                        vehicleHtml += '<a href="' + vehicle.slug + '">';
                        vehicleHtml += '<img src="' + vehicle.featured_image + '" alt="' + vehicle.name + '">';
                        vehicleHtml += '</a>';
                        // Add the brand logo and name
                        vehicleHtml += '<div class="price"><img src="' + vehicle.brand_logo + '" alt="' + vehicle.brand_name + '"><h4>' + vehicle.brand_name + '</h4></div>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '<div class="pricing-head">';
                        vehicleHtml += '<h3><a href="' + vehicle.slug + '">' + vehicle.name.toUpperCase() + '</a></h3>';
                        vehicleHtml += '<span class="location">Price/Day AED ' + vehicle.price_formatted + '</span>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '<ul class="pricing-list">';
                        // Add the features
                        $.each(vehicle.features, function (index, feature) {
                            vehicleHtml += '<li>' + feature.name + ': <span>' + feature.value + '</span></li>';
                        });
                        vehicleHtml += '<div class="cards_buttons">';
                        vehicleHtml += '<li><a href="' + vehicle.slug + '" class="default-btn" style="background: #ff0000;">Book Now</a></li>';
                        vehicleHtml += '<li><a href="https://wa.me/' + vehicle.whatsapp_link + '" class="default-btn" style="background: green;"><i class="lab la-whatsapp" style="margin-right: 5px;"></i>Chat Now</a></li>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '</ul>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '</div>';
                        $('#vehicles-list').append(vehicleHtml);
                    });
                },
                error: function (xhr, status, error) {
                    // Handle the error case
                    console.log(error);
                }
            });
        });
    });
</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
    // Handle the change event of the brand checkboxes
    $('.brand-checkbox').on('change', function () {
        // Retrieve the selected brand IDs
        var selectedBrands = [];
        $('.brand-checkbox:checked').each(function () {
            selectedBrands.push($(this).val());
        });

        // Make an Ajax request to get the selected vehicles against the brands
        $.ajax({
            url: '{{ route('get_selected_vehicles_against_brand') }}',
            type: 'GET',
            data: {
                selected_brands: selectedBrands,
            },
            success: function (response) {
                // Clear the vehicles list
                    $('#vehicles-list').empty();

                    // Loop through the vehicles and append them to the list
                    $.each(response, function (index, vehicle) {
                        var vehicleHtml = '<div class="col-lg-6 col-md-6 sm-padding mb-5">';
                        vehicleHtml += '<div class="pricing-item">';
                        vehicleHtml += '<div class="pricing-head-wrap">';
                        vehicleHtml += '<div class="pricing-car">';
                        vehicleHtml += '<a href="' + vehicle.slug + '">';
                        vehicleHtml += '<img src="' + vehicle.featured_image + '" alt="' + vehicle.name + '">';
                        vehicleHtml += '</a>';
                        // Add the brand logo and name
                        vehicleHtml += '<div class="price"><img src="' + vehicle.brand_logo + '" alt="' + vehicle.brand_name + '"><h4>' + vehicle.brand_name + '</h4></div>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '<div class="pricing-head">';
                        vehicleHtml += '<h3><a href="' + vehicle.slug + '">' + vehicle.name.toUpperCase() + '</a></h3>';
                        vehicleHtml += '<span class="location">Price/Day AED ' + vehicle.price_formatted + '</span>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '<ul class="pricing-list">';
                        // Add the features
                        $.each(vehicle.features, function (index, feature) {
                            vehicleHtml += '<li>' + feature.name + ': <span>' + feature.value + '</span></li>';
                        });
                        vehicleHtml += '<div class="cards_buttons">';
                        vehicleHtml += '<li><a href="' + vehicle.slug + '" class="default-btn" style="background: #ff0000;">Book Now</a></li>';
                        vehicleHtml += '<li><a href="https://wa.me/' + vehicle.whatsapp_link + '" class="default-btn" style="background: green;"><i class="lab la-whatsapp" style="margin-right: 5px;"></i>Chat Now</a></li>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '</ul>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '</div>';
                        $('#vehicles-list').append(vehicleHtml);
                    });
            },
            error: function (xhr, status, error) {
                // Handle the error case
                console.log(error);
            }
        });
    });
});

</script>

<script>
    $(document).ready(function () {
    // Handle the change event of the brand checkboxes
    $('.type-checkbox').on('change', function () {
        // Retrieve the selected brand IDs
        var selectedType = [];
        $('.type-checkbox:checked').each(function () {
            selectedType.push($(this).val());
        });

        // Make an Ajax request to get the selected vehicles against the brands
        $.ajax({
            url: '{{ route('get_selected_vehicles_against_brand') }}',
            type: 'GET',
            data: {
                selected_types: selectedType,
            },
            success: function (response) {
                // Clear the vehicles list
                    $('#vehicles-list').empty();

                    // Loop through the vehicles and append them to the list
                    $.each(response, function (index, vehicle) {
                        var vehicleHtml = '<div class="col-lg-6 col-md-6 sm-padding mb-5">';
                        vehicleHtml += '<div class="pricing-item">';
                        vehicleHtml += '<div class="pricing-head-wrap">';
                        vehicleHtml += '<div class="pricing-car">';
                        vehicleHtml += '<a href="' + vehicle.slug + '">';
                        vehicleHtml += '<img src="' + vehicle.featured_image + '" alt="' + vehicle.name + '">';
                        vehicleHtml += '</a>';
                        // Add the brand logo and name
                        vehicleHtml += '<div class="price"><img src="' + vehicle.brand_logo + '" alt="' + vehicle.brand_name + '"><h4>' + vehicle.brand_name + '</h4></div>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '<div class="pricing-head">';
                        vehicleHtml += '<h3><a href="' + vehicle.slug + '">' + vehicle.name.toUpperCase() + '</a></h3>';
                        vehicleHtml += '<span class="location">Price/Day AED ' + vehicle.price_formatted + '</span>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '<ul class="pricing-list">';
                        // Add the features
                        $.each(vehicle.features, function (index, feature) {
                            vehicleHtml += '<li>' + feature.name + ': <span>' + feature.value + '</span></li>';
                        });
                        vehicleHtml += '<div class="cards_buttons">';
                        vehicleHtml += '<li><a href="' + vehicle.slug + '" class="default-btn" style="background: #ff0000;">Book Now</a></li>';
                        vehicleHtml += '<li><a href="https://wa.me/' + vehicle.whatsapp_link + '" class="default-btn" style="background: green;"><i class="lab la-whatsapp" style="margin-right: 5px;"></i>Chat Now</a></li>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '</ul>';
                        vehicleHtml += '</div>';
                        vehicleHtml += '</div>';
                        $('#vehicles-list').append(vehicleHtml);
                    });
            },
            error: function (xhr, status, error) {
                // Handle the error case
                console.log(error);
            }
        });
    });
});

</script>
@endsection