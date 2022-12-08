@extends('admin.admin_master')
@section('admin')


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Home Slide Page</h4>

                        <form class="form-group" method="post"
                            action="{{route('update.slider')}}"
                            enctype="multipart/form-data">
                            @csrf

                            <input type="hidden" name="id" value="{{$homeslide->id}}">
                            <div class="row mb-3">
                                <label for="title" class="col-sm-2
                                    col-form-label">Title</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="Title" id="title"
                                        name="title" value="{{ $homeslide->title
                                    }}">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="short_title" class="col-sm-2
                                    col-form-label">Short Title</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="Short Title" id="short_title"
                                        name="short_title" value="{{ $homeslide->short_title
                                    }}">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="video_url" class="col-sm-2
                                    col-form-label">Video Url</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="video url" id="video_url"
                                        name="video_url" value="{{ $homeslide->video_url
                                    }}">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="home_slide" class="col-sm-2
                                    col-form-label">Slide Image</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="file"
                                        id="home_slide" name="home_slide">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="showImage" class="col-sm-2
                                    col-form-label"> New Image</label>
                                <div class="col-sm-10">

                                    <img class="rounded avatar-lg"
                                        src="{{(!empty($homeslide->home_slide))
                                    ? url($homeslide->home_slide):url('upload/no_image.jpg') }}"
                                    alt="{{$homeslide->home_slide}}" id="showImage">
                                </div>
                            </div>
                            <input type="submit" value="Update Home Slide"
                                name="submit" class="btn btn-info waves-effect
                                waves-light">
                        </form>
                    </div>
                </div>
            </div> <!-- end col -->
        </div>
    </div> <!-- container-fluid -->
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
