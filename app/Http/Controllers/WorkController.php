<?php

namespace App\Http\Controllers;

use App\Models\Work;
use Illuminate\Http\Request;

class WorkController extends Controller
{
    public function index(){
        $works=Work::orderBy('created_at', 'DESC')->get();
        return view('admin.works.view',compact('works'));
    }

    public function create(){

        return view('admin.works.create');
    }

    public function store(Request $request){
        $work = new Work();
        $work->company = $request->company;
        $work->title = $request->title;
        $work->content = $request->content;
        $work->description = $request->description;

        if($request->hasfile('image'))
        {
            $image           = $request->file('image');
            $as_name    = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/storage/work_images');
            $image->move($destinationPath, $as_name);
            $work->image   = $as_name;
        }
        $work->save();
        return redirect(route('admin.work.index'));
    }

    public function edit($id)
    {
        $work = Work::find($id);

        return view('admin.works.edit',compact('work'));
    }

    public function update(Request $request,$id){
        $work = Work::find($id);
        $work->company = $request->company;
        $work->title = $request->title;
        $work->content = $request->content;
        $work->description = $request->description;
        if($request->file('image') == null)
        {}
        else
        {
            if(isset($work->image)) {
                @unlink('/storage/work_images/'.$work->image);
            }
            $image      = $request->file('image');
            $as_name    = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/storage/work_images');
            $image->move($destinationPath, $as_name);
            $work->image = $as_name;
        }

        $work->save();
        return redirect(route('admin.work.index'));
    }

    public function destroy($id){
        Work::find($id)->delete();
        return redirect()->back()->with('error','削除されました。');
    }
}
