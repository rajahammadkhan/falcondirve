@extends('layouts.master')

@section('top-styles')
@endsection

@section('content')  

<section class="page-header">
    <div class="page-header-shape"></div>
    <div class="container">
        <div class="page-header-info">
            <h4>Blogs!</h4>
            <h2>Use Falcon Drive Car Rental<br><span>Experience the Freedom <br>of the Open Road.</span></h2>
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
                            <div class="post-card">
                                <div class="post-thumb">
                                    <a href="{{route('blog_detail',$blog->slug)}}"><img src="{{config('falcondrive.file_path').$blog->image}}" alt="{{$blog->name}}"></a>
                                    <!-- <a href="{{route('blog_detail',$blog->slug)}}" class="post-category">{{$blog->by}}</a> -->
                                </div>
                                <div class="post-content-wrap">
                                    <ul class="post-meta">
                                        <li><i class="las la-calendar"></i>{{date('F d, Y',strtotime($blog->date))}}</li>
                                        <li><i class="las la-user"></i>Published By: Admin</li>
                                    </ul>
                                    <div class="post-content">
                                        <!-- <h3><a href="{{route('blog_detail',$blog->slug)}}" class="hover" style="display: -webkit-box;-webkit-line-clamp: 1;-webkit-box-orient: vertical;overflow: hidden;text-overflow: ellipsis;">{{$blog->name}}</a></h3> -->
                                        <!-- <div style="display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden;text-overflow: ellipsis;">{!! $blog->description !!}</div> -->
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