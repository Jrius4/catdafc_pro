<div class="col-xs-9">
    <div class="box">
      <div class="box-body ">

          <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
              {!! Form::label('Name') !!}
              {!! Form::text('name', null, ['class' => 'form-control']) !!}

              @if($errors->has('name'))
                  <span class="help-block">{{ $errors->first('name') }}</span>
              @endif
          </div>
          <div class="form-group {{ $errors->has('slogan') ? 'has-error' : '' }}">
              {!! Form::label('slogan') !!}
              {!! Form::text('slogan', null, ['class' => 'form-control']) !!}

              @if($errors->has('slogan'))
                  <span class="help-block">{{ $errors->first('slogan') }}</span>
              @endif
          </div>
          <div class="form-group {{ $errors->has('team_base') ? 'has-error' : '' }}">
            {!! Form::label('team_base') !!}
            {!! Form::text('team_base', null, ['class' => 'form-control']) !!}

            @if($errors->has('team_base'))
                <span class="help-block">{{ $errors->first('team_base') }}</span>
            @endif
        </div>
        <div class="form-group {{ $errors->has('logo') ? 'has-error' : '' }}">
            {!! Form::label('logo') !!}
            {!! Form::file('logo', null, ['class' => 'form-control']) !!}

            @if($errors->has('logo'))
                <span class="help-block">{{ $errors->first('logo') }}</span>
            @endif
        </div>
      </div>
      <!-- /.box-body -->
      <div class="box-footer">
          <button type="submit" class="btn btn-primary">{{ $team->exists ? 'Update' : 'Save' }}</button>
          <a href="{{ route('backend.teams.index') }}" class="btn btn-default">Cancel</a>
      </div>
    </div>
    <!-- /.box -->
  </div>
