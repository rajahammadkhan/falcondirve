@extends('layouts.master')

@section('top-styles')
@endsection

@section('content') 

<section class="page-header blog-details">
    <div class="container">
        <div class="page-header-info text-center">
            <h4>Blog Details</h4>
            <h2>{{$blog->name}}</h2>
            <!-- <div style="display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden;text-overflow: ellipsis;">{!! $blog->description !!}</div> -->
            <ul class="post-meta">
                <li><i class="las la-user"></i>Published By: Admin</li>
                <li><i class="las la-calendar"></i>{{date('F d, Y',strtotime($blog->date))}}</li>
            </ul>
        </div>
    </div>
</section>
<!--page-header-->

<section class="blog-section blog-page bg-grey padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2">
                <div class="post-details">
                    <div class="post-thumb"><img src="{{config('falcondrive.file_path').$blog->image}}" alt="{{$blog->name}}"></div>
                    <h2>{{$blog->name}}</h2>
                    <p>{!! $blog->description !!}</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Blog Section-->

@endsection

@section('bottom-mid-scripts')
@endsection

@section('bottom-bot-scripts')
@endsection