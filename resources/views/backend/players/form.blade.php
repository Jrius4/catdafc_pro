<div class="col-xs-9">
    <div class="box">
      <div class="box-body ">

          <div class="form-group {{ $errors->has('first_name') ? 'has-error' : '' }}">
              {!! Form::label('first_name') !!}
              {!! Form::text('first_name', null, ['class' => 'form-control']) !!}

              @if($errors->has('first_name'))
                  <span class="help-block">{{ $errors->first('first_name') }}</span>
              @endif
          </div>
          <div class="form-group {{ $errors->has('middle_name') ? 'has-error' : '' }}">
            {!! Form::label('middle_name') !!}
            {!! Form::text('middle_name', null, ['class' => 'form-control']) !!}

            @if($errors->has('middle_name'))
                <span class="help-block">{{ $errors->first('middle_name') }}</span>
            @endif
        </div>
        <div class="form-group {{ $errors->has('last_name') ? 'has-error' : '' }}">
            {!! Form::label('last_name') !!}
            {!! Form::text('last_name', null, ['class' => 'form-control']) !!}

            @if($errors->has('last_name'))
                <span class="help-block">{{ $errors->first('last_name') }}</span>
            @endif
        </div>
          <div class="form-group {{ $errors->has('shirt_number') ? 'has-error' : '' }}">
              {!! Form::label('shirt_number') !!}
              {!! Form::text('shirt_number', null, ['class' => 'form-control']) !!}

              @if($errors->has('shirt_number'))
                  <span class="help-block">{{ $errors->first('shirt_number') }}</span>
              @endif
          </div>
          <div class="form-group {{ $errors->has('position') ? 'has-error' : '' }}">
            {!! Form::label('position') !!}
            {!! Form::text('position', null, ['class' => 'form-control']) !!}

            @if($errors->has('position'))
                <span class="help-block">{{ $errors->first('position') }}</span>
            @endif
        </div>
        <div class="form-group {{ $errors->has('former_team') ? 'has-error' : '' }}">
            {!! Form::label('former_team') !!}
            {!! Form::text('former_team', null, ['class' => 'form-control']) !!}

            @if($errors->has('former_team'))
                <span class="help-block">{{ $errors->first('former_team') }}</span>
            @endif
        </div>
          <div class="form-group {{ $errors->has('date_of_birth') ? 'has-error' : '' }}">
            {!! Form::label('date_of_birth') !!}
            {!! Form::text('date_of_birth', null, ['class' => 'form-control']) !!}

            @if($errors->has('date_of_birth'))
                <span class="help-block">{{ $errors->first('date_of_birth') }}</span>
            @endif
        </div>
        <div class="form-group {{ $errors->has('profile_picture') ? 'has-error' : '' }}">
            {!! Form::label('profile_picture') !!}
            {!! Form::file('profile_picture', null, ['class' => 'form-control']) !!}

            @if($errors->has('profile_picture'))
                <span class="help-block">{{ $errors->first('profile_picture') }}</span>
            @endif
        </div>

        <div class="form-group {{ $errors->has('biography') ? 'has-error' : '' }}">
            {!! Form::label('biography') !!}
            {!! Form::textarea('biography', null, ['class' => 'form-control','cols'=>'30','rows'=>'10']) !!}

            @if($errors->has('biography'))
                <span class="help-block">{{ $errors->first('biography') }}</span>
            @endif
        </div>
      </div>
      <!-- /.box-body -->
      <div class="box-footer">
          <button type="submit" class="btn btn-primary">{{ $player->exists ? 'Update' : 'Save' }}</button>
          <a href="{{ route('backend.players.index') }}" class="btn btn-default">Cancel</a>
      </div>
    </div>
    <!-- /.box -->
  </div>
