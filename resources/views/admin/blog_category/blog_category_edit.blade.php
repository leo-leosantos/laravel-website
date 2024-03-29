@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">

         <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Edit Blog Category Page</h4>
                        <form class="form-group" method="post"
                            action="{{route('update.blog.category',$blogcategory->id)}}">
                            @csrf
                            <div class="row mb-3">
                                <label for="blog-category-name" class="col-sm-2
                                    col-form-label">Blog Category Name</label>
                                <div class="col-sm-6">
                                    <input class="form-control" type="text"
                                        placeholder="Blog Category name" id="blog-category-name"
                                        name="blog_category" value=" {{old('blog_category') ?? $blogcategory->blog_category}} ">
                                        @error('blog_category')
                                        <span class="text-danger" >{{$message}}</span>    
                                        @enderror
                                </div>
                            </div>
                            <input type="submit" value="Update Blog Category Data"
                                name="submit" class="btn btn-info waves-effect
                                waves-light">
                        </form>
                    </div>
                </div>
            </div> <!-- end col -->
        </div>
    </div>
</div>

@endsection