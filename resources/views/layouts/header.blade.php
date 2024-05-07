<header class="main-header">
    <div class="mid-header">
        <div class="container">
            <div class="mid-header-wrap">
                <div class="site-logo">
                    <a href="{{ route('home') }}"><img src="{{config('falcondrive.file_path').getSettings('site_logo_header')}}" alt="{{getSettings('site_name')}}"></a>
                </div><!--/.site-logo-->
                <ul class="header-info">
                    <li>
                        <div class="header-info-icon">
                            <i class="las la-phone-volume"></i>
                        </div>
                        <div class="header-info-text">
                            <?php
                                $contactNo = getSettings('contact_no');
                                $formattedNumber = str_replace(' ', '', $contactNo);
                            ?>
                            <h3 style="font-size: 16px;"><span>Call us now</span><a href="tel:<?php echo $formattedNumber; ?>"> {{getSettings('contact_no')}}</a></h3>
                        </div>
                    </li>
                    <li>
                        <div class="header-info-icon">
                            <i class="las la-envelope-open"></i>
                        </div>
                        <div class="header-info-text">
                            <h3 style="font-size: 16px;"><span>Email now</span> <a href="mailto:{{getSettings('site_email')}}" style="text-transform: none;">{{getSettings('site_email')}}</a></h3>
                        </div>
                    </li>
                    <li>
                        <div class="header-info-icon">
                            <i class="las la-map-marked-alt"></i>
                        </div>
                        <div class="header-info-text">
                            <h3 style="font-size: 16px;"><a href="{{route('contact')}}/#location"><span>Address</span>City Walk, Dubai</a></h3>
                        </div>
                    </li>
                </ul>
                <div class="side_buttons" style="display: flex; gap: 7px;">
                <span style="height: 40px; width: 40px; background: green; border-radius: 25px; justify-content: center; display: flex;">
                    <a class="custom_btn_header" href="https://wa.me/<?php echo $formattedNumber; ?>"><i class="lab la-whatsapp"></i></a>
                </span>
                
                <span style="height: 40px; width: 40px; background: #d7b43c; border-radius: 25px; justify-content: center; display: flex;">
                    <a class="custom_btn_header2" href="tel:<?php echo $formattedNumber; ?>" title="Call Now"><i class="las la-phone-volume"></i></a>
                </span>
                </div>
            </div>
        </div>
    </div><!--/.mid-header-->
    <div class="nav-menu-wrapper">
        <div class="container">
            <div class="nav-menu-inner">
                <div class="site-logo">
                    <a href="{{ route('home') }}"><img src="{{config('falcondrive.file_path').getSettings('site_logo_header')}}" alt="{{getSettings('site_name')}}"></a>
                </div><!--/.site-logo-->
                <div class="header-menu-wrap">
                    <ul class="nav-menu">
                        <li>
                            <a href="{{ route('home') }}">Home</a>
                        </li>
                        <li>
                            <a href="{{ route('about-us') }}">About Us</a>
                        </li>
                        <li>
                            <a href="{{route('all_vehicles')}}">All Cars</a>
                        </li>
                        <li class="dropdown">
                            <a href="javascript:void(0)">Brands &nbsp;<i class="fa fa-chevron-down mt-2"></i></a>
                            <ul class="dropdown_menu">
                                <div class="left_menu">
                                    @foreach(getVehicleBrands() as $brand)
                                        <li>
                                            
                                            <a href="{{ route('get_vehicles_against_brand', $brand->slug) }}"><img src="{{config('falcondrive.file_path').$brand->color_logo}}" alt="{{ $brand->name }}"> {{ $brand->name }}</a>
                                        </li>
                                    @endforeach
                                </div>
                            </ul>
                        </li>
                        <li>
                            <a href="{{route('blog')}}">Blog</a>
                        </li>
                        <li><a href="{{route('contact')}}">Contact Us</a></li>
                        <li><a href="{{route('faqs')}}">FAQ's</a></li>
                    </ul>
                </div>
                <div class="menu-right-item">
                    <div class="sidebox-icon dl-sidebox-icon">
                        <i class="las la-bars"></i>
                    </div>
                    <a href="{{route('contact')}}" class="menu-btn">Book Now</a>
                </div>
                <div class="mobile-menu-icon">
                    <div class="burger-menu">
                        <div class="line-menu line-half first-line"></div>
                        <div class="line-menu"></div>
                        <div class="line-menu line-half last-line"></div>
                    </div>
                </div>
            </div>
             <div class="row">
                    <div class="col-lg-12">
                        <div class="custom_mobile_btns">
                            <a href="tel:<?php echo $formattedNumber; ?>" class="default-btn" style="background: #ff0000; padding: 0 20px; height: 34px; font-size: 12px;"><i class="las la-phone" style="margin-right: 5px;"></i>Call Now</a>
                            <a href="https://wa.me/<?php echo $formattedNumber; ?>" class="default-btn" style="background: green; padding: 0 20px; height: 34px; font-size: 12px;"><i class="lab la-whatsapp" style="margin-right: 5px;"></i>Chat Now</a>
                        </div>
                        <ul class="custom_ul">
                            <li><a href="{{getSettings('social_facebook')}}"><img src="{{url('')}}/assets/img/all-social-media-icons/facebook_Icons.png" alt="" class="custom_cions"></a></li>
                            <li><a href="{{getSettings('social_twitter')}}"><img src="{{url('')}}/assets/img/all-social-media-icons/twitter_Icons.png" alt="" class="custom_cions"></a></li>
                            <li><a href="{{getSettings('social_instagram')}}"><img src="{{url('')}}/assets/img/all-social-media-icons/insta_Icons.png" alt="" class="custom_cions"></a></li>
                            <li><a href="{{getSettings('social_youtube')}}"><img src="{{url('')}}/assets/img/all-social-media-icons/Youtube_Icons.png" alt="" class="custom_cions"></a></li>
                        </ul>
                    </div>
            </div>
        </div>
    </div>
    <!--/.nav-menu-->
</header>
<!--/.main-header-->

<div id="popup-sidebox" class="popup-sidebox">
    <div class="sidebox-content">
        <div class="site-logo">
            <a href="{{ route('home') }}"><img src="{{config('falcondrive.file_path').getSettings('site_logo_footer')}}" alt="{{getSettings('site_name')}}"></a>
        </div>
        <p>Falcon Drive Car Rental prioritizes customer happiness, and our committed team of professionals  available to provide personalized advice and direction throughout your car rental journey.</p>
        <ul class="sidebox-list">
            <li class="call"><span>Call for ride:</span><a href="tel:<?php echo $formattedNumber; ?>" style="color: #d7b43c"> {{getSettings('contact_no')}}</a></li>
            <li>
                <span>You can find us at:</span>{{getSettings('address')}}
            </li>
            <li><span>Email now:</span><a href="mailto:{{getSettings('site_email')}}" style="text-transform: none; color: white">{{getSettings('site_email')}}</a></li>
        </ul>
    </div>
</div>
<!--/.popup-sidebox-->
<div id="sidebox-overlay"></div>