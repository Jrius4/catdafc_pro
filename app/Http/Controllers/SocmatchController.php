<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Backend\BackendController;
use App\Socmatch;
use App\Team;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class SocmatchController extends BackendController
{
    public function __construct()
    {
        parent::__construct();
        $this->uploadPath = public_path('img/matches');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $teams = new Team();
        $matches = Socmatch::orderBy('match_date','desc')->paginate(10);

        return view('backend.matches.index',compact('matches','teams'));


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Socmatch $socmatch)
    {
        $teams = Team::get();
        // $socmatch = Socmatch::findOrFail($id);


        return view('backend.matches.create',compact('socmatch','teams'));
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
            'report_overview'=>'nullable',
            'report_detail'=>'nullable',
            'home_team'=>'required',
            'away_team'=>'required',
            'home_score'=>'nullable',
            'away_score'=>'nullable',
            'image'=>'nullable|image|mime:jpeg,jpg,png',
            'match_date'=>'required',
        );
        $request->validate($rules);

        $match = new Socmatch();

        $match->report_overview = $request['report_overview'];
        $match->report_detail = $request['report_detail'];
        $match->home_team = $request['home_team'];
        $match->away_team = $request['away_team'];
        $match->home_score = $request['home_score'];
        $match->away_score = $request['away_score'];
        $match->match_date = $request['match_date'];

        if($request['image']!=null)
        {
            $extension1 = Input::file('image')->getClientOriginalExtension();
            $filename1 = rand(10,1000)."_".date('d-m-Y-H-i-s').'_image'. '.' . $extension1;
            $request->file('image')->move($this->uploadPath,$filename1);
            $match->image = $filename1;
        }
        $match->save();

        return redirect()->route('backend.matches.index')->with('message'.'ma$match Created successfully');


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Socmatch  $socmatch
     * @return \Illuminate\Http\Response
     */
    public function show(Socmatch $socmatch)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Socmatch  $socmatch
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $socmatch = Socmatch::findOrFail($id);
        $teams = Team::get();

        return view('backend.matches.edit',compact('socmatch','teams'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Socmatch  $socmatch
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $match = Socmatch::findOrFail($id);
        $rules = array(
            'report_overview'=>'nullable',
            'report_detail'=>'nullable',
            'home_team'=>'required',
            'away_team'=>'required',
            'home_score'=>'nullable',
            'away_score'=>'nullable',
            'image'=>'nullable|image|mime:jpeg,jpg,png',
            'match_date'=>'required',
        );

        $request->validate($rules);

        if($request['image']!=null)
        {
            $this->removeImage($match->image);
            $extension1 = Input::file('image')->getClientOriginalExtension();
             $filename1 = rand(10,1000)."_".date('d-m-Y-H-i-s').'_image'. '.' . $extension1;

            $request->file('image')->move($this->uploadPath,$filename1);
            // $team->image = $filename1;
            $match->update(array("image"=>$filename1));
        }
        $match->update(array(
            'report_overview'=>$request['report_overview'],
            'report_detail'=>$request['report_detail'],
            'home_team'=>$request['home_team'],
            'away_team'=>$request['away_team'],
            'home_score'=>$request['home_score'],
            'away_score'=>$request['away_score'],
            'match_date'=>$request['match_date']
        ));
        return redirect()->route('backend.matches.index')->with('message'.'Match Updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Socmatch  $socmatch
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $match = Socmatch::findOrFail($id);
        $this->removeImage($match->image);
        $match->delete();
        return redirect()->route('backend.matches.index')->with('message'.'Player delete successfully');
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
