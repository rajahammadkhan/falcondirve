@extends('cms.layouts.masterpage')
@section('title', 'Brands')
@section('top-styles')
    <link rel="stylesheet" type="text/css" href="{{ url('') }}/plugins/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="{{ url('') }}/assets/css/bootstrap-tagsinput.css">
 <style>
.error{
    color: red;
}     
.file {
  visibility: hidden;
  position: absolute;
}
.filecolor {
  visibility: hidden;
  position: absolute;
}

.img-thumbnail{
    cursor: pointer;
    border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
}

.img-thumbnail-color{
    cursor: pointer;
    border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
}

.photo {
    width: 200px;
    height: 180px;
}

.photo img {
    width: 100%;
    height: 100%;
    background-color: darkgray;
}

.photocolor {
    width: 200px;
    height: 180px;
}

.photocolor img {
    width: 100%;
    height: 100%;
    background-color: darkgray;
}

.img-thumbnail:hover {
  box-shadow: 0 0 2px 1px #000;
}

.img-thumbnail-color:hover {
  box-shadow: 0 0 2px 1px #000;
}

</style>   
@endsection
@section('header')
    @parent
@endsection
@section('leftside')
    @parent
@endsection
@section('content')
    <!--  BEGIN MAIN CONTAINER  -->
    <div class="overlay">
    </div>
    <div class="cs-overlay">
    </div>
    <div class="search-overlay">
    </div>
    <!--  BEGIN CONTENT AREA  -->   
    <div id="content" class="main-content">
        <div class="layout-px-spacing">
            <div class="row layout-top-spacing" id="cancel-row">
                <div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Dashboard</a></li>
                    <li class="breadcrumb-item">All Vehicles</li>
                    <li class="breadcrumb-item"><a href="{{route('brands')}}">Brands</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{$isEdit ? 'Edit' : 'Add'}}</li>
                </ol>
                
                        
                <form action="{{ $isEdit ? route('brand.update', [$brand->id]) : route('brand.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @if ($isEdit)
                        <input type="hidden" name="_method" value="put">
                    @endif
                    <div style="background: black;">
                        <div class="row">
                            <div class="col-md-6 mt15 pl30">
                                <h5 class="text-white">Brands / {{$isEdit ? 'Edit' : 'Add'}}</h5>
                            </div>

                            <div class="col-md-6 text-right">
                                <a href="{{route('brands')}}" class="btn btn-danger"> 
                                <svg viewBox="0 0 24 24" width="10" height="10" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg>    
                                &nbsp; | &nbsp; Go Back</a>

                                <button type="submit" class="btn btn-danger mb-2 mr-4 ml-3 mt-2"> 
                                <svg viewBox="0 0 24 24" width="10" height="10" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1"><path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z"></path><polyline points="17 21 17 13 7 13 7 21"></polyline><polyline points="7 3 7 8 15 8"></polyline></svg>    
                                &nbsp; | &nbsp; {{ $isEdit ? 'Update' : 'Save' }}</button>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="form-row mb-4">
                            <div class="col-md-3">
                                <label>Logo <small>( Dimension : 40 x 40 )</small> <span class="text-danger"> *</span> </label>
                                <input {{!$isEdit ? 'required' : null}} type="file" name="logo"  class="file" accept="image/*" >
                                <div class="images">
                                    <div class="photo">
                                        <img src="{{url('')}}/uploads/{{$brand->logo ?? 'placeholder-small.jpg'}}" id="preview" class="img-thumbnail browse">
                                    </div>
                                    @if ($errors->has('image'))
                                        <div class="error">{{ $errors->first('image') }}</div>
                                    @endif
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label>Color Full Logo<small>( Dimension : 358 x 200 )</small> <span class="text-danger"> *</span> </label>
                                <input {{!$isEdit ? 'required' : null}} type="file" name="color_logo"  class="filecolor" accept="image/*" >
                                <div class="images">
                                    <div class="photocolor">
                                        <img src="{{url('')}}/uploads/{{$brand->color_logo ?? 'placeholder-small.jpg'}}" id="previewcolor" class="img-thumbnail-color browsecolor">
                                    </div>
                                    @if ($errors->has('image'))
                                        <div class="error">{{ $errors->first('image') }}</div>
                                    @endif
                                </div>
                            </div>
                            
                            <div class="form-group col-md-6">
                                <label for="">Name <span class="text-danger"> * </span></label>
                                <input type="text" name="name" value="{{ $brand->name ?? old('name') ?? null }}"
                                    class="form-control" placeholder="Enter Name..." required>
                                @if ($errors->has('name'))
                                    <div class="error">{{ $errors->first('name') }}</div>
                                @endif
                            </div>
                            <div class="form-group col-md-6">
                                <label for="">Meta Title </label>
                                <input type="text" name="meta_title" value="{{ $brand->meta_title ?? old('meta_title') ?? null }}"
                                    class="form-control" placeholder="Enter Meta Title...">
                                @if ($errors->has('meta_title'))
                                    <div class="error">{{ $errors->first('meta_title') }}</div>
                                @endif
                            </div>
                            <div class="form-group col-md-6">
                                <label for="">Keywords </label>
                                <input type="text" name="keywords" value="{{ $brand->keywords ?? old('keywords') ?? null }}"
                                    class="form-control" placeholder="Enter keywords...">
                                @if ($errors->has('keywords'))
                                    <div class="error">{{ $errors->first('keywords') }}</div>
                                @endif
                            </div>

                            <div class="form-group col-md-12">
                                <label for="">Meta Description</label>
                                <input type="text" name="meta_description" value="{{ $brand->meta_description ?? old('meta_description') ?? null }}"
                                    class="form-control" placeholder="Enter Meta Description..."    >
                                @if ($errors->has('meta_description'))
                                    <div class="error">{{ $errors->first('meta_description') }}</div>
                                @endif
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--  END CONTENT AREA  -->
@endsection
@section('bottom-mid-scripts')
    <script src="{{ url('') }}/plugins/select2/select2.min.js"></script>
    <script src="{{ url('') }}/plugins/select2/custom-select2.js"></script>
    <script src="{{ url('') }}/assets/js/bootstrap-tagsinput.min.js"></script>
    <script src="https://parsleyjs.org/dist/parsley.min.js"></script>
@endsection
@section('bottom-bot-scripts')
    <script>
        $(document).ready(function() {
            $('form').parsley();

            $(document).on("click", ".browse", function() {
                var file = $(this).parents().find(".file");
                file.trigger("click");
            });


            $('.file').change(function(e) {
                var fileName = e.target.files[0].name;
                $("#file").val(fileName);
                
                var reader = new FileReader();
                reader.onload = function(e) {
                    // get loaded data and render thumbnail.
                    document.getElementById("preview").src = e.target.result;
                };
                // read the image file as a data URL.
                reader.readAsDataURL(this.files[0]);
            });

            $(document).on("click", ".browsecolor", function() {
                var file = $(this).parents().find(".filecolor");
                file.trigger("click");
            });


            $('.filecolor').change(function(e) {
                var fileName = e.target.files[0].name;
                $("#file").val(fileName);
                
                var reader = new FileReader();
                reader.onload = function(e) {
                    // get loaded data and render thumbnail.
                    document.getElementById("previewcolor").src = e.target.result;
                };
                // read the image file as a data URL.
                reader.readAsDataURL(this.files[0]);
            });
        });
    </script>
@endsection