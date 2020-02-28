@extends('layouts.home.main')
@section('content')
<div>
    {{-- section start --}}
    <div class="slide-one-item home-slider owl-carousel">
        @foreach ($posts as $row)
            <div class="site-blocks-cover overlay" style="{{$row->image_thumb_url?'background-image:url('.$row->image_thumb_url.');':'background-color:teal;'}}" data-aos="fade" data-stellar-background-ratio="0.5">
                <div class="container">
                    <div class="row align-items-center justify-content-start">
                        <div class="col-md-6 text-center text-md-left" data-aos="fade-up" data-aos-delay="400">
                            <h1 class="bg-text-title">{{$row->title}}</h1>
                            <p><a href="{{route('blog.show',$row->slug)}}" class="btn btn-info btn-sm rounded-0 py-3 px-5">Read More</a></p>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    {{-- section end --}}

    {{-- section start --}}
    <div class="site-section pt-0 feature-blocks-1" data-aos="fade" data-aos-delay="100">
        <div class="container">
            <div class="row">

                @foreach ($posts as $row)

                    <div class="col-md-6 col-lg-4">
                        <div class="p-3 p-md-5 feature-block-1 mb-5 mb-lg-0 bg" style="{{$row->image_thumb_url?'background-image:url('.$row->image_thumb_url.');':'background-color:teal;'}}">
                            <div class="text">
                                <h2 class="h5 text-white">{{ $row->title }}</h2>
                                {!! $row->excerpt_html !!}
                                <p class="mb-0"><a href="{{route('blog.show',$row->slug)}}" class="btn btn-info btn-sm px-4 py-2 rounded-0">Read More</a></p>
                            </div>
                        </div>
                    </div>

                @endforeach

            </div>
        </div>
    </div>
    {{-- section end --}}

    {{-- section end --}}

    <div class="site-blocks-vs site-section bg-light">
        <div class="container">
            <div class="border mb-3 rounded d-block d-lg-flex align-items-center p-3 next-match">
                <div class="mr-auto order-md-1 w-60 text-center text-lg-left mb-3 mb-lg-0">
                    Last Match
                    {{-- <div id="date-countdown"></div> --}}
                </div>

                <div class="ml-auto pr-4 order-md-2">
                    <div class="h5 text-black text-uppercase text-center text-lg-left">
                        <div class="d-block d-md-inline-block mb-3 mb-lg-0">
                            <img src="{{asset('img/teams/'.$teams->find($matches->first()->home_team)->logo)}}" alt="Image" class="mr-3 image">
                            <span class="d-block d-md-inline-block ml-0 ml-md-3 ml-lg-0">{{$teams->find($matches->first()->home_team)->name}}</span>
                        </div>
                            <span class="text-muted mx-3 text-normal mb-3 mb-lg-0 d-block d-md-inline ">vs</span>

                        <div class="d-block d-md-inline-block">
                            <img src="{{asset('img/teams/'.$teams->find($matches->first()->away_team)->logo)}}" alt="Image" class="mr-3 image">
                            <span class="d-block d-md-inline-block ml-0 ml-md-3 ml-lg-0">{{$teams->find($matches->first()->away_team)->name}}</span>
                        </div>
                    </div>
                </div>
            </div>

            {{-- start --}}
                <div class="bg-image overlay-info rounded mb-5" style="background-image: url('{{asset('soccer_assets/images/hero_bg_1.jpg')}}');" data-stellar-background-ratio="0.5">
                    <div class="row align-items-center">
                        <div class="col-md-12 col-lg-4 mb-4 mb-lg-0">
                            <div class="text-center text-lg-left">
                                <div class="d-block d-lg-flex align-items-center">
                                    <div class="image mx-auto mb-3 mb-lg-0 mr-lg-3">
                                        <img src="{{asset('img/teams/'.$teams->find($matches->first()->home_team)->logo)}}" alt="Image" class="img-fluid">
                                    </div>
                                    <div class="text">
                                        <h3 class="h5 mb-0 text-black">{{$teams->find($matches->first()->home_team)->name}}</h3>
                                        {{-- <span class="text-uppercase small country text-black">Brazil</span> --}}
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12 col-lg-4 text-center mb-4 mb-lg-0">
                            <div class="d-inline-block">
                                {{-- <p class="mb-2"><small class="text-uppercase text-black font-weight-bold">Kampala Regional League &mdash; Round 10</small></p> --}}
                                <div class="bg-black py-2 px-4 mb-2 text-white d-inline-block rounded"><span class="h3">{{$matches->first()->home_score.' : '.$matches->first()->away_score}}</span></div>
                            <p class="mb-0"><small class="text-uppercase text-black font-weight-bold">{{$matches->first()->match_date}}</small></p>
                            </div>
                        </div>

                        <div class="col-md-12 col-lg-4 text-center text-lg-right">
                            <div class="">
                                <div class="d-block d-lg-flex align-items-center">
                                    <div class="image mx-auto ml-lg-3 mb-3 mb-lg-0 order-2">
                                        <img src="{{asset('img/teams/'.$teams->find($matches->first()->away_team)->logo)}}" alt="Image" class="img-fluid">
                                    </div>
                                    <div class="text order-1">
                                        <h3 class="h5 mb-0 text-black">{{$teams->find($matches->first()->away_team)->name}}</h3>
                                        {{-- <span class="text-uppercase small country text-black">London</span> --}}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            {{-- end --}}

            {{-- start --}}
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="h6 text-uppercase text-black font-weight-bold mb-3">Previous Matches</h2>
                        <div class="site-block-tab">
                            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Matches</a>
                                </li>
                                {{-- <li class="nav-item">
                                    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Match 2</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Match 3</a>
                                </li> --}}
                            </ul>

                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            {{-- <span style="display:none">{{$i=0}}</span>
                                            @while ($i<5) --}}
                                            @foreach ($matches as $match)


                                            <div class="row bg-white align-items-center ml-0 mr-0 py-4 match-entry">
                                                <div class="col-md-4 col-lg-4 mb-4 mb-lg-0">
                                                    <div class="text-center text-lg-left">
                                                        <div class="d-block d-lg-flex align-items-center">
                                                            <div class="image image-small text-center mb-3 mb-lg-0 mr-lg-3">
                                                                <img src="{{asset('img/teams/'.$teams->find($match->home_team)->logo)}}" alt="Image" class="img-fluid" style="max-width:50px !important;max-height:50px !important;">
                                                            </div>
                                                            <div class="text">
                                                                <h3 class="h5 mb-0 text-black">{{$teams->find($match->home_team)->name}}</h3>
                                                                {{-- <span class="text-uppercase small country">Brazil</span>  --}}
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-4 col-lg-4 text-center mb-4 mb-lg-0">
                                                    <div class="d-inline-block">
                                                        <div class="bg-black py-2 px-4 mb-2 text-white d-inline-block rounded"><span class="h5">{{$match->home_score.' : '.$match->away_score}}</span></div>
                                                    </div>
                                                </div>

                                                <div class="col-md-4 col-lg-4 text-center text-lg-right">
                                                    <div class="">
                                                        <div class="d-block d-lg-flex align-items-center">
                                                            <div class="image image-small ml-lg-3 mb-3 mb-lg-0 order-2">
                                                                <img src="{{asset('img/teams/'.$teams->find($match->away_team)->logo)}}" alt="Image" class="img-fluid">
                                                            </div>
                                                            <div class="text order-1 w-100">
                                                                <h3 class="h5 mb-0 text-black">{{$teams->find($match->away_team)->name}}</h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                            @endforeach

