@extends('layouts.app')
@section('title', $page->title)
@section('seo')<x-seo-module :seo="$page->content['seo'] ?? []" />@endsection

@section('content')
    @isset($page->content['title'])<h1>{{ $page->content['title'] }}</h1>@endisset
@endsection