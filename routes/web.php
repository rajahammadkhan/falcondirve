<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AllVehicleController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ContactUsController;
use App\Http\Controllers\BlogController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// Route::get('/about-us', function () {
//     return view('about');
// })->name('about-us');


Route::get('/about-us',
    [BlogController::class, 'aboutindex']
)->name('about-us');


Route::get('/blog-detail', function () {
    return view('blog-detail');
})->name('blog-detail');

Route::get('/our-fleet', function () {
    return view('our-fleet');
})->name('our-fleet');

Route::get('/our-fleet', function () {
    return view('our-fleet');
})->name('our-fleet');

Route::get('/our-fleet-detail', function () {
    return view('our-fleet-detail');
})->name('our-fleet-detail');

Route::get('/faqs', function () {
    return view('faqs');
})->name('faqs');

Route::get('/terms-and-conditions', function () {
    return view('terms-and-conditions');
})->name('terms-and-conditions');

Route::get('/privacy-policy', function () {
    return view('privacy-policy');
})->name('privacy-policy');


//development
Route::get('/',
    [HomeController::class, 'index']
)->name('home');

Route::post('/vehicles/search',
    [AllVehicleController::class, 'search']
)->name('vehicles.search');

Route::post('/homevehicles/search',
    [AllVehicleController::class, 'homesearch']
)->name('homevehicles.search');

Route::post('/vehicles/search/post',
    [AllVehicleController::class, 'post']
)->name('vehicles.form.post');


Route::get('/all-vehicles',
    [AllVehicleController::class, 'index']
)->name('all_vehicles');

Route::get('/all-brands',
    [AllVehicleController::class, 'index']
)->name('all_brands');

Route::get('/vehicle/{slug}',
    [AllVehicleController::class, 'detail']
)->name('vehicle_detail');

Route::get('/all-vehicles/{slug}',
    [AllVehicleController::class, 'getVehicleAgainstBrand']
)->name('get_vehicles_against_brand');

Route::get('/get-selected-vehicles-against-brand', [AllVehicleController::class, 'getSelectedVehiclesAgainstBrand'])->name('get_selected_vehicles_against_brand');


Route::get('/all-vehicles-type/{type}',
    [AllVehicleController::class, 'getVehicleAgainstType']
)->name('get_vehicles_against_type');

Route::get('search', [AllVehicleController::class, 'autosearch'])->name('search');
Route::get('get-price', [AllVehicleController::class, 'getPrice'])->name('get_price');

Route::post('/all-vehicles/booking-form/submit',
    [AllVehicleController::class, 'store']
)->name('booking_form.store');

Route::get('/blog',
    [BlogController::class, 'index']
)->name('blog');

Route::get('/blogs/{slug}',
    [BlogController::class, 'detail']
)->name('blog_detail');


Route::get('/contact-us',
    [ContactUsController::class, 'index']
)->name('contact');

Route::post('/send', [ContactUsController::class, 'store'])->name('send.message');