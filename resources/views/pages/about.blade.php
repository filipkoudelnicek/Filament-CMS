@extends('layouts.app')
@section('title', $page->title)
@section('seo')<x-seo-module :seo="$page->content['seo'] ?? []" />@endsection

@section('content')
    <x-page-header :title="$page->title" />

    <div class="about-area tmp-section-gap about-style-one">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="about-thumbnail-construction">
                        <div class="image-large">
                            @isset($page->content['aboutImage'])
                                <x-curator-glider :media="$page->content['aboutImage']" />
                            @endisset
                        </div>
                        <div class="shape-bottom-left"></div>

                        <div class="work-done">
                            @isset($page->content['aboutNumber'])
                                <h3 class="title">
                                    <span class="counter">{{ $page->content['aboutNumber'] }}</span>+
                                </h3>
                            @endisset

                            @isset($page->content['aboutNumberText'])
                                <p>{{ $page->content['aboutNumberText'] }}</p>
                            @endisset
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="about-inner">
                        <div class="section-head text-align-left section-head-one-side">
                            <div class="section-sub-title">
                                <img src="/assets/images/services/section-custom-menubar.png" alt="Corporate_service">
                                @isset($page->content['aboutSubtitle'])
                                    <span class="subtitle">{{ $page->content['aboutSubtitle'] }}</span>
                                @endisset
                            </div>

                            @isset($page->content['aboutTitle'])
                                <h2 class="title" data-sal-delay="150" data-sal="slide-up" data-sal-duration="800">{{ $page->content['aboutTitle'] }}</h2>
                            @endisset
                        </div>

                        @isset($page->content['aboutText'])
                            <p class="description" data-sal-delay="200" data-sal="slide-up" data-sal-duration="800">
                                {{ $page->content['aboutText'] }}
                            </p>
                        @endisset

                        @isset($page->content['about'])
                            @foreach($page->content['about'] as $index => $aboutItem)
                                <div class="single-progress-area progress-stye-one"
                                    data-sal-delay="{{ 250 + ($loop->index * 50) }}"
                                    data-sal="slide-up"
                                    data-sal-duration="800">

                                    <div class="progress-top">
                                        @isset($aboutItem['text'])
                                            <p class="name">{{ $aboutItem['text'] }}</p>
                                        @endisset

                                        @isset($aboutItem['percent'])
                                            <span class="parcent">
                                                {{ $aboutItem['percent'] }}%
                                            </span>
                                        @endisset
                                    </div>

                                    @isset($aboutItem['percent'])
                                        <div class="progress">
                                            <div class="progress-bar wow fadeInLeft bg--primary"
                                                role="progressbar"
                                                style="width: {{ $aboutItem['percent'] }}%"
                                                aria-valuenow="{{ $aboutItem['percent'] }}"
                                                aria-valuemin="0"
                                                aria-valuemax="100">
                                            </div>
                                        </div>
                                    @endisset
                                </div>
                            @endforeach
                        @endisset

                        @isset($page->content['aboutButtonText'])
                            @isset($page->content['aboutButtonLink'])
                                <div class="thumbnail-with-title mt--50" data-sal-delay="350" data-sal="slide-up" data-sal-duration="800">
                                    <a href="{{ $page->content['aboutButtonLink'] }}" class="tmp-btn btn-primary">
                                        {{ $page->content['aboutButtonText'] }}
                                    </a>
                                </div>
                            @endisset
                        @endisset
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="tpm-services-process-area tmp-section-gapBottom">
        <div class="container">
            <div class="row" data-sal-delay="150" data-sal="slide-up" data-sal-duration="800">
                <div class="col-lg-12">
                    <div class="section-head">
                        <div class="section-sub-title center-title">
                            <img src="/assets/images/services/section-custom-menubar.png" alt="Corporate_service">

                            @isset($page->content['processSubtitle'])
                                <span class="subtitle">{{ $page->content['processSubtitle'] }}</span>
                            @endisset
                        </div>

                        @isset($page->content['processTitle'])
                            <h2 class="title" data-sal-delay="150" data-sal="slide-up" data-sal-duration="800">{{ $page->content['processTitle'] }}</h2>
                        @endisset
                    </div>
                </div>
            </div>

            <div class="row g-5">
                @isset($page->content['process'])
                    @foreach($page->content['process'] as $process)
                        <div class="col-lg-4 col-md-6 col-sm-6 col-12"
                            data-sal-delay="{{ 150 + ($loop->index * 100) }}"
                            data-sal="slide-up"
                            data-sal-duration="800">

                            <div class="single-services construction">
                                <div class="services-inner">
                                    <div class="thumbnail thumbnail-rounded border-top-left hover-animation">
                                        <a href="#!">
                                            @isset($process['image'])
                                                <x-curator-glider :media="$process['image']" />
                                            @endisset

                                            @isset($process['number'])
                                                <div class="number-bg-round">
                                                    <span>{{ $process['number'] }}</span>
                                                </div>
                                            @endisset
                                        </a>
                                    </div>

                                    <div class="services-content services-content-style-1 text-center">
                                        @isset($process['title'])
                                            <h5 class="title">{{ $process['title'] }}</h5>
                                        @endisset

                                        @isset($process['text'])
                                            <p class="description">
                                                {{ $process['text'] }}
                                            </p>
                                        @endisset
                                    </div>
                                </div>
                            </div>

                        </div>
                    @endforeach
                @endisset
            </div>
        </div>
    </div>

    <div class="team-area tmp-section-gap bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-head">
                        <div class="section-sub-title center-title">
                            <img src="/assets/images/services/section-custom-menubar.png " alt="Corporate services">
                            @isset($page->content['teamSubtitle'])
                                <span>{{ $page->content['teamSubtitle'] }}</span>
                            @endisset
                        </div>
                        
                        @isset($page->content['teamTitle'])
                            <h2 class="section-title" data-sal-delay="150" data-sal="slide-up" data-sal-duration="800">{{ $page->content['teamTitle'] }}</h2>
                        @endisset
                    </div>
                </div>
            </div>

            <x-team-section />

        </div>
    </div>

    <div class="testimonial-with-brand bg-1 bg_image">
        <div class="testimonial-brand-area tmp-section-gapTop">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="testimonials-button-area">
                            <div class="section-head text-align-left">
                                <div class="section-sub-title">
                                    <img src="/assets/images/services/section-custom-menubar.png " alt="Corporate_service">
                                    @isset($page->content['referenceSubtitle'])
                                        <span class="subtitle">{{ $page->content['referenceSubtitle'] }}</span>
                                    @endisset
                                </div>
                                
                                @isset($page->content['referenceTitle'])
                                    <h2 class="title" data-sal-delay="150" data-sal="slide-up" data-sal-duration="800">{{ $page->content['referenceTitle'] }}</h2>
                                @endisset
                            </div>

                            <div class="button-next-prev">
                                <div class="swiper-button-prev"></div>
                                <div class="swiper-button-next"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <x-reference-section />

            </div>
        </div>
    </div>

@endsection