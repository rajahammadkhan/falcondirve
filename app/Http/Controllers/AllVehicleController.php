<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Brand;
use App\Models\Vehicle;
use App\Models\Booking;
use App\Mail\BookingMail;
use Illuminate\Support\Facades\Mail;
use DateTime;
use Illuminate\Support\Facades\View;

class AllVehicleController extends Controller
{
    public function index()
    {
        $brands = Brand::where('status', 1)->where('logo', '!=', null)->get();
        $data = [
            'brands'        =>  $brands,
            'vehicles' => Vehicle::with(['features' => function($query){
                $query->where('is_featured',1);
            }])->where('status',1)->get(),

            'type_Economy' => Vehicle::where('car_type_Economy', 'Economy')->count(),
            'type_SUV' => Vehicle::where('car_type_SUV', 'SUV')->count(),
            'type_Hatchback' => Vehicle::where('car_type_Hatchback', 'Hatchback')->count(),
            'type_Luxury' => Vehicle::where('car_type_Luxury', 'Luxury')->count(),
            'minPrice' => Vehicle::min('price'),
            'maxPrice' => Vehicle::max('price'),
        ];

        foreach ($data['brands'] as $brand) {
            $brand->brandcount = Vehicle::where('brand_id', $brand->id)->count();
        }
        return view('our-fleet',$data);
    }

    public function getVehicleAgainstBrand($slug)
    {
        $brand = Brand::where('slug',$slug)->first();
        $brands = Brand::where('status', 1)->where('logo', '!=', null)->get();

        $data = [
            'brands'        =>  $brands,
            'vehicles' => Vehicle::with(['features' => function($query){
                $query->where('is_featured',1);
            }])->where('brand_id',$brand->id)->where('status',1)->get(),

            'brand_name'    =>  $brand->name,
            
            'meta_title'            =>  $brand->meta_title,
            'meta_description'      =>  $brand->meta_description,
            'keywords'              =>  $brand->keywords,

            'type_Economy' => Vehicle::where('car_type_Economy', 'Economy')->count(),
            'type_SUV' => Vehicle::where('car_type_SUV', 'SUV')->count(),
            'type_Hatchback' => Vehicle::where('car_type_Hatchback', 'Hatchback')->count(),
            'type_Luxury' => Vehicle::where('car_type_Luxury', 'Luxury')->count(),
            'minPrice' => Vehicle::min('price'),
            'maxPrice' => Vehicle::max('price'),
        ];
        foreach ($data['brands'] as $brand) {
            $brand->brandcount = Vehicle::where('brand_id', $brand->id)->count();
        }

        return view('our-fleet',$data);
    }


    public function getSelectedVehiclesAgainstBrand(Request $request)
    {
        $selectedBrands = $request->input('selected_brands', []);
        $selectedTypes = $request->input('selected_types', []);

        $vehicles = Vehicle::with(['features' => function($query) {
            $query->where('is_featured', 1);
        }])
            ->where('status', 1);

        // Apply filters based on selected brands and types
        if (!empty($selectedBrands)) {
            $vehicles->whereIn('brand_id', $selectedBrands);
        }

        if (!empty($selectedTypes)) {
            $vehicles->whereIn('car_type_Economy', $selectedTypes);
        }

        $vehicles = $vehicles->get();
        $brands = Brand::where('status', 1)->where('logo', '!=', null)->get();

        // Prepare the data for the AJAX response
        $response = [];

        foreach ($vehicles as $vehicle) {
            $brandLogo = null;
            $brandName = null;

            foreach ($brands as $brand) {
                if ($brand->id === $vehicle->brand_id) {
                    $brandLogo = config('falcondrive.file_path') . $brand->logo;
                    $brandName = $brand->name;
                }
            }

            $response[] = [
                'slug' => route('vehicle_detail', $vehicle->slug),
                'featured_image' => config('falcondrive.file_path') . $vehicle->featured_image,
                'brand_logo' => $brandLogo,
                'brand_name' => $brandName,
                'name' => $vehicle->name,
                'price_formatted' => number_format($vehicle->price),
                'features' => $vehicle->features,
                'whatsapp_link' => getSettings('whatsapp_link')
            ];
        }

        // Return the data as a JSON response
        return response()->json($response);
    }
        

