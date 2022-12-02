@extends('admin.admin_master')

@section('admin')
    <div class="page-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                            <h4 class="card-title">Change Password Page</h4><br><br>

                                @if(count($errors))
                                    @foreach ($errors->all() as $error )
                                            <p class="alert alert-danger alert-dismissible fade show">{{$error}} </p>
                                    @endforeach
                                    
                                @endif
                            <form class="form-group" method="post" action="{{ route('update.password') }}">
                                @csrf
                                <div class="row mb-3">
                                    <label for="old_password"
                                        class="col-sm-2
                                    col-form-label">Old Password</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" type="password" placeholder="Old Password" id="old_password"
                                            name="old_password" >
                                    </div>
                                </div>
                            
                               <div class="row mb-3">
                                    <label for="old_password"
                                        class="col-sm-2
                                    col-form-label">New Password</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" type="password" placeholder="New Password" id="new_password"
                                            name="new_password" >
                                    </div>
                                </div>
                                   <div class="row mb-3">
                                    <label for="confirm_password"
                                        class="col-sm-2
                                    col-form-label">Confirm Password</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" type="password" placeholder="Confirm Password" id="confirm_password"
                                            name="confirm_password" >
                                    </div>
                                </div>

                                <input type="submit" value="Change Password" name="submit"
                                    class="btn btn-warning waves-effect
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
