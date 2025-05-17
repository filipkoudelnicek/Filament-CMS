@extends('layouts.app')
@section('title', $page->title)
@section('seo')<x-seo-module :seo="$page->content['seo'] ?? []" />@endsection

@section('content')
    <x-page-header :title="$page->title" />
    
    @isset($page->content['text'])
        {!! $page->content['text'] !!}
    @endisset
@endsection