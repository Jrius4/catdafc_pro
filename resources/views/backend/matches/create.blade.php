@extends('layouts.backend.main')

@section('title', 'Catda F.C | Add new match')



@section('content')

    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Matches
          <small>Add new match</small>
        </h1>
        <ol class="breadcrumb">
          <li>
              <a href="{{ url('/home') }}"><i class="fa fa-dashboard"></i> Dashboard</a>
          </li>
          <li><a href="{{ route('backend.matches.index') }}">Matches</a></li>
          <li class="active">Add new</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
          <div class="row">
              {!! Form::model($socmatch, [
                  'method' => 'POST',
                  'route'  => 'backend.matches.store',
                  'files'  => TRUE,
                  'id' => 'match-form'
              ]) !!}

              @include('backend.matches.form')

            {!! Form::close() !!}
          </div>
        <!-- ./row -->
      </section>
      <!-- /.content -->
    </div>

@endsection

@include('backend.matches.scripts')
