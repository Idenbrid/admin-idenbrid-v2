@extends('admin_layouts.master')
@section('content')
    <div class="content-header row">
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-content collpase show">
                    <div class="card-body">
                        <div class="form-body">
                            <h4 class="form-section"><i class="la la-tasks"></i>Cotact Us</h4>
                            <div class="row">
                                <div class="col-md-9">
                                    <div class="form-group row">
                                        <label class="col-md-3 label-control"
                                            for="userinput1"><b>name:</b>{{ $contact->name }}</label>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="form-group row">
                                        <label class="col-md-3 label-control"
                                            for="userinput1"><b>email:</b>{{ $contact->email }}</label>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="form-group row">
                                        <label class="col-md-3 label-control"
                                            for="userinput1"><b>phone:</b>{{ $contact->phone_number }}</label>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="form-group row">
                                        <label class="col-md-3 label-control"
                                            for="userinput1"><b>subject:</b> {{ $contact->summary }}</label>
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
                                        <label class="col-md-3 label-control" for="userinput1"><b>Message:</b></label>
                                        <div class="col-md-9">
                                            <textarea class="form-control border-primary ckeditor" name="message" id="exampleFormControlTextarea1" rows="3"
                                                cols="3">{{ $contact->message }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="form-actions right">
                    <button type="submit" class="btn btn-primary" onclick="window.location='{{ url("contacts") }}'">
                        <i class="la la-check-square-o"></i> Back
                    </button>
                </div>
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
