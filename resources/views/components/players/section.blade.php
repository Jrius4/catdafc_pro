<div class="site-section bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center mb-5">
                <h3 class="text-black">Catda F.C. Players</h3>
            </div>
        </div>

        <div class="row">
            {{-- <span style="display:none">{{$i=0}}</span>
            @while ($i<5)--}}
                @if($players->count()>0)

                @foreach ($players as $player)

                @endforeach
                <div class="mb-4 mb-lg-0 col-6 col-md-4 col-lg-2 text-center">
                    <div class="player mb-5">
                        <span class="team-number">{{$player->shirt_number}}</span>
                        <a href="javascrip:void(0)">
                            <img src="{{asset('img/players/'.$player->profile_picture)}}" alt="">
                        </a>
                        <h4 class="text-uppercase">{{$player->first_name." ".$player->middle_name." ".$player->last_name}}</h4>
                        <span class="position">{{$player->position}}</span>
                    </div>
                </div>
                @else



                @endif

            {{-- <span style="display:none">{{$i++}}</span>
            @endwhile --}}
        </div>
        <div class="text-center">
            <a href="#" class="btn btn-info">
                Meet Our Players  &raquo;
            </a>
        </div>
    </div>
</div>
