<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index(){
        $news=News::orderBy('created_at', 'DESC')->get();
        return view('admin.news.view',compact('news'));
    }

    public function create(){
        return view('admin.news.create');
    }

    public function store(Request $request){
        $News = new News();
        $News->title = $request->title;
        $News->date = date('Y年m月d日');
        $News->description = $request->description;
        $News->save();
        return redirect()->back();
    }

    public function edit($id)
    {
        $news = News::find($id);

        return view('admin.news.edit',compact('news'));
    }

    public function update(Request $request,$id){
        $News = News::find($id);
        $News->title = $request->title;
        $News->description = $request->description;
        $News->date = date('Y年m月d日');
        $News->save();
        return redirect(route('admin.news.index'));
    }

    public function destroy($id){
        News::find($id)->delete();
        return redirect()->back()->with('error','削除されました。');
    }
}
