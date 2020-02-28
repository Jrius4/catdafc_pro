@extends('layouts.backend.main')

@section('title', 'Catda F.C | Add new player')

@section('content')

    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Players
          <small>Add new Player</small>
        </h1>
        <ol class="breadcrumb">
          <li>
              <a href="{{ url('/home') }}"><i class="fa fa-dashboard"></i> Dashboard</a>
          </li>
          <li><a href="{{ route('backend.players.index') }}">Players</a></li>
          <li class="active">Add new</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
          <div class="row">
              {!! Form::model($player, [
                  'method' => 'POST',
                  'route'  => 'backend.players.store',
                  'files'  => TRUE,
                  'id' => 'player-form'
              ]) !!}

              @include('backend.players.form')

            {!! Form::close() !!}
          </div>
        <!-- ./row -->
      </section>
      <!-- /.content -->
    </div>

@endsection

@include('backend.players.scripts')
