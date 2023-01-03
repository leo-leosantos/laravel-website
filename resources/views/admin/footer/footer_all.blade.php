@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">

         <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Footer Page</h4>

                        <form class="form-group" method="post"
                            action="{{route('update.footer')}}">
                            @csrf

                            <input type="hidden" name="id" value="{{$allfooter->id}}">
                            <div class="row mb-3">
                                <label for="number" class="col-sm-2
                                    col-form-label">Number</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="number" id="number"
                                        name="number" value="{{ $allfooter->number
                                    }}">
                                </div>
                            </div>


                            <div class="row mb-3">
                                <label for="short_description" class="col-sm-2
                                    col-form-label">Short Description</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control"
                                      name="short_description" id="short_description" rows="3">
                                        {{$allfooter->short_description}}
                                    </textarea>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="address" class="col-sm-2
                                    col-form-label">Address</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="address" id="address"
                                        name="address" value="{{ $allfooter->address
                                    }}">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="email" class="col-sm-2
                                    col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="email"
                                        placeholder="sem melhor email" id="email"
                                        name="email" value="{{ $allfooter->email
                                    }}">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="facebook" class="col-sm-2
                                    col-form-label">Facebook</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="facebook" id="facebook"
                                        name="facebook" value="{{ $allfooter->facebook
                                    }}">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="twitter" class="col-sm-2
                                    col-form-label">Twitter</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="twitter" id="twitter"
                                        name="twitter" value="{{ $allfooter->twitter
                                    }}">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="copyright" class="col-sm-2
                                    col-form-label">Copyright</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"
                                        placeholder="copyright" id="copyright"
                                        name="copyright" value="{{ $allfooter->copyright
                                    }}">
                                </div>
                            </div>
                            <input type="submit" value="Update Footer Page"
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
