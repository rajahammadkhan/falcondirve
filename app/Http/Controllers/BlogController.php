<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\Setting;

class BlogController extends Controller
{
    public function index()
    {
        $data = [
            'blogs' =>  Blog::where('status',1)->orderByDesc('id')->get(),
            'settings' => Setting::get(),
        ];

        return view('blog',$data);
    }
    
    public function aboutindex()
    {
        $data = [
            'blogs' =>  Blog::where('status',1)->orderByDesc('id')->get(),
            'settings' => Setting::get(),
        ];

        return view('about',$data);
    }


    public function detail($slug)
    {        
        $data['blog'] =  Blog::where('slug',$slug)->first();

        return view('blog-detail',$data);
    }
}
