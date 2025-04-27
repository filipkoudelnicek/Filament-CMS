@extends('layouts.app')
@section('title', $page->title)
@section('seo')<x-seo-module :seo="$page->content['seo'] ?? []" />@endsection

@section('content')
    <x-header.page-header :title="$page->title" />
    
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

    <div class="tmp-map-area tmp-sectiongapBottom">
        <div class="map-area-flotimg-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d83372.61742071428!2d17.59410698629843!3d49.231013196691556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47130cad4c888e0d%3A0x418d4c16a8ac214f!2zWmzDrW4!5e0!3m2!1scs!2scz!4v1745779583581!5m2!1scs!2scz" width="600" height="650" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>

@endsection