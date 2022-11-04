<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index(){
        $blogs=Blog::orderBy('created_at', 'DESC')->get();
        return view('admin.blogs.view',compact('blogs'));
    }

    public function create(){
        return view('admin.blogs.create');
    }

    public function store(Request $request){
        $blog = new Blog();
        $blog->title = $request->title;
        $blog->date = date('Y年m月d日');
        $blog->description = $request->description;

        if($request->hasfile('image'))
        {
            $image           = $request->file('image');
            $as_name    = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/storage/blog_images');
            $image->move($destinationPath, $as_name);
            $blog->image   = $as_name;
        }
        $blog->save();
        return redirect()->back();
    }

    public function edit($id)
    {
        $blog = Blog::find($id);

        return view('admin.blogs.edit',compact('blog'));
    }

    public function update(Request $request,$id){
        $blog = Blog::find($id);
        $blog->title = $request->title;
        $blog->description = $request->description;

        if($request->file('image') == null)
        {}
        else
        {
            if(isset($blog->image)) {
                @unlink('/storage/blog_images/'.$blog->image);
            }
            $image      = $request->file('image');
            $as_name    = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/storage/blog_images');
            $image->move($destinationPath, $as_name);
            $blog->image = $as_name;
        }

        $blog->save();
        return redirect(route('admin.blog.index'));
    }

    public function destroy($id){
        Blog::find($id)->delete();
        return redirect()->back()->with('error','削除されました。');
    }
}
