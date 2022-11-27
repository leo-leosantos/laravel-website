@extends('admin.admin_master')

@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Edit Profile Page</h4>

                        <form class="form-group" method="post"
                            action="{{route('store.profile')}}"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="row mb-3">
                                <label for="name" class="col-sm-2
                                    col-form-label">Name</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="Name" id="name"
                                        name="name" value="{{ $editData->name
                                    }}">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="email" class="col-sm-2
                                    col-form-label">E-mail</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="email"
                                        placeholder="E-mail" id="email"
                                        name="email" value="{{ $editData->email
                                    }}">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="username" class="col-sm-2
                                    col-form-label">Username</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="Username" id="username"
                                        name="username" value="{{ $editData->username
                                    }}">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="profile_image" class="col-sm-2
                                    col-form-label">Profile Image</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="file"
                                        id="image" name="profile_image">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="profile_image" class="col-sm-2
                                    col-form-label"> New Image</label>
                                <div class="col-sm-10">

                                    <img class="rounded avatar-lg"
                                        src="{{(!empty($editData->profile_image))
                                    ? url('upload/admin_images/'.$editData->profile_image)
                                    : url('upload/no_image.jpg') }}"
                                    alt="{{$editData->name}}" id="showImage">
                                </div>
                            </div>
                            <input type="submit" value="Update Profile"
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
