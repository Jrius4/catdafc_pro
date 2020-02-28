@extends('layouts.home.main')

@section('content')
<div>
    <div class="site-blocks-cover overlay" style="background-image: url('{{asset('img/field_2.jpg')}}');" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row align-items-center justify-content-start">
                <div class="col-md-6 text-center text-md-left" data-aos="fade-up" data-aos-delay="400">
                    <h1 class="bg-text-title">News</h1>
                    <p class="mt-4">
                        Ssenabulya James's strike hands Mawogola a highly needed first win of the tournament to add more pressure to Buddu as Kizito Fahad was
                        on the score sheet as Bugerere defeats Ssese
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section">
        <div class="container">
            <div class="row mb-5">

                @foreach ($posts as $post)

                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="post-entry">
                        @if ($post->image_thumb_url)
                            <div class="image">
                                <img src="{{$post->image_thumb_url}}" alt="Image" class="img-fluid"/>
                            </div>
                        @endif
                        <div class="text p-4">
                            <h2 class="h5 text-black">
                                <a href="{{route('blog.show',$post->slug)}}">{{$post->title}}</a>
                            </h2>
                            {{-- <span></span> --}}
                            <p class="mb-0">{!!$post->excerpt_html!!}</p>
                            {{-- <span class="text-lowercase date d-block mb-3"><i class="icon-comment"></i></span> --}}
                        </div>
                    </div>
                </div>

                @endforeach

            </div>


            <div class="row d-flex justify-content-center">
                <nav>
                    {{ $posts->appends(request()->only(['term', 'month', 'year']))->links() }}
                </nav>
            </div>
        </div>
    </div>
</div>
@endsection
