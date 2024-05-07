@extends('layouts.master')

@section('top-styles')
<style>
    @media only screen and (min-width: 300px) and (max-width: 767px){
        #left{
            margin-left: 5px;
        }
    }
</style>
@endsection

@section('content')  

<section class="page-header">
    <div class="page-header-shape"></div>
    <div class="container">
        <div class="page-header-info">
            <h4>Blogs!</h4>
            <h2>Use Falcon Drive Car Rental<br><span id="left">Experience the Freedom <br>of the Open Road.</span></h2>
        </div>
    </div>
</section>
<!--/.page-header-->
<section class="blog-section blog-page bg-grey padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 sm-padding">
                <div class="row grid-post">
                    @foreach($blogs as $blog)
                        <div class="col-md-4 padding-15">
                            <div class="post-card" style="height: 460px;">
                                <div class="post-thumb">
                                    <a href="{{route('blog_detail',$blog->slug)}}"><img src="{{config('falcondrive.file_path').$blog->image}}" alt="{{$blog->name}}"></a>
                                </div>
                                <div class="post-content-wrap">
                                    <ul class="post-meta">
                                        <li><i class="las la-calendar"></i>{{date('F d, Y',strtotime($blog->date))}}</li>
                                        <li><i class="las la-user"></i>Published By: {{$blog->by}}</li>
                                    </ul>
                                    <div class="post-content">
                                        <h3 style="font-size: 18px;">
                                            <a href="{{route('blog_detail',$blog->slug)}}">{{$blog->name}}</a>
                                        </h3>
                                        <a href="{{route('blog_detail',$blog->slug)}}" class="read-more">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach                    
                </div>
            </div>
            <!--Blog Grid-->
        </div>
    </div>
</section>
<!--Blog Section-->

@endsection

@section('bottom-mid-scripts')
@endsection

@section('bottom-bot-scripts')
@endsection