    public function getVehicleAgainstType($type)
    {
        $brands = Brand::where('status', 1)->where('logo', '!=', null)->get();
        // dd($type);
        $data = [
            'brands' => Brand::where('status', 1)->whereNotNull('logo')->get(),
            'vehicles' => Vehicle::with(['features' => function ($query) {
                $query->where('is_featured', 0);
            }])->where('status', 0)->get(),
            'type_Economy' => Vehicle::where('car_type_Economy', 'Economy')->count(),
            'type_SUV' => Vehicle::where('car_type_SUV', 'SUV')->count(),
            'type_Hatchback' => Vehicle::where('car_type_Hatchback', 'Hatchback')->count(),
            'type_Luxury' => Vehicle::where('car_type_Luxury', 'Luxury')->count(),
            'minPrice' => Vehicle::min('price'),
            'maxPrice' => Vehicle::max('price'),
        ];

        if ($type === 'Economy') {
            $brand_Economy = Vehicle::where('car_type_Economy', $type)->first();
            if ($brand_Economy !== null) {
                $data['vehicles'] = Vehicle::with(['features' => function ($query) {
                    $query->where('is_featured', 1);
                }])->where('car_type_Economy', $brand_Economy->car_type_Economy)
                    ->where('status', 1)
                    ->get();
            }
        }

        if ($type === 'SUV') {
            $brand_SUV = Vehicle::where('car_type_SUV', $type)->first();
            if ($brand_SUV !== null) {
                $data['vehicles'] = Vehicle::with(['features' => function ($query) {
                    $query->where('is_featured', 1);
                }])->where('car_type_SUV', $brand_SUV->car_type_SUV)
                    ->where('status', 1)
                    ->get();
            }
        }

        if ($type === 'Hatchback') {
            $brand_Hatchback = Vehicle::where('car_type_Hatchback', $type)->first();
            if ($brand_Hatchback !== null) {
                $data['vehicles'] = Vehicle::with(['features' => function ($query) {
                    $query->where('is_featured', 1);
                }])->where('car_type_Hatchback', $brand_Hatchback->car_type_Hatchback)
                    ->where('status', 1)
                    ->get();
            }
        }

        if ($type === 'Luxury') {
            $brand_Luxury = Vehicle::where('car_type_Luxury', $type)->first();
            if ($brand_Luxury !== null) {
                $data['vehicles'] = Vehicle::with(['features' => function ($query) {
                    $query->where('is_featured', 1);
                }])->where('car_type_Luxury', $brand_Luxury->car_type_Luxury)
                    ->where('status', 1)
                    ->get();
            }
        }
        foreach ($data['brands'] as $brand) {
                $brand->brandcount = Vehicle::where('brand_id', $brand->id)->count();
            }

        return view('our-fleet', $data);
    }


    public function search(Request $request)
    {
        $earlier = DateTime::createFromFormat('d/m/Y', $request->start_date);
        $later = DateTime::createFromFormat('d/m/Y', $request->end_date);

        $abs_diff = $later->diff($earlier)->format("%a");
        if ($request->ra != '') {
            $vehicle = Vehicle::with(['features' => function($query){
                $query->where('is_featured', 1);
            }])
            ->where('status', 1)
            ->where(function($query) use ($request) {
                $query->where('car_type_Economy', $request->ra)
                    ->orWhere('car_type_SUV', $request->ra)
                    ->orWhere('car_type_Hatchback', $request->ra)
                    ->orWhere('car_type_Luxury', $request->ra);
            })
            ->get();
        } else {
            $vehicle = Vehicle::with(['features' => function($query){
                $query->where('is_featured', 1);
            }])
            ->where('status', 1)
            ->get();
        }

        $data = [
            'brands'        =>  Brand::where('status',1)->where('logo','!=',null)->get(),
            'noOfDays'      =>  $abs_diff+1,
            'start_date'    =>  $request->start_date,
            'end_date'    =>  $request->end_date,
            'start_time'    =>  $request->start_time,
            'end_time'    =>  $request->end_time,
            'vehicles'  =>  $vehicle,
        ];

        return view('our-fleet-search',$data);
    }

