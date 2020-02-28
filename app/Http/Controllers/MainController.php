<?php

namespace App\Http\Controllers;

use App\Player;
use App\Post;
use App\Socmatch;
use App\Team;
use Illuminate\Http\Request;

class MainController extends Controller
{
    protected $limit = 3;
    public function home()
    {
        $players = Player::get();
        $teams = new Team();
        $matches = Socmatch::orderBy('match_date','desc')->paginate(10);
        $posts = Post::with('author', 'tags', 'category', 'comments')
                        ->latestFirst()
                        ->published()
                        ->filter(request()->only(['term', 'year', 'month']))
                        ->simplePaginate($this->limit);

        return view('components.home.index',compact('posts','matches','teams','players'));
    }
    public function about()
    {

        return view('components.home.about-page');
    }
}
