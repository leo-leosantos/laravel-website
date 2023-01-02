@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
    .bootstrap-tagsinput .tag{
        margin-right: 2px;
        color: #b70000;
        font-weight: 700px;
    } 
</style>
<div class="page-content">
    <div class="container-fluid">

         <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Add Blog Page</h4>

                        <form class="form-group" method="post"
                            action="{{route('store.blog')}}"
                            enctype="multipart/form-data">
                            @csrf

                            <div class="row mb-3">
                                <label for="portfolio-name" class="col-sm-2
                                    col-form-label">Blog Category Name</label>
                                <div class="col-sm-10">
                                    <select name="blog_category_id" class="form-select" aria-label="Default select example">
                                        <option selected="">Open this select menu</option>
                                            @foreach ( $categories as $cat )
                                            <option value="{{ $cat->id }}">{{ $cat->blog_category }}</option>
                                            @endforeach
                                        

                                    </select>
                                  
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="blog_title" class="col-sm-2
                                    col-form-label">Blog Title</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="Blog Title" id="blog_title"
                                        name="blog_title" value=" {{old('blog_title')}}"
                                    >
                                    @error('blog_title')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="blog-tags" class="col-sm-2
                                    col-form-label">Blog Tags</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="Blog Tags" id="blog-tags"  data-role="tagsinput"
                                        name="blog_tags" value="{{old('blog_tags')}}"
                                    >
                                    @error('blog_tags')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="blog_description" class="col-sm-2
                                    col-form-label">Blog Description</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control"
                                      name="blog_description" id="elm1"  rows="3">
                                        {{old('blog_description')}}
                                    </textarea>
                                    @error('blog_description')
                                    <span class="text-danger">{{$message}}</span>
                                @enderror
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="blog_image" class="col-sm-2
                                    col-form-label">Blog Image</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="file"
                                        id="image" name="blog_image">
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
                            <input type="submit" value="Add Blog Page"
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