    public function homesearch(Request $request)
    {
        $earlier = DateTime::createFromFormat('d/m/Y', $request->start_date);
        $later = DateTime::createFromFormat('d/m/Y', $request->end_date);

        $abs_diff = $later->diff($earlier)->format("%a");
        if($request->choose_car_brand != ''){
            $vehicle = Vehicle::with(['features' => function($query){
                    $query->where('is_featured',1);
                }])->where('status',1)->where('brand_id',$request->choose_car_brand)->get();
        }
        else{
            $vehicle = Vehicle::with(['features' => function($query){
                    $query->where('is_featured',1);
                }])->where('status',1)->get();
        }

        $data = [
            'brands'        =>  Brand::where('status',1)->where('logo','!=',null)->get(),
            'noOfDays'      =>  $abs_diff+1,
            'full_name'    =>  $request->full_name,
            'email'    =>  $request->email,
            'number'    =>  $request->number,
            'start_date'    =>  $request->start_date,
            'end_date'    =>  $request->end_date,
            'start_time'    =>  $request->start_time,
            'end_time'    =>  $request->end_time,
            'vehicles'  =>  $vehicle,
        ];

        return view('our-fleet-search',$data);
    }

    public function post(Request $request)
    {
        // return $request;
        $earlier = DateTime::createFromFormat('d/m/Y', $request->start_date);
        $later = DateTime::createFromFormat('d/m/Y', $request->end_date);

        $abs_diff = $later->diff($earlier)->format("%a");

        $vehicle = Vehicle::with('features','gallery_images')->where('id',$request->vehicle_id)->first();
        $data = [
            'noOfDays'      =>  $abs_diff+1,
            'full_name'    =>  $request->full_name,
            'email'    =>  $request->email,
            'number'    =>  $request->number,
            'start_date'    =>  $request->start_date,
            'end_date'    =>  $request->end_date,
            'start_time'    =>  $request->start_time,
            'end_time'    =>  $request->end_time,
            'total_amount'    =>  $request->total_amount,

            'brands'        =>  Brand::where('status',1)->where('logo','!=',null)->get(),
            'selected_vehicle' => Vehicle::with(['features' => function($query){
                    $query->where('is_featured',1);
                }])->where('status',1)->get(),

        ];
        return view('our-fleet-detail',['vehicle' => $vehicle],['data' => $data]);

        // return redirect()->route('vehicle_detail',$data['vehicle']->slug)->with(['data' => $data]);
    }

    public function detail($slug)
    {
        $data['vehicle'] = Vehicle::with('features','gallery_images')->where('slug',$slug)->first();
        $brands = [
            'brands'        =>  Brand::where('status',1)->where('logo','!=',null)->get(),
            'selected_vehicle' => Vehicle::with(['features' => function($query){
                    $query->where('is_featured',1);
                }])->where('status',1)->get(),
        ];

        return view('our-fleet-detail',$data,$brands);
    }

    public function store(Request $request)
    {
        $vehicle    =   Vehicle::where('id',$request->vehicle_id)->first();
        $brands = [
            'brands'        =>  Brand::where('status',1)->where('logo','!=',null)->get(),
            'selected_vehicle' => Vehicle::with(['features' => function($query){
                    $query->where('is_featured',1);
                }])->where('status',1)->get(),
        ];


        if(isset($request->no_of_days)){
            $noOfDays   =   $request->no_of_days;
            $totalAmount = $request->total_amount;
        }else{
            $earlier = DateTime::createFromFormat('d/m/Y', $request->start_date);
            $later = DateTime::createFromFormat('d/m/Y', $request->end_date);

            $abs_diff = $later->diff($earlier)->format("%a");
            $noOfDays   =   $abs_diff+1;
            $totalAmount = $vehicle->price * $noOfDays;
        }

        $booking                =   new Booking;
        $booking->vehicle_id    =   $request->vehicle_id;
        $booking->start_date    =   $request->start_date;
        $booking->end_date      =   $request->end_date;
        $booking->start_time    =   $request->start_time;
        $booking->end_time      =   $request->end_time;
        $booking->no_of_days    =   $noOfDays;
        $booking->selected_package    =   $request->selected_package;
        $booking->total_amount  =   $totalAmount;
        $booking->car_name      =   $request->car_name;
        $booking->first_name    =   $request->first_name;
        $booking->last_name     =   $request->last_name;
        $booking->email         =   $request->email1;
        $booking->contact_no    =   $request->contact_no;
        $booking->save();

        // return "adasd";

        // Mail::to('booking@vipalfarental.ae')->send(new BookingMail($booking));
        // Mail::cc($request->email)->send(new BookingMail($booking));


        Mail::to('booking@falcondrive.ae')->send(new BookingMail($booking));
        // Mail::to($request->email1)->send(new BookingMail($booking));
        

        return view('our-fleet-detail',['vehicle' => $vehicle, 'success' => 'YOUR REQUEST FOR VEHICLE BOOKING HAS BEEN SUBMITTED SUCCESSFULLY'],$brands);
    }

