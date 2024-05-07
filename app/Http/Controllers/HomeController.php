<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Vehicle;
use App\Models\Blog;
use App\Models\Setting;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $data = [

            'audicount'        =>  Vehicle::where('brand_id','31')->count(),
            'nissancount'        =>  Vehicle::where('brand_id','44')->count(),
            'rangerovercount'        =>  Vehicle::where('brand_id','35')->count(),
            'mercedescount'        =>  Vehicle::where('brand_id','34')->count(),
            'lamborghinicount'        =>  Vehicle::where('brand_id','33')->count(),

            'brands'        =>  Brand::where('status',1)->where('logo','!=',null)->get(),
            'social_twitter' => Setting::where('key', 'social_twitter')->first(),
            'social_facebook' => Setting::where('key', 'social_facebook')->first(),
            'social_instagram' => Setting::where('key', 'social_instagram')->first(),
            'blogs' => Blog::limit(3)->orderByDesc('id')->get(),
            'featured_vehicles_Economy' => Vehicle::with(['features' => function($query){
                $query->where('is_featured',1);
            }])->where('status',1)->where('is_featured',1)->where('car_type_Economy','Economy')->limit(6)->get(),

            'featured_vehicles_SUV' => Vehicle::with(['features' => function($query){
                $query->where('is_featured',1);
            }])->where('status',1)->where('is_featured',1)->where('car_type_SUV','SUV')->limit(6)->get(),

            'featured_vehicles_Hatchback' => Vehicle::with(['features' => function($query){
                $query->where('is_featured',1);
            }])->where('status',1)->where('is_featured',1)->where('car_type_Hatchback','Hatchback')->limit(6)->get(),

            'featured_vehicles_Luxury' => Vehicle::with(['features' => function($query){
                $query->where('is_featured',1);
            }])->where('status',1)->where('is_featured',1)->where('car_type_Luxury','Luxury')->limit(6)->get(),

            'featured_vehicles1' => Vehicle::with(['features' => function($query){
                $query->where('is_featured',1);
            }])->where('status',1)->where('is_featured',1)->limit(3)->get(),
        ];

        return view('home',$data);
    }
}
