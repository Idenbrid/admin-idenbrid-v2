@extends('admin_layouts.master')
@section('content')
    <div class="content-header row">
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-content collpase show">
                    <div class="card-body">
                        <form class="form form-horizontal" method="POST" enctype="multipart/form-data"
                            action="{{ route('admin.blog.store') }}">
                            @csrf
                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            <div class="form-body">
                                <h4 class="form-section"><i class="la la-tasks"></i>Create Blogs</h4>
                                <div class="row">
                                    <div class="col-md-9">
                                        <div class="form-group row">
                                            <label class="col-md-3 label-control" for="userinput1">Title:</label>
                                            <div class="col-md-9">
                                                <input type="text" id="userinput1" class="form-control border-primary"
                                                    placeholder="Enter your name here..." name="title" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                {{-- <div class="row">
                            <div class="col-md-9">
                                <div class="form-group row">
                            <label class="col-md-3 label-control">Category:</label>
                            <select class="form-control col-md-9 category-filter-option select" multiple data-mdb-placeholder="Example placeholder" name="categories[]" id="category" multiple>
                                @foreach ($categories as $category)
                                <option value="{{ $category->id }}">{{ $category->title }}</option>
                            @endforeach
                            </select>
                            <small>
                            </small>
                            </div>
                            </div>
                        </div> --}}

                                <div class="row">
                                    <div class="col-md-9">
                                        <div class="form-group row">
                                            <label class="col-md-3 label-control">Category:</label>
                                                <select id="addOrganization" name="categories[]"
                                                    class="js-example-basic-multiple form-control border-primary col-md-9 customSelect"
                                                    multiple>
                                                
                                                    @foreach ($categories as $category)
                                                        <option class="smallWidth" value="{{ $category->id }}">
                                                            {{ $category->title }}</option>
                                                    @endforeach
                                                </select>
                                           
                                        </div>
                                    </div>
                                </div>



                                {{-- <div class="form-group form-float">
                            <div class="form-line {{ $errors->has('categories') ? 'focused error' : '' }}">
                                <label for="category">Select Category</label>
                                <select name="categories[]" id="category" class="form-control show-tick" data-live-search="true" multiple>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div> --}}



                                {{-- <div class="row">
                            <div class="col-md-9">
                            <div class="form-group row">
                                    <label class="col-md-3 label-control" for="userinput1">Date:</label>
                                <div class="col-md-9">
                                    <input type="date" id="userinput1" class="form-control border-primary" placeholder="Enter your car price here..."
                                    name="date" required>
                                </div>
                            </div>
                        </div>
                        </div> --}}
                                <div class="row">
                                    <div class="col-md-9">
                                        <div class="form-group row">
                                            <label class="col-md-3 label-control" for="userinput1">Description:</label>
                                            <div class="col-md-9">
                                                <textarea class="form-control border-primary ckeditor" name="description" id="exampleFormControlTextarea1"
                                                    rows="3" cols="3"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-9">
                                        <div class="form-group row">
                                            <label class="col-md-3 label-control" for="userinput1">Image:</label>
                                            <div class="col-md-9">
                                                <input type="file" accept="image/*" id="userinput1"
                                                    class="form-control border-primary"
                                                    placeholder="Enter your car name here..." name="image" required>
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
    <script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.ckeditor').ckeditor();
        });
    </script>

@endsection
