@extends('layouts.app')
@section('title', $page->title)
@section('seo')<x-seo-module :seo="$page->content['seo'] ?? []" />@endsection

@section('content')
    <x-page-header :title="$page->title" />
    
    <div class="contact-area tmp-section-gap">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-5">
                    <div class="contact-inner">
                        <div class="section-head section-head-one-side text-align-left" data-sal-delay="150" data-sal="slide-up" data-sal-duration="800">
                            @isset($page->content['contactTitleLeft'])
                                <span class="title">{{ $page->content['contactTitleLeft'] }}</span>
                            @endisset

                            @isset($page->content['contactTextLeft'])
                                <p class="description">
                                    {{ $page->content['contactTextLeft'] }}
                                </p>
                            @endisset
                        </div>

                        <ul class="ft-link ft-link-style-three">
                            @isset($page->content['phoneName'], $page->content['phoneInformation'])
                                <li>
                                    <div class="single-contact background-transparent">
                                        <div class="icon">
                                            <i class="fa-light fa-phone"></i>
                                        </div>
                                        <div class="content">
                                            <span>{{ $page->content['phoneName'] }}</span>
                                            <a class="contact-here" href="tel:{{ $page->content['phoneInformation'] }}">
                                                {{ $page->content['phoneInformation'] }}
                                            </a>
                                        </div>
                                    </div>
                                </li>
                            @endisset

                            @isset($page->content['emailName'], $page->content['emailInformation'])
                                <li>
                                    <div class="single-contact background-transparent">
                                        <div class="icon">
                                            <i class="fa-solid fa-envelope-open-text"></i>
                                        </div>
                                        <div class="content">
                                            <span>{{ $page->content['emailName'] }}</span>
                                            <a class="contact-here" href="mailto:{{ $page->content['emailInformation'] }}">
                                                {{ $page->content['emailInformation'] }}
                                            </a>
                                        </div>
                                    </div>
                                </li>
                            @endisset

                            @isset($page->content['addressName'], $page->content['addressInformation'])
                                <li>
                                    <div class="single-contact background-transparent">
                                        <div class="icon">
                                            <i class="fa-regular fa-map-location-dot"></i>
                                        </div>
                                        <div class="content">
                                            <span>{{ $page->content['addressName'] }}</span>
                                            <a class="contact-here" href="#!">
                                                {{ $page->content['addressInformation'] }}
                                            </a>
                                        </div>
                                    </div>
                                </li>
                            @endisset
                        </ul>

                    </div>
                </div>

                <div class="col-lg-7" data-sal-delay="150" data-sal="slide-up" data-sal-duration="800">
                    <div class="contact-inner">
                        <div class="section-head section-head-one-side text-align-left">
                            @isset($page->content['contactTitleRight'])
                                <span class="title">{{ $page->content['contactTitleRight'] }}</span>
                            @endisset

                            @isset($page->content['contactTextRight'])
                                <p class="description">
                                    {{ $page->content['contactTextRight'] }}
                                </p>
                            @endisset
                        </div>

                        <livewire:contact-form />

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
