@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">

         <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Add About Multi Image </h4>
                            <hr><br>
                        <form class="form-group" method="post"
                            action="{{route('store.multi.image')}}"
                            enctype="multipart/form-data">
                            @csrf
                        
                            <div class="row mb-3">
                                <label for="about_image" class="col-sm-2
                                    col-form-label">About Multi Image</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="file"
                                        id="image" name="multi_image[]" multiple="">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="showImage" class="col-sm-2
                                    col-form-label"> New Image</label>
                                <div class="col-sm-10">

                                    <img class="rounded avatar-lg"
                                        src="{{ url('upload/no_image.jpg') }}"
                                    alt="" id="showImage">
                                </div>
                            </div>
                            <input type="submit" value="Add Multi Image"
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