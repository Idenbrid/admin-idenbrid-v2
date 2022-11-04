<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index(){
        $categories=Category::orderBy('created_at', 'DESC')->get();
        return view('admin.category.view',compact('categories'));
    }

    public function create(){
   
        return view('admin.category.create');
    }

    public function store(Request $request){
        $category = new Category();
        $category->title = $request->title;
        $category->save();
        return redirect(route('admin.category.index'));
    }

    public function edit($id)
    {
        $category = Category::find($id);

        return view('admin.category.edit',compact('category'));
    }

    public function update(Request $request,$id){
        $category = Category::find($id);
        $category->title = $request->title;
        $category->save();
        return redirect(route('admin.category.index'));
    }

    public function destroy($id){
        Category::find($id)->delete();
        return redirect()->back()->with('error','削除されました。');
    }
}
