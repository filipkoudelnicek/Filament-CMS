@extends('layouts.app')
@section('title', $article->title)
@section('seo')<x-seo-module :seo="$article->content['seo'] ?? []" />@endsection

@section('content')
    <x-header.page-header :title="$article->title" :background="$article->content['image']"/>
    @isset($article->content['image'])
        <x-curator-glider :media="$article->content['image']"/>
    @endisset
@endsection