@extends('layouts.backend.main')

@section('title', 'Catda F.C | Add new match')

@section('content')

    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          matches
          <small>Edit match</small>
        </h1>
        <ol class="breadcrumb">
          <li>
              <a href="{{ url('/home') }}"><i class="fa fa-dashboard"></i> Dashboard</a>
          </li>
          <li><a href="{{ route('backend.categories.index') }}">matches</a></li>
          <li class="active">Edit</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
          <div class="row">
              {!! Form::model($socmatch, [
                  'method' => 'PUT',
                  'route'  => ['backend.matches.update',$socmatch->id],
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
