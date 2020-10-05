@extends('layouts.admin');
@push('styles')
<link href="{{asset('custom/styles/dashboard.css')}}" rel="stylesheet">
@endpush

@section('content')

<div class="grid">

    
    <div class="at-spl-bx">
        <div class="om-fr-sd">
            <span class="ps-at-0">Total Users</span>
        <div  class="ps-at-1">{{ count($users) }}</div>
        </div>
    </div>
    
    <div class="at-spl-bx">
        <div class="om-fr-sd">
            <span class="ps-at-0">Total Employees</span>
           
            <div  class="ps-at-1">{{ count($employees) }}</div>
        </div>
    </div>
    
</div>

@endsection