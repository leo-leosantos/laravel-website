@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">

         <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">About Page</h4>

                        <form class="form-group" method="post"
                            action="{{route('update.about')}}"
                            enctype="multipart/form-data">
                            @csrf

                            <input type="hidden" name="id" value="{{$aboutpage->id}}">
                            <div class="row mb-3">
                                <label for="title" class="col-sm-2
                                    col-form-label">Title</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="Title" id="title"
                                        name="title" value="{{ $aboutpage->title
                                    }}">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="short_title" class="col-sm-2
                                    col-form-label">Short Title</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="Short Title" id="short_title"
                                        name="short_title" value="{{ $aboutpage->short_title
                                    }}">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="short_description" class="col-sm-2
                                    col-form-label">Short Description</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" 
                                      name="short_description" id="short_description" rows="3">
                                        {{$aboutpage->short_description}}
                                    </textarea>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="long_description" class="col-sm-2
                                    col-form-label">Long Description</label>
                                <div class="col-sm-10">
                                      <label for="long_description" class="form-label"></label>
                                        <textarea class="form-control" 
                                            name="long_description" id="elm1" rows="3">
                                            {{$aboutpage->long_description}}
                                        </textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="about_image" class="col-sm-2
                                    col-form-label">About Image</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="file"
                                        id="image" name="about_image">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="showImage" class="col-sm-2
                                    col-form-label"> New Image</label>
                                <div class="col-sm-10">

                                    <img class="rounded avatar-lg"
                                        src="{{(!empty($aboutpage->about_image))
                                    ? url($aboutpage->about_image):url('upload/no_image.jpg') }}"
                                    alt="{{$aboutpage->about_image}}" id="showImage">
                                </div>
                            </div>
                            <input type="submit" value="Update About Page"
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