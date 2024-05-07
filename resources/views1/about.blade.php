@extends('layouts.master')

@section('top-styles')
<style>
    #upside{
        margin-top: -140px;
    }
</style>
@endsection

@section('content')  
<section class="page-header">
        <div class="page-header-shape"></div>
        <div class="container">
            <div class="page-header-info">
                <h4>About Us</h4>
                <h2>Use Falcon Drive Car Rental<br><span>Experience the Freedom <br>of the Open Road.</span></h2>
            </div>
        </div>
    </section>
    <!--/.page-header-->

    <section class="about-section" style="padding-top: 50px;">
        <div class="container">
            <div class="row">
                <div class="col-md-6" style="padding-left: 30px; padding-right: 30px;">
                    <div class="backgournd_left"></div>
                    <img src="{{url('')}}/assets/img/all-cars-images/cars-details-page/Chevrolet/Chevrolet-Malibu-2023/01.jpg" alt="" class="back_image">
                    <div class="backgournd_right"></div>
                    {{-- <div class="about-img">
                        <img class="about-img1 wow fade-in-left" data-wow-delay="200ms" src="{{url('')}}/assets/img/about-1.png" alt="img">
                        <img class="about-img2 wow fade-in-bottom" data-wow-delay="400ms" src="{{url('')}}/assets/img/about-2.png" alt="img">
                        <figure class="round-text"><img src="{{url('')}}/assets/img/experience-text-round.png" alt="img"></figure> 
                    </div> --}}
                </div>
                <div class="col-md-6" style="padding-left: 30px; padding-right: 30px;">
                    <div class="section-heading mb-40 wow fade-in-right" data-wow-delay="200ms">
                        <h4><span></span>About Our Company</h4>
                        <h2>Falcon Drive Car Rental</h2>
                        <p>Welcome to Falcon drive Car Rental, the leading automobile rental service provider in the UAE. With a significant focus on customer service and a diverse fleet of high-quality automobiles. We strive to provide both locals and visitors with a smooth and enjoyable car rental experience. Our objective at Falcon Drive is to exceed client expectations by delivering great economical car rental services suited to individual needs. <button id="show" onclick="showmore()" data-animation="fade-in-bottom"
                            data-delay="0.9s">Read More...</button> <span id="contentshow" style="display: none;"> Our ambition is to become the most cost-effective automobile rental company in the UAE. Offering a diverse choice of vehicles at low costs while maintaining the best levels of quality, dependability, and customer service. <br> We recognize that each customer has specific wants, which is why we offer a broad fleet of well-maintained cars to meet a variety of needs and tastes. Whether you want a small motor for managing city streets. A large SUV for a family outing, or a beautiful sedan for a special occasion. We have just the vehicle for you. Our fleet includes the most recent models from well-known brands, assuring a comfortable and safe travel. <br> Renting a car should be simple and convenient, which is why we have simplified the booking procedure at Falcon Drive. You may quickly enter your pickup location, rental dates, and select the right car that matches your needs using our secure online platform. We provide customizable rental durations to meet your needs, whether they be for a few hours, a day, a week, or even longer. <br> Falcon Drive prioritizes customer happiness, and our committed team of professionals is available to provide personalized advice and direction throughout your car rental journey. <button id="hide" onclick="hidemore()"  data-animation="fade-in-bottom"
                            data-delay="0.9s">Read Less...</button></span></p>
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
                            <h2><span>Call To Rent A Car</span><a href="tel:+971 54 323 7049">+971 54 323 7049</a></h2>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!--/.about-section-->

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="feature-wrap-2" style="margin-top: -270px;" id="service-section-1">
                    <div class="section-heading mb-30 wow fade-in-right" data-wow-delay="400ms">
                        <h2 style="text-align: center">Our Mission</h2>
                    </div>
                    <!--/.section-heading-->
                                    <div class="feature-content-2 wow fade-in-left" data-wow-delay="500ms">
                                        <p>At Falcon Drive car rental, our mission is to provide exceptional car rental services in Dubai, offering our customers a seamless and memorable experience. We strive to be the preferred choice for individuals, tourists, and businesses seeking reliable and comfortable transportation solutions. With a commitment to excellence, we aim to exceed expectations, ensuring utmost satisfaction and building long-lasting relationships with our valued clients.</p>
                                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="feature-wrap-2" id="upside">
                    <div class="section-heading mb-30 wow fade-in-right" data-wow-delay="400ms">
                        <h2 style="text-align: center">Our Vision</h2>
                    </div>
                    <!--/.section-heading-->
                                    <div class="feature-content-2 wow fade-in-left" data-wow-delay="500ms">
                                        <p>Our vision at Falcon Drive car Rental is to be the leading car rental provider in Dubai, setting new standards of quality and customer service in the industry. We envision a future where our brand is synonymous with reliability, convenience, and trust. Through continuous innovation, extensive vehicle selection, and personalized support, we aspire to make every journey remarkable for our customers. With a focus on sustainability and technological advancements. We aim to contribute to the growth and development of the transportation sector in Dubai while leaving a positive impact on the environment.</p>
                                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="service-section bg-grey padding" style="padding-bottom: 50px;">
        <div class="bg-half"></div>
        <div class="container">
            <div class="section-heading text-center mb-40 wow fade-in-bottom" data-wow-delay="200ms">
                <h4><span></span>What We Offer</h4>
                <h2 class="white">Start your journey with<br>Falcon Drive Car Rental</h2>
                {{-- <p>We successfully cope with tasks of varying complexity, provide long-term <br>guarantees and regularly
                    master new technologies.</p> --}}
            </div>
            <!--/.section-heading-->
            <div class="swiper-outside">
                <div class="service-carousel">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="service-item wow fade-in-bottom" data-wow-delay="200ms" id="service-item2">
                                <div class="service-thumb">
                                    <img src="{{url('')}}/assets/img/service-1.jpg" alt="img">
                                    <div class="service-shape-wrap">
                                        <div class="service-shape"></div>
                                    </div>
                                    <div class="service-car"><img src="{{url('')}}/assets/img/car-2-demo.png" alt="car"></div>
                                </div>
                                <div class="service-content">
                                    <h3><a href="#">Lowest Prices in Dubai</a></h3>
                                    <p>We are proud of the fact that we offer one of the lowest rental prices in the market. </p>
                                    {{-- <a class="read-more" href="#">Read More</a> --}}
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
                                    <h3><a href="#">First Class Service</a></h3>
                                    <p>We Offer Services, Easy Booking And Instant Delivery</p>
                                    {{-- <a class="read-more" href="#">Read More</a> --}}
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
                                    <h3><a href="#">Pick & Drop</a></h3>
                                    <p>Free Pickup And Delivery Across Dubai</p>
                                    {{-- <a class="read-more" href="#">Read More</a> --}}
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
                                    <h3><a href="#">Car Support</a></h3>
                                    <p>24/7 Roadside Assistance</p>
                                    {{-- <a class="read-more" href="#">Read More</a> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div><!-- Carousel Dots -->
                </div>
                <!-- Carousel Arrows -->
                {{-- <div class="swiper-nav swiper-next"><i class="las la-long-arrow-alt-right"></i></div>
                <div class="swiper-nav swiper-prev"><i class="las la-long-arrow-alt-left"></i></div> --}}
            </div>
        </div>
    </section>
    <!--/.service-section-->
    <section class="why-choose-us">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="feature-wrap-2">
                        <div class="section-heading mb-30 wow fade-in-right" data-wow-delay="200ms">
                            <h4 style="text-align: center; display: block;"><span></span>Why Choose Us</h4>
                            <h2 style="text-align: center">Why Ride With Falcon Drive Car Rental?</h2>
                            <p style="text-align: center">At Falcon Drive Car Rental, we aim to provide the highest quality service to ensure our customers travel safely and smoothly. <br>We offer lower rates and give you the option to choose from the variety of different vechicles we have to offer. <br>Our dedicated team is always ready to assist you and fulfil your requirements.</p>
                        </div>
                        <!--/.section-heading-->
                        <ul class="ridek-features">
                            <div class="row">
                                <div class="col-lg-6">
                                    <li class="wow fade-in-left" data-wow-delay="300ms">
                                        {{-- <div class="feature-icon">
                                            <i class="las la-gem"></i>
                                        </div> --}}
                                        <div class="feature-content-2">
                                            <h3>Extensive Vehicle Selection:</h3>
                                            <p>We understand that every customer has unique preferences and requirements. That's why we offer a diverse fleet of vehicles, including sedans, SUVs, luxury cars, and more. Whether you need a compact car for city driving or a spacious SUV for a family vacation, we have the perfect vehicle to meet your needs.</p>
                                        </div>
                                    </li>
                                </div>
                                <div class="col-lg-6">
                                    <li class="wow fade-in-right" data-wow-delay="300ms">
                                        {{-- <div class="feature-icon">
                                            <i class="las la-taxi"></i>
                                        </div> --}}
                                        <div class="feature-content-2">
                                            <h3>Well-Maintained Fleet:</h3>
                                            <p>we take pride in offering well-maintained vehicles that are in excellent condition. Our fleet undergoes regular maintenance and inspections to ensure optimal performance, safety, and reliability. You can trust that our vehicles are in top-notch condition, providing you with a smooth and enjoyable driving experience.</p>
                                        </div>
                                    </li>
                                </div>
                                <div class="col-lg-6">
                                    <li class="wow fade-in-left" data-wow-delay="400ms">
                                        {{-- <div class="feature-icon">
                                            <i class="las la-tachometer-alt"></i>
                                        </div> --}}
                                        <div class="feature-content-2">
                                            <h3>Competitive Rates:</h3>
                                            <p>We believe that quality car rentals should be accessible to everyone. That's why we offer competitive rates that provide great value for your money. Whether you need a car for a day, a week, or a month, our pricing plans are designed to fit your budget and offer flexibility.</p>
                                        </div>
                                    </li>
                                </div>
                                
                                <div class="col-lg-6">
                                    <li class="wow fade-in-right" data-wow-delay="500ms">
                                        {{-- <div class="feature-icon">
                                            <i class="las la-tachometer-alt"></i>
                                        </div> --}}
                                        <div class="feature-content-2">
                                            <h3>Excellent Customer Service:</h3>
                                            <p>We prioritize customer satisfaction. Our friendly and professional staff is committed to providing exceptional service and addressing your queries and concerns promptly. We strive to exceed your expectations and make your car rental experience hassle-free and enjoyable.</p>
                                        </div>
                                    </li>
                                </div>
                                <div class="col-lg-6">
                                    <li class="wow fade-in-left" data-wow-delay="500ms">
                                        {{-- <div class="feature-icon">
                                            <i class="las la-tachometer-alt"></i>
                                        </div> --}}
                                        <div class="feature-content-2">
                                            <h3>Flexible Rental Options:</h3>
                                            <p>We understand that plans can change, and flexibility is crucial. That's why we offer flexible rental options, including daily, weekly, and monthly rates. Whether you need a car for a short trip or an extended stay, we can accommodate your rental duration and offer customized solutions to meet your specific needs.</p>
                                        </div>
                                    </li>
                                </div>
                                <div class="col-lg-6">
                                    <li class="wow fade-in-right" data-wow-delay="600ms">
                                        {{-- <div class="feature-icon">
                                            <i class="las la-tachometer-alt"></i>
                                        </div> --}}
                                        <div class="feature-content-2">
                                            <h3>Convenience and Reliability:</h3>
                                            <p>We believe in providing convenience at every step of the rental process. From our easy online booking system to our flexible pickup and drop-off locations, we strive to make renting a car a hassle-free experience. Additionally, our reliable fleet and dedicated support team ensure that you can rely on us to deliver a seamless and stress-free rental experience.</p>
                                        </div>
                                    </li>
                                </div>
                                <div class="col-lg-6">
                                    <li class="wow fade-in-left" data-wow-delay="400ms">
                                        {{-- <div class="feature-icon">
                                            <i class="las la-tachometer-alt"></i>
                                        </div> --}}
                                        <div class="feature-content-2">
                                            <h3>Easy Booking Process:</h3>
                                            <p>We understand that convenience is key when it comes to car rentals. Our user-friendly online platform allows you to browse our fleet, choose your desired vehicle, and make a reservation with just a few clicks. We also have a dedicated customer support team that is ready to assist you throughout the booking process, ensuring a seamless experience from start to finish.</p>
                                        </div>
                                    </li>
                                </div>
                                <div class="col-lg-6">
                                    <li class="wow fade-in-left" data-wow-delay="400ms">
                                        {{-- <div class="feature-icon">
                                            <i class="las la-tachometer-alt"></i>
                                        </div> --}}
                                        <div class="feature-content-2">
                                            <h3>24/7 Roadside Assistance:</h3>
                                            <p>With Falcon Drive Car Rental 24/7 Roadside Assistance you can request and receive Roadside Assistance no matter where you are, it lets you drive with complete peace of mind, We take pride in our commitment to keep our customers happy.</p>
                                        </div>
                                    </li>
                                </div>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="testimonial-section bg-grey">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="section-heading mb-10">
                        <h4><span></span>Clients Testimonial</h4>
                        <h2>Falcon Passenger Reviews...</h2>
                        <!--<p>We successfully cope with tasks of varying complexity, provide long-term guarantees and regularly master technologies.</p>-->
                    </div>
                    <div class="swiper-outside testi-pagination">
                        <div class="testimonial-carousel">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide" id="oneline">
                                    <div class="testi-item">
                                        <div class="quote-icon"><i class="las la-quote-right"></i></div>
                                        <p>Good to have transportation available in places and times it is otherwise hard to find, but the app has always been a bit difficult to use especially how it works or doesnt with large font phone settings.</p>
                                        <div class="testi-author">
                                            <div class="author-thumb"><img src="{{url('')}}/assets/img/comment-1.png" alt="author"></div>
                                            <div class="author-info">
                                                <h3>Eredrik Johanson <span>Financial .INC</span></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide" id="twoline">
                                    <div class="testi-item">
                                        <div class="quote-icon"><i class="las la-quote-right"></i></div>
                                        <p>Good to have transportation available in places and times it is otherwise hard to find, but the app has always been a bit difficult to use especially how it works or doesnt with large font phone settings.</p>
                                        <div class="testi-author">
                                            <div class="author-thumb"><img src="{{url('')}}/assets/img/comment-1.png" alt="author"></div>
                                            <div class="author-info">
                                                <h3>Eredrik Johanson <span>Financial .INC</span></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide" id="threeline">
                                    <div class="testi-item">
                                        <div class="quote-icon"><i class="las la-quote-right"></i></div>
                                        <p>Good to have transportation available in places and times it is otherwise hard to find, but the app has always been a bit difficult to use especially how it works or doesnt with large font phone settings.</p>
                                        <div class="testi-author">
                                            <div class="author-thumb"><img src="{{url('')}}/assets/img/comment-1.png" alt="author"></div>
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
            </div>
        </div>
    </section>
    <!--/.testimonial-section-->

    <section class="cta-section padding">
        <div class="cta-men"></div>
        <div class="container">
            <div class="cta-content">
                <h2>Call Us Now <span>Book Your Car</span> <br> For Your Next Ride!</h2>
                <!--<p>We successfully cope with tasks of varying complexity,<br>guarantees and regularly master new technologies.</p>-->
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
                <!--<p>We successfully cope with tasks of varying complexity, provide long-term <br>guarantees and regularly-->
                <!--    master new technologies.</p>-->
            </div>
            <!--/.section-heading-->
            <div class="row grid-post">
                <div class="col-lg-4 col-md-6 padding-15">
                    <div class="post-card">
                        <div class="post-thumb">
                            <img src="{{url('')}}/assets/img/all-cars-images/cars-details-page/Chevrolet/Chevrolet-Malibu-2023/01.jpg" alt="post">
                        </div>
                        <div class="post-content-wrap">
                            <ul class="post-meta">
                                <li><i class="las la-calendar"></i>Jan 01 2022</li>
                                <li><i class="las la-user"></i>Elliot Alderson</li>
                            </ul>
                            <div class="post-content">
                                <!-- <h3>
                                    <a href="blog-details.html" class="hover">How to start initiating an startup in few
                                        days.</a>
                                </h3>
                                <p>Financial experts support or help you to to find out which way you can raise your
                                    funds more...</p> -->
                                <a href="{{route('blog-detail')}}" class="read-more">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 padding-15">
                    <div class="post-card">
                        <div class="post-thumb">
                            <img src="{{url('')}}/assets/img/all-cars-images/cars-details-page/Chevrolet/Chevrolet-Malibu-2023/05.jpg" alt="post">
                        </div>
                        <div class="post-content-wrap">
                            <ul class="post-meta">
                                <li><i class="las la-calendar"></i>Jan 01 2022</li>
                                <li><i class="las la-user"></i>Elliot Alderson</li>
                            </ul>
                            <div class="post-content">
                                <!-- <h3>
                                    <a href="blog-details.html">Financial experts support help you to find out.</a>
                                </h3>
                                <p>Financial experts support or help you to to find out which way you can raise your
                                    funds more...</p> -->
                                <a href="{{route('blog-detail')}}" class="read-more">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 padding-15">
                    <div class="post-card">
                        <div class="post-thumb">
                            <img src="{{url('')}}/assets/img/all-cars-images/cars-details-page/Chevrolet/Chevrolet-Malibu-2023/06.jpg" alt="post">
                        </div>
                        <div class="post-content-wrap">
                            <ul class="post-meta">
                                <li><i class="las la-calendar"></i>Jan 01 2022</li>
                                <li><i class="las la-user"></i>Elliot Alderson</li>
                            </ul>
                            <div class="post-content">
                                <!-- <h3>
                                    <a href="blog-details.html">Innovative business all over the world.</a>
                                </h3>
                                <p>Financial experts support or help you to to find out which way you can raise your
                                    funds more...</p> -->
                                <a href="{{route('blog-detail')}}" class="read-more">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/.blog-section-->
@endsection

@section('bottom-mid-scripts')

@endsection

@section('bottom-bot-scripts')
@endsection