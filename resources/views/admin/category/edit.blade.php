@extends('admin_layouts.master')
@section('content')
<div class="content-header row">
</div>
<div class="row">
  <div class="col-md-12">
        <div class="card">
            <div class="card-content collpase show">
                <div class="card-body">
                    <form class="form form-horizontal" method="POST" enctype="multipart/form-data" action="{{route('admin.category.update',$category->id)}}">
                    @csrf
                    {{-- @if (count($errors) > 0)
                       <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                       </div>
                     @endif --}}
                    <div class="form-body">
                        <h4 class="form-section"><i class="la la-tasks"></i>Edit Categroy</h4>
                        <div class="row">
                          	<div class="col-md-9">
                            	<div class="form-group row">
	                              	<label class="col-md-3 label-control" for="userinput1">Title:</label>
		                            <div class="col-md-9">
		                                <input type="text" id="userinput1" value="{{$category->title}}" class="form-control border-primary" placeholder="Enter your name here..."
		                                name="title" required>
		                            </div>
                        		</div>
                     		</div>
                        </div>
                    </div>

                      </div>
                    </div>
	                    <div class="form-actions right">
	                        <button type="submit" class="btn btn-primary">
	                          	<i class="la la-check-square-o"></i> Save
	                        </button>
	                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
