@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">

         <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Add Portfolio Page</h4>

                        <form class="form-group" method="post"
                            action="{{route('store.portfolio')}}"
                            enctype="multipart/form-data">
                            @csrf

                            <input type="hidden" name="id">
                            <div class="row mb-3">
                                <label for="portfolio_name" class="col-sm-2
                                    col-form-label">Portfolio Name</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="portfolio_name" id="portfolio_name"
                                        name="portfolio_name" >
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="portfolio_title" class="col-sm-2
                                    col-form-label">Portfolio Title</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="Portfolio Title" id="portfolio_title"
                                        name="portfolio_title" value=" {{old('portfolio_title')}}" >
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="portfolio_description" class="col-sm-2
                                    col-form-label">Portfolio Description</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" 
                                      name="portfolio_description" id="portfolio_description" rows="3">
                                        {{old('portfolio_description')}}
                                    </textarea>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="portfolio_image" class="col-sm-2
                                    col-form-label">Portfolio Image</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="file"
                                        id="image" name="portfolio_image">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="showImage" class="col-sm-2
                                    col-form-label"> New Image</label>
                                <div class="col-sm-10">

                                    <img class="rounded avatar-lg"
                                        src="{{url('upload/no_image.jpg') }}"
                                    alt="" id="showImage">
                                </div>
                            </div>
                            <input type="submit" value="Insert Portfolio Page"
                                name="submit" class="btn btn-info waves-effect
                                waves-light">
                        </form>
                    </div>
                </div>
            </div> <!-- end col -->
        </div>
    </div>
</div>
<script type="text/javascript">

    $(document).ready(function() {
            $('#image').change(function(e) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#showImage').attr('src', e.target.result);
                }
                reader.readAsDataURL(e.target.files['0']);
            });
    });
</script>
@endsection