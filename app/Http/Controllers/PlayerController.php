<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Backend\BackendController;
use App\Player;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class PlayerController extends BackendController
{
    public function __construct()
    {
        parent::__construct();
        $this->uploadPath = public_path('img/players');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $players = Player::paginate(5);
        return view('backend.players.index',compact('players'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Player $player)
    {
        return view('backend.players.create',compact('player'));
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
            'shirt_number'=>'required|unique:players',
            'middle_name'=>'nullable',
            'first_name'=>'required',
            'former_team'=>'nullable',
            'last_name'=>'required',
            'position'=>'required',
            'date_of_birth'=>'required',
            'biography'=>'required',
            'profile_picture'=>'required|image|mimes:jpg,svg,png,jpeg|max:1024',
        );
        $request->validate($rules);
        $player = new Player();
        $player->first_name = $request['first_name'];
        $player->middle_name = $request['middle_name'];
        $player->shirt_number = $request['shirt_number'];
        $player->former_team = $request['former_team'];
        $player->last_name = $request['last_name'];
        $player->position = $request['position'];
        $player->date_of_birth = $request['date_of_birth'];
        $player->biography = $request['biography'];

        $extension1 = Input::file('profile_picture')->getClientOriginalExtension();
        $filename1 = str_slug($request['first_name'],'_').str_slug($request['middle_name'],'_').str_slug($request['last_name'],'_').'_profile_picture'. '.' . $extension1;
        $request->file('profile_picture')->move($this->uploadPath,$filename1);
        $player->profile_picture = $filename1;
        $player->save();
        return redirect()->route('backend.players.index')->with('message'.'Player Created successfully');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Player  $player
     * @return \Illuminate\Http\Response
     */
    public function show(Player $player)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Player  $player
     * @return \Illuminate\Http\Response
     */
    public function edit(Player $player)
    {
        return view('backend.players.edit',compact('player'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Player  $player
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $player = Player::findOrFail($id);
        $rules = array(
            'shirt_number'=>'required',
            'middle_name'=>'nullable',
            'first_name'=>'required',
            'former_team'=>'nullable',
            'last_name'=>'required',
            'position'=>'required',
            'date_of_birth'=>'required',
            'biography'=>'required',
            'profile_picture'=>'nullable|image|mimes:jpg,svg,png,jpeg|max:1024',
        );

        $request->validate($rules);

        if($request['profile_picture']!=null)
        {
            $this->removeImage($player->profile_picture);
            $extension1 = Input::file('profile_picture')->getClientOriginalExtension();
             $filename1 = str_slug($request['first_name'],'_').str_slug($request['middle_name'],'_').str_slug($request['last_name'],'_').'_profile_picture'. '.' . $extension1;

            $request->file('profile_picture')->move($this->uploadPath,$filename1);
            // $team->profile_picture = $filename1;
            $player->update(array("profile_picture"=>$filename1));
        }
        $player->update(array(
            'shirt_number'=>$request['shirt_number'],
            'middle_name'=>$request['middle_name'],
            'first_name'=>$request['first_name'],
            'last_name'=>$request['last_name'],
            'position'=>$request['position'],
            'date_of_birth'=>$request['date_of_birth'],
            'biography'=>$request['biography']
        ));
        return redirect()->route('backend.players.index')->with('message'.'Player Updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Player  $player
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $player = Player::findOrFail($id);
        $this->removeImage($player->profile_picture);
        $player->delete();
        return redirect()->route('backend.players.index')->with('message'.'Player delete successfully');
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
