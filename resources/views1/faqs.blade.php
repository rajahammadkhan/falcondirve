@extends('layouts.master')

@section('top-styles')
@endsection

@section('content') 

<section class="page-header">
    <div class="page-header-shape"></div>
    <div class="container">
        <div class="page-header-info">
            <h4>Help & Faq's</h4>
            <h2>Frequently Asked <br><span>Questions</span></h2>
        </div>
    </div>
</section>
<!--/.page-header-->

<section class="blog-section blog-page bg-grey padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 sm-padding">
                <div class="accordion faq-accordion" id="faq-accordion">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading17">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse17" aria-expanded="true" aria-controls="collapse17"> What documents do you need to rent a car?</button>
                        </h2>
                        <div id="collapse17" class="accordion-collapse collapse show" aria-labelledby="heading17" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <div class="row">
                                    <div class="col-lg-6">
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
                                    <div class="col-lg-6">
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
                                    <div class="col-lg-12">
                                        <p style="text-align: center; margin-top: 10px;">Visitors from European and OCC countries can drive using their home country's driving license.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">What is the minimum age requirement to rent a car?</button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>Hirers must be age 22 years and above and should hold a UAE License for more than 6 months. New license holders are acceptable if backed by their home country license for more than 1 year.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">What is the minimal rental period?</button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>Falcon Drive Car Rental, the minimum rental period is 1 day for any car.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">What is our fuel policy?</button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>The hirer should return the car at the same fuel level received. If not, the hirer will be charged the cost of fuel plus a service charge.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingFour">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour"> Is it possible to extend the rental period beyond the initial booking? </button>
                        </h2>
                        <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>Absolutely! Rental extensions can be made within the rental period at any time. 
                                    Contact us at +971543237049.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingFive">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive"> Can someone other than myself drive my rented car?</button>
                        </h2>
                        <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>No, only the customer who has submitted their valid documents and details is eligible to drive. However, more drivers can be added if they submit the required documents and pay the registration fee.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingSix">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix"> What is our Salik (toll) policy?</button>
                        </h2>
                        <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>All our vehicles are installed with a Salik tag. Each crossing at the Salik toll gate will incur a 5 AED charge.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingSeven">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">What to do in the event of a car accident?</button>
                        </h2>
                        <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>In the unfortunate event of an accident, the customer is required to not move the car from the point of accident or damage, except in the cases where there is only minimal damage or if the vehicle is causing a traffic obstruction. Contact the police as soon as possible and remain with the car till they arrive. The customer is required to provide us with a police report. If required, we will provide the hirer with a replacement vehicle.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingEight">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">What should you do in the event of a car breakdown?</button>
                        </h2>
                        <div id="collapseEight" class="accordion-collapse collapse" aria-labelledby="headingEight" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>If your rented car suffers a breakdown, at Falcon Drive Car Rental, we offer 24/7 roadside assistance. 
                                    Reach out to us using our 24hr no: +971543237049.</p>
                                    <p>if required, we will provide the hirer with a replacement vehicle.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingNine">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine"> What do you do if your vehicle gets stolen?</button>
                        </h2>
                        <div id="collapseNine" class="accordion-collapse collapse" aria-labelledby="headingNine" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>Immediately report the theft to the police, obtain a copy of the police report and then notify Falcon Drive Car Rental.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingTen">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen"> What should you do if you receive any traffic offense or parking violation?</button>
                        </h2>
                        <div id="collapseTen" class="accordion-collapse collapse" aria-labelledby="headingTen" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>All fines and offenses are processed by our team, which proceeded by sending the invoice and cost to the customer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading11">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse11" aria-expanded="false" aria-controls="collapse11">What is your policy on traffic violations?</button>
                        </h2>
                        <div id="collapse11" class="accordion-collapse collapse" aria-labelledby="heading11" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>Drivers are expected to abide by the traffic rules and regulations. For every traffic fine incurred you will be charged a fee of 10% to cover administration charges as per the contract.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading12">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse12" aria-expanded="false" aria-controls="collapse12">What is our off-road policy?</button>
                        </h2>
                        <div id="collapse12" class="accordion-collapse collapse" aria-labelledby="heading12" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>All our vehicles are to only be driven on regularly maintained roads, off-road use is a violation of the rental agreement.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading13">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse13" aria-expanded="false" aria-controls="collapse13">What is our policy on hit and run?</button>
                        </h2>
                        <div id="collapse13" class="accordion-collapse collapse" aria-labelledby="heading13" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>In the case of a hit and run, the customer is liable to pay insurance excess as per the contract. A police report is mandatory.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading14">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse14" aria-expanded="false" aria-controls="collapse14">What is Insurance Excess?</button>
                        </h2>
                        <div id="collapse14" class="accordion-collapse collapse" aria-labelledby="heading14" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>In an event of an accident where the customer is at fault he/she needs to pay Insurance Excess as per Hire Agreement. A valid police report is mandatory.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading15">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse15" aria-expanded="false" aria-controls="collapse15">Do you offer delivery and pick-up for your vehicle?</button>
                        </h2>
                        <div id="collapse15" class="accordion-collapse collapse" aria-labelledby="heading15" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>For our customer's convenience we offer vehicle delivery and pick-up services across Dubai, for an additional fee.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading16">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse16" aria-expanded="false" aria-controls="collapse16">What should I know about parking availability and procedures in the UAE?</button>
                        </h2>
                        <div id="collapse16" class="accordion-collapse collapse" aria-labelledby="heading16" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>Parking in UAE is readily available. Parking along the roadside is paid parking with parking meters installed all over UAE. Customers are expected to pay all parking-related charges by themselves during the rental period.</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading23">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse23" aria-expanded="false" aria-controls="collapse23">What should I do when my vehicle needs servicing and maintenance?</button>
                        </h2>
                        <div id="collapse23" class="accordion-collapse collapse" aria-labelledby="heading23" data-bs-parent="#faq-accordion">
                            <div class="accordion-body">
                                <p>Please inform Falcon Drive Car Rental customer service representatives. They will book your vehicle in for service and arrange a replacement vehicle.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <h2 style="text-align: center; margin-top: 50px;">Do You Have Any Questions?</h2>
                <p style="text-align: center;">Feel free to get in contact and we will be happy to answer any questions. For more details contact us on <a href="tel:+971543237049"> +971 54 323 7049</a></p>
            </div>
            <!--Sidebar-->
        </div>
    </div>
</section>
<!--Blog Section-->

@endsection

@section('bottom-mid-scripts')
@endsection

@section('bottom-bot-scripts')
@endsection