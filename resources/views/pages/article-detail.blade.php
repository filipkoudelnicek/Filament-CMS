@extends('layouts.app')
@section('title', $article->title)
@section('seo')<x-seo-module :seo="$article->content['seo'] ?? []" />@endsection

@section('content')
    <h1>Tohle je detail článku</h1>
@endsection