{{--
                                            <span style="display:none">{{$i++}}</span>
                                            @endwhile --}}

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            {{-- end --}}
        </div>
    </div>

    {{-- section end --}}


    {{-- section end --}}

    <div class="site-section block-13 bg-info fixed overlay-info bg-image" style="background-image: url('{{asset('soccer_assets/images/hero_bg_1.jpg')}}');" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-12 text-center">
                    <h2>More Game Highlights</h2>
                </div>
            </div>

            <div class="row">
                <div class="nonloop-block-13 owl-carousel">
                    @foreach ($posts as $post)

                        <div class="item">
                            <div class="block-12">
                                @if ($post->image_thumb_url)

                                    <figure>
                                        <img src='{{ $post->image_thumb_url }}' alt="Image" class="img-fluid">
                                    </figure>

                                    <div class="text">
                                        <span class="meta">{{ $post->date}}</span>
                                        <div class="text-inner">
                                            <h2 class="heading mb-3"><a href="{{route('blog.show',$post->slug)}}" class="text-black">{{ $post->title }}</a></h2>
                                            {!! $post->excerpt_html !!}
                                        </div>
                                    </div>
                                @else
                                    <div class="my-2 py-2">
                                        <span class="meta">{{ $post->date}}</span>
                                        <div class="text" style="padding:1.5em 0.3em !important">

                                            <div class="text-inner">

                                                <h2 class="heading mb-3"><a href="{{route('blog.show',$post->slug)}}" class="text-black">{{ $post->title }}</a></h2>

                                                {!! $post->excerpt_html !!} <br> <span class="text-muted">{{ $post->date}}</span>
                                            </div>
                                        </div>
                                    </div>
                                @endif

                            </div>
                        </div>

                    @endforeach
                </div>
            </div>

        </div>
    </div>

    {{-- section end --}}

    {{-- section start --}}

    <div class="site-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-12 text-center">
                    <h2 class="text-black">Latest News</h2>
                </div>
            </div>
            <div class="row">
                @foreach ($posts as $post)

                    <div class="col-md-6 col-lg-4">
                        <div class="post-entry">
                            @if ($post->image_thumb_url)
                                <div class="image">
                                    <img src="{{$post->image_thumb_url}}" alt="Image" class="img-fluid">
                                </div>
                            @endif
                            <div class="text p-4">
                                <h2 class="h5 text-black"><a href="{{route('blog.show',$post->slug)}}">{{$post->title}}</a></h2>

                                <div class="mb-0">
                                    {!! $post->excerpt_html !!}
                                </div>
                            </div>

                        </div>
                    </div>

                @endforeach
            </div>
        </div>
    </div>

    {{-- section end --}}

    {{-- section start --}}
        @include('components.players.section')
    {{-- section end --}}








</div>
@endsection
