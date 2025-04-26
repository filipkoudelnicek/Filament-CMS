@extends('layouts.app')
@section('title', $page->title)
@section('seo')<x-seo-module :seo="$page->content['seo'] ?? []" />@endsection

@section('content')
    <x-header.page-header :title="$page->title" />
    <livewire:article-list />
@endsection