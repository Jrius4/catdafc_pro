<table class="table table-bordered">
    <thead>
        <tr>
            <td width="80">Action</td>
            <td>date</td>
            <td>Home Team</td>
            <td>Home Score</td>
            <td>Away Team</td>
            <td>Away Score</td>
        </tr>
    </thead>
    <tbody>
        @foreach($matches as $match)

            <tr>
                <td>
                    {!! Form::open(['method' => 'DELETE', 'route' => ['backend.matches.destroy', $match->id]]) !!}
                        <a href="{{ route('backend.matches.edit', $match->id) }}" class="btn btn-xs btn-default">
                            <i class="fa fa-edit"></i>
                        </a>

                            <button onclick="return confirm('Are you sure?');" type="submit" class="btn btn-xs btn-danger">
                                <i class="fa fa-times"></i>
                            </button>
                    {!! Form::close() !!}
                </td>
                <td>{{$match->match_date}}</td>
                <td> <img src="{{asset('img/teams/'.$teams->find($match->home_team)->logo)}}" alt="" style="max-height:50px;max-width:50px"/> {{$teams->find($match->home_team)->name}}</td>
                <td>{{$match->home_score}}</td>
                <td> <img src="{{asset('img/teams/'.$teams->find($match->away_team)->logo)}}" alt="" style="max-height:50px;max-width:50px"/> {{$teams->find($match->away_team)->name}}</td>
                <td>{{$match->away_score}}</td>

            </tr>

        @endforeach
    </tbody>
</table>
