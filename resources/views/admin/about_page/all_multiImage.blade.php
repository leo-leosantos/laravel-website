@extends('admin.admin_master')
@section('admin')
    <div class="page-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                            <h4 class="card-title">Multi Images All</h4>

                            <table id="datatable" class="table table-bordered dt-responsive nowrap"
                                style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>About Multi Image</th>
                                        <th>Actions</th>
                                      
                                    </tr>
                                </thead>
                                <tbody>

                                @foreach($allMultiImage as $item )
                                    <tr>
                                        <td>{{$item->id}}</td>
                                        <td><img src="{{asset($item->multi_image)}}" 
                                            style="width: 120px; height:120px";></td>
                                        <td>
                                            <a href="{{route('edit.multi.image', $item->id)}}" class="btn btn-info sm" title="Edit Data"><i class="fas fa-edit"></i></a>
                                            <a href="{{route('delete.multi.image', $item->id)}}" class="btn btn-danger sm" title="Delete Data" id="delete"><i class="fas fa-trash-alt"></i></a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div> <!-- end col -->
            </div> <!-- end row -->

        </div>
    </div>
@endsection
