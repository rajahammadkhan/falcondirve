@extends('layouts.master')

@section('top-styles')
@endsection

@section('content')  

<section class="contact-section bd-bottom padding">
    <div class="map"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="contact-details-wrap">
                    <div class="contact-title">
                        <h2>Have Any <span>Questions?</span></h2>
                        <p>Get in touch to discuss your employee wellbeing needs today. Please give us a call, drop us an email or fill out the contact form.</p>
                    </div>
                    <ul class="contact-details">
                        <li><i class="fas fa-map-marker-alt"></i>Our Address <br> {{getSettings('address')}}</li>
                        <li><i class="fas fa-envelope"></i>Email Address <br> <a href="mailto:{{getSettings('site_email')}}" style="display: contents;color: #666;">{{getSettings('site_email')}}</a></li>

                        <?php
                            $contactNo = getSettings('contact_no');
                            $formattedNumber = str_replace(' ', '', $contactNo);
                        ?>
                        <li><i class="fas fa-phone"></i>Contact Us <br> <a href="tel:<?php echo $formattedNumber; ?>" style="display: contents;color: #666;"> {{getSettings('contact_no')}}</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6">
                @if(isset($success))
                    <div class="row success-msg mb-10" id="aler">
                      <div class="col-md-12" style="background: #b4822c;border-radius: 10px;">
                        <center>  
                          <h3 class="text-center" style="font-size: 27px; color: white; font-weight: 900;">THANK YOU!</h3>
                            <h5 class="text-center" style="font-size: 22px; font-weight: 700;color: white;">{{$success}}</h5>
                        </center>
                          
                      </div>
                    </div>
                @endif
                <div class="contact-form">
                    <form id='contact-form' action="{{route('send.message')}}" method="post" name="contactform" class="form-horizontal">
                    @csrf
                        <div class="contact-title">
                            <h2>Contact Us! <span></span></h2>
                        </div>
                        <div class="contact-form-group">
                            <div class="form-field">
                                <input type="text" id="firstname" name="fname" class="form-control" placeholder="First Name" required>
                            </div>
                            <div class="form-field">
                                <input type="text" id="lastname" name="lname" class="form-control" placeholder="Last Name" required>
                            </div>
                            <div class="form-field">
                                <input type="email" id="email" name="email" class="form-control" placeholder="Email" required>
                            </div>
                            <div class="form-field">
                                <input type="text" id="phone" name="phone" class="form-control" placeholder="Phone Number" required>
                            </div>
                            <div class="form-field message">
                                <textarea id="message" name="comment" cols="30" rows="4" class="form-control" placeholder="Message" required></textarea>
                            </div>
                            <div class="form-field">
                                <button id="submit" class="default-btn" type="submit">Send Massage</button>
                            </div>
                        </div>
                        <div id="form-messages" class="alert" role="alert"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/.contact-section-->

<!-- <section class="branches-section bg-grey padding">
    <div class="container">
        <div class="row branches-lists">
            <div class="col-lg-3 col-sm-6 sm-padding">
                <div class="branches-list">
                    <h3>Sydney (Head Office)</h3>
                    <ul>
                        <li>1 Epping Road</li>
                        <li>North Ryde, NSW 2113</li>
                        <li><a href="#">+61 2 9870 7689</a></li>
                        <li><a href="#">email@example.com</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 sm-padding">
                <div class="branches-list">
                    <h3>Brisbane</h3>
                    <ul>
                        <li>1 Epping Road</li>
                        <li>North Ryde, NSW 2113</li>
                        <li><a href="#">+61 2 9870 7689</a></li>
                        <li><a href="#">email@example.com</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 sm-padding">
                <div class="branches-list">
                    <h3>Hobart</h3>
                    <ul>
                        <li>1 Epping Road</li>
                        <li>North Ryde, NSW 2113</li>
                        <li><a href="#">+61 2 9870 7689</a></li>
                        <li><a href="#">email@example.com</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 sm-padding">
                <div class="branches-list">
                    <h3>Melbourne</h3>
                    <ul>
                        <li>1 Epping Road</li>
                        <li>North Ryde, NSW 2113</li>
                        <li><a href="#">+61 2 9870 7689</a></li>
                        <li><a href="#">email@example.com</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section> -->
<!--/.branches-section-->
<div class="map-wrapper pt-90" id="location">
    <iframe src="{!! getSettings('google_location') !!}" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
</div><!-- /#google-map -->

@endsection

@section('bottom-mid-scripts')
@endsection

@section('bottom-bot-scripts')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
      $("#aler").show();
        setTimeout(function() { $("#aler").hide(); }, 3000);
</script>
@endsection