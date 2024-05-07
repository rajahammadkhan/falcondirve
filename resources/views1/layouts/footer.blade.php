
<footer class="footer-section">
    <div class="footer-top-wrap bg-grey">
        <div class="container">
            <div class="footer-top">
                <div class="row align-items-end">
                    <div class="col-lg-8">
                        <div class="brand">
                            <a class="footer-logo" href="{{ route('home') }}" id="footer-logo"><img src="{{config('falcondrive.file_path').getSettings('site_logo_footer')}}" alt="{{getSettings('site_name')}}"></a>
                            <p>{{getSettings('footer_about')}}</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="footer-call">
                            <i class="las la-phone-volume"></i>
                            <?php
                                $contactNo = getSettings('contact_no');
                                $formattedNumber = str_replace(' ', '', $contactNo);
                            ?>
                            <p><span>Call To Rent A Car</span><a href="tel:<?php echo $formattedNumber; ?>"> {{getSettings('contact_no')}}</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/.footer-top-wrap-->
    <div class="footer-mid-wrap">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 sm-padding">
                    <div class="footer-item footer-list">
                        <div class="widget-title">
                            <h3>Usefull Links</h3>
                        </div>
                        <ul class="footer-links">
                            <li><a href="{{route('about-us')}}">About Us</a></li>
                            <li><a href="{{route('our-fleet')}}">Brands</a></li>
                            <li><a href="{{route('blog')}}">Blog</a></li>
                            <li><a href="{{route('faqs')}}">Faq's</a></li>
                            <li><a href="{{route('contact')}}">Contact Us</a></li>
                            <li><a href="{{route('privacy-policy')}}">Privacy and Policy</a></li>
                            <li><a href="{{route('terms-and-conditions')}}">Terms & Conditions</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 sm-padding">
                    <div class="footer-item">
                        <div class="widget-title">
                            <h3>Our Address</h3>
                        </div>
                        <ul class="footer-contact">
                            <li><span>Location:</span>{{getSettings('address')}}</li>
                            <li><span>Join Us:</span><a href="mailto:{{getSettings('site_email')}}" style="color: #ccc">{{getSettings('site_email')}}</a></li>
                            <li><span>Call Us:</span><a href="tel:<?php echo $formattedNumber; ?>" style="color: #fff; text-decoration: none;"> {{getSettings('contact_no')}}</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 sm-padding">
                    <div class="footer-item subscribe-wrap">
                        <div class="widget-title">
                            <h3>Our Office Timing</h3>
                        </div>
                        <p style="color: #fff;">Mon - Fri: 09:00 am to 06:00 pm</p>
                        <p style="color: #fff;">Sat: 10:00 am to 05:00 pm</p>

                        <div class="widget-title mt-5">
                            <h3>Our Social Media Links</h3>
                        </div>
                        <div class="social_links">
                            <a href="{{getSettings('social_facebook')}}"><img src="{{url('')}}/assets/img/all-social-media-icons/facebook_Icons.png" alt="" class="custaom-icons-f"></a>
                            <a href="{{getSettings('social_twitter')}}"><img src="{{url('')}}/assets/img/all-social-media-icons/twitter_Icons.png" alt="" class="custaom-icons-f"></a>
                            <a href="{{getSettings('social_instagram')}}"><img src="{{url('')}}/assets/img/all-social-media-icons/insta_Icons.png" alt="" class="custaom-icons-f"></a>
                            <a href="{{getSettings('social_youtube')}}"><img src="{{url('')}}/assets/img/all-social-media-icons/Youtube_Icons.png" alt="" class="custaom-icons-f"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 sm-padding">
                    <div class="footer-item subscribe-wrap">
                        <div class="widget-title">
                            <h3>Newsletter Signup</h3>
                        </div>
                        <form action="#" class="subscribe-form">
                            <input class="form-control" type="email" name="email" placeholder="Your Email"
                                required="">
                            <input type="hidden" name="action" value="mailchimpsubscribe">
                            <button class="submit">Subscribe Now</button>
                            <div class="clearfix"></div>
                            <div id="subscribe-result">
                                <div class="subscription-success"></div>
                                <div class="subscription-error"></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="running-taxi">
            <div class="taxi"></div>
            <div class="taxi-2"></div>
            <div class="taxi-3"></div>
        </div>
    </div>
    <!--/.footer-mid-wrap-->
    <div class="copyright-wrap">
        <div class="container">
            <p>© <span id="currentYear"></span> <span class="footer_name">Falcon Drive Car Rental</span> All Rights Reserved.</p>
        </div>
    </div>
    <!--/.copyright-wrap-->
</footer>
<!--/.footer-section-->