@section('first-scripts')

{{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script> --}}
{{-- <script src="{{asset('static/js/jquery.min.js')}}"></script> --}}
    <link rel="stylesheet" href="{{asset('backend/plugins/select2/css/select2.min.css')}}">


    <script src="{{asset('backend/plugins/select2/js/select2.full.min.js')}}"></script>

@endsection
@section('scripts')

<script type="text/javascript">
$(function(){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });


    $('#home_team').select2();
    $('#away_team').select2();
    // $('#match_date').datetimepicker({
    //         format: 'YYYY-MM-DD HH:mm:ss',
    //         showClear: true
    //     });
});

</script>

@endsection
