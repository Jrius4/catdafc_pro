<?php
namespace App\Views\Composers;

use App\Post;
use Illuminate\View\View;

class FooterComposer
{
    public function compose(View $view)
    {
        $this->composeMostRecentPosts($view);
    }

    private function composeMostRecentPosts(View $view)
    {
        $mostRecent = Post::published()->latest()->paginate(3);

        $view->with('mostRecent',$mostRecent);
    }
}
