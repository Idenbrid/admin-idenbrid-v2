@extends('admin_layouts.master') @section('style')

<link rel="stylesheet" type="text/css" href="{{ asset('app-assets/vendors/css/extensions/sweetalert.css') }}" />
<script src="{{ asset('app-assets/js/core/libraries/jquery.min.js') }}"></script>
<link rel="stylesheet" type="text/css" href="{{('cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css')}}" />
<link rel="stylesheet" type="text/css" href="cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" />
<script src="cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js" type="text/javascript"></script>

<script></script>

@endsection @section('content')

<div class="content-body">
    <section id="configuration">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Orders</h4>
                        <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li>
                                    <a data-action="collapse"><i class="ft-minus"></i></a>
                                </li>
                                <li>
                                    <a data-action="reload"><i class="ft-rotate-cw"></i></a>
                                </li>
                                <li>
                                    <a data-action="expand"><i class="ft-maximize"></i></a>
                                </li>
                                <li>
                                    <a data-action="close"><i class="ft-x"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-content collapse show">
                        <div class="card-body card-dashboard">
                            <p class="card-text"></p>
                            <table class="table table-striped table-bordered table-responsive zero-configuration data-table" id="link_table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Phone number</th>
                                        <th>Email</th>
                                        <th>Queries</th>
                                        <th>Party name</th>
                                        <th>Name</th>
                                        <th>Name1</th>
                                        <th>Name2</th>
                                        <th>Name3</th>
                                        <th>Image color</th>
                                        <th>Slogan</th>
                                        <th>Presence</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $counter = 1; @endphp
                                    @foreach($orders as $order)
                                    <tr class="gradeX">
                                        <td>{{$order->id}}</td>
                                        <td>{{$order->phone_number}}</td>
                                        <td>{{$order->email}}</td>
                                        <td>{{$order->content}}</td>
                                        <td>{{$order->party_name}}</td>
                                        <td>{{$order->name}}</td>
                                        <td>{{$order->name1}}</td>
                                        <td>{{$order->name2}}</td>
                                        <td>{{$order->name3}}</td>
                                        <td>{{$order->image_color}}</td>
                                        <td>{{$order->slogan}}</td>
                                        <td>{{$order->presence}}</td>

                                        <td>
                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter-{{$order->id}}">
                                                View order
                                            </button>
                                        </td>

                                    </tr>

                                    <div class="modal fade" style="width: 100%;" id="exampleModalCenter-{{$order->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered" style="width: 100%;" role="document">
                                          <div class="modal-content" style="width: 100%;">
                                            <div class="modal-header">
                                              <h5 class="modal-title" id="exampleModalLongTitle">Factors</h5>
                                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                              </button>
                                            </div>
                                            <div class="modal-body" style="width: 100%;">
                                               <div class="row">
                                                    <div class="col-md-6">
                                                        <?php $factor = json_decode($order->order); ?> Car name : {{$factor->car_name}}<br />
                                                        Car price : ¥{{$factor->car_price}}<br />
                                                        Signboard name : {{$factor->sign_board_name}}<br />
                                                        Signboard price : ¥{{$factor->sign_board_price}}<br />
                                                        Speaker name : {{$factor->speaker_name}}<br />
                                                        Speaker price : ¥{{$factor->speaker_price}}<br />
                                                        @foreach ($factor->others_data as $obj)
                                                         Name : {{$obj->name}} (¥{{$obj->price}})<br />
                                                        @endforeach
                                                        @foreach ($factor->wrap_data as $obj)
                                                         Name : {{$obj->name}} (¥{{$obj->price}})<br />
                                                        @endforeach
                                                    </div>
                                                    <div class="col-md-3"><img src="{{asset('/storage/car_sign_board_images/'.$factor->main_area_image)}} " width="215" height="215"/></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <h1><b>Total : ¥{{$factor->total}}</b></h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            </div>
                                          </div>
                                        </div>
                                      </div>

                                    @php $counter = $counter + 1; @endphp
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
@endsection @section('script')

<!-- datatable -->

<script type="text/javascript">
    $(document).ready(function () {
        $("#link_table").DataTable();
    });
</script>

<!-- datatable end -->

<script src="{{ asset('app-assets/vendors/js/extensions/sweetalert.min.js') }}" type="text/javascript"></script>
<script type="text/javascript">
    window.setTimeout(function () {
        $(".alert")
            .fadeTo(500, 0)
            .slideUp(500, function () {
                $(this).remove();
            });
    }, 2000);
</script>
@if(Session::get('success'))
<script>
    $(document).ready(function ()
    {
      toastr.success('<?php echo Session::get('success');?>', 'Zindawork Says', {timeOut: 2000})
    });
</script>
@endif @endsection
