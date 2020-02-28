<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    @include('layouts.home.head')
    @yield('styles')
</head>
<body  class="hold-transition skin-blue sidebar-mini">
    <div class="site-wrap">
        @include('layouts.home.nav-section')



        @yield('content')
        @include('layouts.home.footer')



    </div>


    @include('layouts.home.scripts')

</body>
</html>
