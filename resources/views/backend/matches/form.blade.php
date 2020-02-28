<div class="col-xs-9">
    <div class="box">
      <div class="box-body ">

          <div class="form-group {{ $errors->has('home_team') ? 'has-error' : '' }}">
              {!! Form::label('home_team') !!}

              <select name="home_team" id="home_team" class="form-control col-12">
                  <option value="">Select Home Team</option>

                  @foreach ($teams as $team)

                    <option value="{{$team->id}}" @if(old('home_team')) selected @endif @if($socmatch->home_team == $team->id && $socmatch->exists) selected @endif>{{$team->name}}</option>

                  @endforeach
              </select>
              @if($errors->has('home_team'))
                  <span class="help-block">{{ $errors->first('home_team') }}</span>
              @endif
          </div>
          <div class="form-group {{ $errors->has('away_team') ? 'has-error' : '' }}">
            {!! Form::label('away_team') !!}

            <select name="away_team" id="away_team" class="form-control col-12">
                <option value="">Select Away Team</option>

                @foreach ($teams as $team)
                    <option value="{{$team->id}}" @if(old('away_team')) selected @endif @if($socmatch->away_team == $team->id && $socmatch->exists) selected @endif>{{$team->name}}</option>
                @endforeach
            </select>
            @if($errors->has('away_team'))
                <span class="help-block">{{ $errors->first('away_team') }}</span>
            @endif
        </div>

        <div class="form-group {{ $errors->has('last_name') ? 'has-error' : '' }}">
            {!! Form::label('home_score') !!}
            {!! Form::text('home_score', null, ['class' => 'form-control']) !!}

            @if($errors->has('home_score'))
                <span class="help-block">{{ $errors->first('home_score') }}</span>
            @endif
        </div>
          <div class="form-group {{ $errors->has('away_score') ? 'has-error' : '' }}">
              {!! Form::label('away_score') !!}
              {!! Form::text('away_score', null, ['class' => 'form-control']) !!}

              @if($errors->has('away_score'))
                  <span class="help-block">{{ $errors->first('away_score') }}</span>
              @endif
          </div>


          <div class="form-group {{ $errors->has('match_date') ? 'has-error' : '' }}">
            {!! Form::label('match_date') !!}
            {!! Form::date('match_date', $socmatch->exists ? $socmatch->match_date:date("Y-m-d H:i:s"), ['class' => 'form-control',"id"=>"match_date"]) !!}

            @if($errors->has('match_date'))
                <span class="help-block">{{ $errors->first('match_date') }}</span>
            @endif
        </div>
        <div class="form-group {{ $errors->has('image') ? 'has-error' : '' }}">
            {!! Form::label('image') !!}
            {!! Form::file('image', null, ['class' => 'form-control']) !!}

            @if($errors->has('image'))
                <span class="help-block">{{ $errors->first('image') }}</span>
            @endif
        </div>

        <div class="form-group {{ $errors->has('report_overview') ? 'has-error' : '' }}">
            {!! Form::label('report_overview') !!}
            {!! Form::textarea('report_overview', null, ['class' => 'form-control','cols'=>'30','rows'=>'10']) !!}

            @if($errors->has('report_overview'))
                <span class="help-block">{{ $errors->first('report_overview') }}</span>
            @endif
        </div>
      </div>
      <!-- /.box-body -->
      <div class="box-footer">
          <button type="submit" class="btn btn-primary">{{ $socmatch->exists ? 'Update' : 'Save' }}</button>
          <a href="{{ route('backend.matches.index') }}" class="btn btn-default">Cancel</a>
      </div>
    </div>
    <!-- /.box -->
  </div>
