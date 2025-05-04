@extends('layouts.app')
@section('title', $article->title)
@section('seo')<x-seo-module :seo="$article->content['seo'] ?? []" />@endsection

@section('content')
    <x-page-header :title="$article->title" :background="$article->content['banner']" :author="$article->user->name" :publishedAt="$article->publish_time?->format('j.n.Y')"/>

    <div class="tmp-service-section tmp-section-gap article-detail">
        <div class="container">
            <div class="row">
                @isset($article->content['body'])
                    {!! $article->content['body'] !!}
                @endisset
            </div>
        </div>
    </div>
@endsection