<table class="table table-bordered">
    <thead>
        <tr>
            <td width="80">Action</td>
            <td>Logo</td>
            <td>Team Name</td>
        </tr>
    </thead>
    <tbody>
        @foreach($teams as $team)

            <tr>
                <td>
                    {!! Form::open(['method' => 'DELETE', 'route' => ['backend.teams.destroy', $team->id]]) !!}
                        <a href="{{ route('backend.teams.edit', $team->id) }}" class="btn btn-xs btn-default">
                            <i class="fa fa-edit"></i>
                        </a>
                        @if($team->id == 1)
                            <button onclick="return false" type="submit" class="btn btn-xs btn-danger disabled">
                                <i class="fa fa-times"></i>
                            </button>
                        @else
                            <button onclick="return confirm('Are you sure?');" type="submit" class="btn btn-xs btn-danger">
                                <i class="fa fa-times"></i>
                            </button>
                        @endif
                    {!! Form::close() !!}
                </td>
                <td>
                    <img src="{{asset('img/teams/'.$team->logo)}}" alt="{{$team->name}}" class="img-fluid" style="max-height:50px;max-width:50px">
                </td>
                <td>{{ $team->name }}</td>
            </tr>

        @endforeach
    </tbody>
</table>
