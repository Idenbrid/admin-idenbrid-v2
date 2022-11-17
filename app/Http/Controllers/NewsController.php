<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index(){
        $news=News::orderBy('created_at', 'DESC')->get();
        return view('admin.news.view',compact('news'));
    }

    public function create(){
        $categories = Category::all();
        return view('admin.news.create',compact('categories'));
    }

    public function store(Request $request){
        $News = new News();
        $News->title = $request->title;
        $News->category_id = $request->category_id;
        $News->date = date('Y年m月d日');
        $News->description = $request->description;
        if($request->hasfile('image'))
        {
            $image           = $request->file('image');
            $as_name    = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/storage/news');
            $image->move($destinationPath, $as_name);
            $News->image   = $as_name;
        }
        $News->save();
        return redirect(route('admin.news.index'));
    }

    public function edit($id)
    
    {
        $categories = Category::all();
        $news = News::find($id);

        return view('admin.news.edit',compact('news','categories'));
    }

    public function update(Request $request,$id){
        $News = News::find($id);
        $News->title = $request->title;
        $News->category_id = $request->category_id;
        $News->description = $request->description;
        $News->date = date('Y年m月d日');
        if($request->file('image') == null)
        {}
        else
        {
            if(isset($request->image)) {
                @unlink('/storage/news/'.$News->image);
            }
            $image      = $request->file('image');
            $as_name    = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/storage/news');
            $image->move($destinationPath, $as_name);
            $News->image = $as_name;
        }
        $News->save();
        return redirect(route('admin.news.index'));
    }

    public function destroy($id){
        News::find($id)->delete();
        return redirect()->back()->with('error','削除されました。');
    }
}
