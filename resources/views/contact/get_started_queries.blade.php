@extends('admin_layouts.master')

@section('style')

<link rel="stylesheet" type="text/css" href="{{ asset('app-assets/vendors/css/extensions/sweetalert.css') }}">
<script src="{{ asset('app-assets/js/core/libraries/jquery.min.js') }}"></script>
<link rel="stylesheet" type="text/css" href="{{('cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css')}}">
<link rel="stylesheet" type="text/css" href="cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
<script src="cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js" type="text/javascript"></script>


<script></script>



@endsection
@section('content')
<div class="content-body">

    <section id="configuration">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">ContactUs queries</h4>
                        <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                <li><a data-action="close"><i class="ft-x"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-content collapse show">
                        <div class="card-body card-dashboard">
                            <p class="card-text"></p>
                            <table
                                class="table table-striped table-bordered table-responsive zero-configuration data-table"
                                id="link_table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Step1</th>
                                        <th>Step2</th>
                                        <th>Step3</th>
                                        <th>Step4</th>
                                        <th>Step5</th>
                                        <th>Step6</th>
                                        <th>Step7</th>
                                        {{-- <th>Action</th> --}}

                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                    $counter = 1;
                                    @endphp

                                    @foreach($queries as $que)
                                    <tr class="gradeX">
                                        <td>{{$counter}}</td>
                                        <td>{{$que->step_1}}</td>
                                        <td>{{$que->step_2}}</td>
                                        <td>{{$que->step_3}}</td>
                                        <td>{{$que->step_4}}</td>
                                        <td>{{$que->step_5}}</td>
                                        <td>{{$que->step_6}}</td>
                                        <td>
                                            <p>Name: {{$que->name}}</p>
                                            <p>project name: {{$que->project_name}}</p>
                                            @if($que->email)
                                            <p>phone/skype: {{$que->phone}}</p>
                                            @endif
                                            <p>email: {{$que->email}}</p>
                                        </td>
                                        {{-- <td>
                                            <a href="{{route('contact.view',$que->id)}}">
                                                <small class="label label-danger"><i class="fa"></i>view</small>
                                            </a>
                                        </td> --}}
                                    </tr>

                                    @php
                                    $counter = $counter + 1;
                                    @endphp
                                    @endforeach


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection

@section('script')

<!-- datatable -->

<script type="text/javascript">
    $(document).ready(function () {
        $('#link_table').DataTable();
    });
</script>

<!-- datatable end -->

<script src="{{ asset('app-assets/vendors/js/extensions/sweetalert.min.js') }}" type="text/javascript"></script>
<script type="text/javascript">
    window.setTimeout(function () {
        $(".alert").fadeTo(500, 0).slideUp(500, function () {
            $(this).remove();
        });
    }, 2000);
</script>
@if(Session::get('error'))
<script>
    $(document).ready(function () {
        toastr.error('<?php echo Session::get('
            error ');?>', '削除', {
                timeOut: 2000
            })
    });
</script>
@endif
@endsection