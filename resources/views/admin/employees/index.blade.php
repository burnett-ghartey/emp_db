@extends('layouts.admin')


@section('content')
@component('admin.includes.title')
Employees list
@endcomponent


@include('admin.includes.searchForm')

@include('admin.includes.postList')
{{ $employees->links() }}

@if(Session::has('flash_admin'))
<div class="flash_message">
    {{ Session('flash_admin')}}
</div>
@endif
@endsection