<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Backend\BackendController;
use App\Team;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class TeamController extends BackendController
{
    protected $uploadPath;

    public function __construct()
    {
        parent::__construct();
        $this->uploadPath = public_path('img/teams');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $teams =Team::paginate(3);
        return view('backend.teams.index',compact('teams'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Team $team)
    {
        return view('backend.teams.create',compact('team'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = array(
            'name'=>'required|unique:teams',
            'team_base'=>'nullable',
            'slogan'=>'nullable',
            'logo'=>'required|image|mimes:jpg,svg,png,jpeg|max:1024',
        );
        $request->validate($rules);

        $team = new Team();
        $team->name = $request['name'];
        $team->team_base = $request['team_base'];
        $team->slogan = $request['slogan'];

        $extension1 = Input::file('logo')->getClientOriginalExtension();
        $filename1 = str_slug($request['name'],'_').'_logo'. '.' . $extension1;
        $request->file('logo')->move($this->uploadPath,$filename1);
        $team->logo = $filename1;
        $team->save();
        return redirect()->route('backend.teams.index')->with('message'.'Team Created successfully');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function show(Team $team)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function edit(Team $team)
    {
        return view('backend.teams.edit',compact('team'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $team = Team::findOrFail($id);
        $rules = array(
            'name'=>'required',
            'team_base'=>'nullable',
            'slogan'=>'nullable',
            'logo'=>'nullable|image|mimes:jpg,svg,png,jpeg|max:1024',
        );

        $request->validate($rules);

        if($request['logo']!=null)
        {
            $this->removeImage($team->logo);
            $extension1 = Input::file('logo')->getClientOriginalExtension();
            $filename1 = str_slug($request['name'],'_').'_logo'. '.' . $extension1;
            $request->file('logo')->move($this->uploadPath,$filename1);
            // $team->logo = $filename1;
            $team->update(array("logo"=>$filename1));
        }
        $team->update(array(
            'name'=>$request['name'],
            'slogan'=>$request['slogan'],
            'team_base'=>$request['team_base']
        ));
        return redirect()->route('backend.teams.index')->with('message'.'Team Created successfully');



    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $team = Team::findOrFail($id);
        $this->removeImage($team->logo);
        $team->delete();
        return redirect()->route('backend.teams.index')->with('message'.'Team delete successfully');


    }
    private function removeImage($image)
    {
        if ( ! empty($image) )
        {
            $imagePath     = $this->uploadPath . '/' . $image;
            // $ext           = substr(strrchr($image, '.'), 1);
            // $thumbnail     = str_replace(".{$ext}", "_thumb.{$ext}", $image);
            // $thumbnailPath = $this->uploadPath . '/' . $thumbnail;

            if ( file_exists($imagePath) ) unlink($imagePath);
            // if ( file_exists($thumbnailPath) ) unlink($thumbnailPath);
        }
    }
}
