@extends('layouts.admin')



@section('content')
@component('admin.includes.title')
Employee list
@endcomponent


@include('admin.includes.searchForm')
<a href="{{ url('/admin/employees')}}">See all posts</a>

@if ($employees)
<div class="count">Hey !! found <strong>{{ count($employees) }}</strong></div>
@include('admin.includes.postList')
@else
    <div>Sorry no post found.</div>
@endif



 {{-- @if(Session::has('flash_admin'))
<div class="flash_message">
    {{ Session('flash_admin')}}
</div>
@endif --}}


 @endsection