    public function autosearch(Request $request)
    {
        if ($request->ajax()) {
            $data = Vehicle::where('name','LIKE',$request->product_brand_search.'%')
            ->get();
            $output = '';
            if (count($data)>0) {
                $output = '<ul>';
                foreach ($data as $row) {
                    $output .= '<li class="list-group-item" id="dropdown-menu-search-li">
                        <a href="http://127.0.0.1:8000/vehicle/'.$row->slug.'">
                            <span style="border-radius: 10px;width: 100px;display: -webkit-inline-box;">
                                <img src="http://localhost/falcondirve/cms/public/uploads/'.$row->featured_image.'" alt="'.$row->name.'" class="hover-image" style="border-radius: 10px;width: 90px;">
                            </span>
                            <span style="font-size: 15px;font-weight: 900; margin-left: 0px;">'.$row->name.'</span> 
                        </a>
                    </li>';
                }
                $output .= '</ul>';
            }else {
                $output .= '<li class="list-group-item" style="display:block; position:absolute;width: 100%;padding: 10px; z-index: 999">
                    <center>
                        <img src="/assets/img/sorry.png" alt="Sorry Image" class="hover-image" style="border-radius: 10px;width: 200px;">
                    </center>
                </li>';
            }
            return $output;
        }
        return view('autosearch');  
    }

public function getPrice(Request $request)
{
    // Retrieve the min and max values from the request
    $min = $request->input('min');
    $max = $request->input('max');

    // Retrieve the vehicles within the specified price range

    $vehicles = Vehicle::with(['features' => function($query){
                $query->where('is_featured',1);
            }])->where('status',1)->whereBetween('price', [$min, $max])->get();
    $brands = Brand::where('status', 1)->where('logo', '!=', null)->get();

    // Prepare the data for the AJAX response
    $response = [];

    foreach ($vehicles as $vehicle) {
        $brandLogo = null;
        $brandName = null;

        foreach ($brands as $brand) {
            if($brand->id === $vehicle->brand_id){
                $brandLogo = config('falcondrive.file_path') . $brand->logo;
                $brandName = $brand->name;
            }
        }
        

        $response[] = [
            'slug' => route('vehicle_detail', $vehicle->slug),
            'featured_image' => config('falcondrive.file_path') . $vehicle->featured_image,
            'brand_logo' => $brandLogo,
            'brand_name' => $brandName,
            'name' => $vehicle->name,
            'price_formatted' => number_format($vehicle->price),
            'features' => $vehicle->features,
            'whatsapp_link' => getSettings('whatsapp_link')
        ];
    }

    // Return the response as JSON
    return response()->json($response);
}

//----------------------------------------------------sorting All Vehicles start
    public function sortingByNew()
    {   
        $vehicle = Vehicle::orderBy('id', 'desc')->get();
        $data[
            'vehicles'] = Vehicle::with(['features' => function($query){
                $query->where('is_featured',1);
            }])->where('status',1)->get();
        return view('our-fleet',$data);

    }

     public function sortingByPriceHigh()
    {   
        $vehicle = Vehicle::with(['features' => function($query){
                $query->where('is_featured',1);
            }])->orderBy('price', 'desc')->get();
        $data = [            
            'vehicles' => $vehicle,
            'vehicle_filter' => Vehicle::get(),

        ];
        return view('our-fleet',$data);
    }

    public function sortingByPriceLow()
    {   
        // $vehicle = Vehicle::orderBy('price', 'asc')->get();
        $vehicle = Vehicle::with(['features' => function($query){
                $query->where('is_featured',1);
            }])->orderBy('price', 'asc')->get();
        $data = [            
            'vehicles' => $vehicle,
            'vehicle_filter' => Vehicle::get(),

        ];
        return view('our-fleet',$data);
    }
}
