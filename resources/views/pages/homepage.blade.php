@extends('layouts.app')
@section('title', $page->title)
@section('seo')<x-seo-module :seo="$page->content['seo'] ?? []" />@endsection

@section('content')
    <div class="tmp-banner-swiper-one-area construction-2">
        <div class="swiper mySwiper-banner-one-construction">
            <div class="swiper-wrapper">
                @isset($page->content['slides'])
                    @foreach($page->content['slides'] as $slide)
                        <div class="swiper-slide">
                            <div class="tmp-banner-area bg_image-1 bg_image banner-one-height-control construction-2 tmp-section-gap" style="background-image: url('{{ $slide['background_image']['url'] ?? '' }}');">
                                
                                <div class="shape-image-banner-one">
                                    <img src="/assets/images/banner/shape/01.png" alt="Shape 1" class="one">
                                    <img src="/assets/images/banner/shape/02.png" alt="Shape 2" class="two">
                                    <img src="/assets/images/banner/shape/03.png" alt="Shape 3" class="three">
                                </div>

                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="banner-one-main-wrapper">
                                                <div class="inner">
                                                    @isset($slide['sub_title'])
                                                        <span class="sub-title">{{ $slide['sub_title'] }}</span>
                                                    @endisset

                                                    @isset($slide['title'])
                                                        <h1 class="title">{{ $slide['title'] }}</h1>
                                                    @endisset

                                                    @isset($slide['text'])
                                                        <p class="disc">{!! nl2br(e($slide['text'])) !!}</p>
                                                    @endisset

                                                    @isset($slide['button_text'])
                                                        @isset($slide['button_link'])
                                                            <div class="button-area-banner-one">
                                                                <a href="{{ $slide['button_link'] }}" class="tmp-btn btn-primary">
                                                                    {{ $slide['button_text'] }}
                                                                </a>
                                                            </div>
                                                        @endisset
                                                    @endisset
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    @endforeach
                @endisset
            </div>

            <div class="swiper-pagination"></div>
            <div class="swiper-button-next" data-tmp-cursor="lg transparent fw-bold" data-tmp-cursor-text="Next"></div>
            <div class="swiper-button-prev" data-tmp-cursor="lg transparent fw-bold" data-tmp-cursor-text="Prev"></div>
        </div>
    </div>

    <div class="best-service-we-provide tmp-section-gapTop">
        <div class="container">
            <div class="row g-5">
                @isset($page->content['specialization'])
                    @foreach($page->content['specialization'] as $specialization)
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12" data-sal-delay="150" data-sal="slide-up" data-sal-duration="800">
                            <div class="service-inner financial-service-inner agency-service feature-service">
                                <div class="icon">
                                    @isset($specialization['icon'])
                                        <x-curator-glider :media="$specialization['icon']" />
                                    @endisset
                                </div>

                                <div class="content">
                                    @isset($specialization['title'])
                                        <h2 class="title">{{ $specialization['title'] }}</h2>
                                    @endisset

                                    @isset($specialization['text'])
                                        <p class="description">
                                            {!! $specialization['text'] !!}
                                        </p>
                                    @endisset

                                    <div class="three--dot">
                                        <div class="dot dot-one"></div>
                                        <div class="dot dot-two"></div>
                                        <div class="dot dot-two"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endisset
            </div>
        </div>
    </div>

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
                                <h2 class="title split-collab">{{ $page->content['aboutTitle'] }}</h2>
                            @endisset
                        </div>

                        @isset($page->content['aboutText'])
                            <p class="description" data-sal-delay="200" data-sal="slide-up" data-sal-duration="800">
                                {!! $page->content['aboutText'] !!}
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

    <div class="service-area tmp-section-gapBottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-head">
                        <div class="section-sub-title center-title">
                            <img src="/assets/images/services/section-custom-menubar.png" alt="Business_Consulting_services">

                            @isset($page->content['servicesSubtitle'])
                                <span>{{ $page->content['servicesSubtitle'] }}</span>
                            @endisset
                        </div>

                        @isset($page->content['servicesTitle'])
                            <h2 class="title split-collab">{{ $page->content['servicesTitle'] }}</h2>
                        @endisset
                    </div>
                </div>
            </div>

            <div class="row g-5">
                @isset($page->content['services'])
                    @foreach($page->content['services'] as $service)
                        <div class="col-lg-4 col-md-6 col-sm-6 col-12"
                            data-sal-delay="{{ 150 + ($loop->index * 100) }}"
                            data-sal="slide-up"
                            data-sal-duration="800">

                            <div class="service-inner financial-service-inner">
                                <div class="icon">
                                    @isset($service['icon'])
                                        <x-curator-glider :media="$service['icon']" />
                                    @endisset
                                </div>

                                <div class="content">
                                    @isset($service['title'])
                                        <h2 class="title">{{ $service['title'] }}</h2>
                                    @endisset

                                    @isset($service['text'])
                                        <p class="description">
                                            {!! $service['text'] !!}
                                        </p>
                                    @endisset

                                    <div class="three--dot">
                                        <div class="dot dot-one"></div>
                                        <div class="dot dot-two"></div>
                                        <div class="dot dot-two"></div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    @endforeach
                @endisset
            </div>
        </div>
    </div>

    <div class="tmp-counterup-area tmp-section-gapBottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-head">
                        <div class="section-sub-title center-title">
                            <img src="/assets/images/services/section-custom-menubar.png" alt="Corporate_service">

                            @isset($page->content['numbersSubtitle'])
                                <span class="subtitle">{{ $page->content['numbersSubtitle'] }}</span>
                            @endisset
                        </div>

                        @isset($page->content['numbersTitle'])
                            <h2 class="title split-collab">{{ $page->content['numbersTitle'] }}</h2>
                        @endisset
                    </div>
                </div>
            </div>

            <div class="row g-5 mt--20 counter_animation">
                @isset($page->content['numbers'])
                    @foreach($page->content['numbers'] as $numberItem)
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12 counter__anim"
                            @if(!$loop->first)
                                data-sal-delay="{{ ($loop->index - 1) * 100 }}"
                            @endif
                        >
                            <div class="count-box counter-style-4 text-center">
                                <div>
                                    @isset($numberItem['number'])
                                        <h3 class="title">
                                            <span class="counter">{{ $numberItem['number'] }}</span>
                                        </h3>
                                    @endisset
                                </div>

                                @isset($numberItem['text'])
                                    <h5 class="counter-title">{{ $numberItem['text'] }}</h5>
                                @endisset
                            </div>
                        </div>
                    @endforeach
                @endisset
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
                            <h2 class="title split-collab">{{ $page->content['processTitle'] }}</h2>
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
                                        <a href="#">
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
                                                {!! $process['text'] !!}
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

    <div class="tmp-product-area tmp-section-gapTop bg-product-1 with-construction">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-head color-white">
                        <div class="section-sub-title center-title">
                            <img src="/assets/images/services/section-custom-menubar.png" alt="Corporate_service">

                            @isset($page->content['portfolioSubtitle'])
                                <span class="subtitle">{{ $page->content['portfolioSubtitle'] }}</span>
                            @endisset
                        </div>

                        @isset($page->content['portfolioTitle'])
                            <h2 class="title split-collab">{{ $page->content['portfolioTitle'] }}</h2>
                        @endisset
                    </div>
                </div>
            </div>
        </div>

        <div class="container-full">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product-swiper-area-one">
                        <div class="swiper mySwiper-portfolio-2-cons">
                            <div class="swiper-wrapper">
                                @isset($page->content['portfolio'])
                                    @foreach($page->content['portfolio'] as $portfolioItem)
                                        <div class="swiper-slide">
                                            <div class="signle-product-start">
                                                @isset($portfolioItem['image'])
                                                    <x-curator-glider :media="$portfolioItem['image']" />
                                                @endisset

                                                <div class="inner-content">
                                                    @isset($portfolioItem['title'])
                                                        <h5 class="title">{{ $portfolioItem['title'] }}</h5>
                                                    @endisset

                                                    @isset($portfolioItem['text'])
                                                        <span class="designation">{{ $portfolioItem['text'] }}</span>
                                                    @endisset

                                                    <div class="tag"></div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                @endisset
                            </div>

                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next" data-tmp-cursor="md transparent fw-bold" data-tmp-cursor-text="Next"></div>
                            <div class="swiper-button-prev" data-tmp-cursor="md transparent fw-bold" data-tmp-cursor-text="Prev"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="faq-area faq-style-one faq-bg-image bg_image tmp-section-gap mt-dec--180">
        <div class="container pt--180">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-head">
                        <div class="section-sub-title center-title">
                            <img src="/assets/images/services/section-custom-menubar.png" alt="Corporate_service">

                            @isset($page->content['faqSubtitle'])
                                <span class="subtitle">{{ $page->content['faqSubtitle'] }}</span>
                            @endisset
                        </div>

                        @isset($page->content['faqTitle'])
                            <h2 class="title split-collab">{{ $page->content['faqTitle'] }}</h2>
                        @endisset
                    </div>
                </div>
            </div>

            <div class="row align-items-center g-5">
                <div class="col-lg-6 pr--30">
                    <div class="thumbnail-faq-cons">
                        @isset($page->content['faqImage'])
                            <x-curator-glider :media="$page->content['faqImage']" />
                        @endisset
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="faq-accordion">
                        <div class="accordion" id="accordionExample">
                            @isset($page->content['faq'])
                                @foreach($page->content['faq'] as $index => $faq)
                                    <div class="accordion-item">
                                        <div class="accordion-header" id="heading{{ $index }}">
                                            <div class="accordion-button {{ $loop->first ? '' : 'collapsed' }}" 
                                                data-bs-toggle="collapse" 
                                                role="button" 
                                                data-bs-target="#collapse{{ $index }}" 
                                                aria-expanded="{{ $loop->first ? 'true' : 'false' }}" 
                                                aria-controls="collapse{{ $index }}">

                                                <div class="accordion-button-left">
                                                    <i class="fa-regular fa-question"></i>
                                                    @isset($faq['question'])
                                                        <span>{{ $faq['question'] }}</span>
                                                    @endisset
                                                </div>

                                                <div class="accordion-button-right">
                                                    <i class="fa-sharp fa-light fa-arrow-right"></i>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="collapse{{ $index }}" 
                                            class="accordion-collapse collapse {{ $loop->first ? 'show' : '' }}" 
                                            aria-labelledby="heading{{ $index }}" 
                                            data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                @isset($faq['answer'])
                                                    {{ $faq['answer'] }}
                                                @endisset
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            @endisset
                        </div>

                        <div class="faq-buttom">
                            @isset($page->content['faqMoreQuestions'])
                                <h4 class="title">{{ $page->content['faqMoreQuestions'] }}</h4>
                            @endisset

                            @isset($page->content['faqContact'])
                                @isset($page->content['faqContactLink'])
                                    <p>
                                        <a href="{{ $page->content['faqContactLink'] }}">{{ $page->content['faqContact'] }}</a>
                                    </p>
                                @endisset
                            @endisset
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="team-area tmp-section-gap bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-head">
                        <div class="section-sub-title center-title">
                            <img src="assets/images/services/section-custom-menubar.png " alt="Corporate services">
                            @isset($page->content['teamSubtitle'])
                                <span>{{ $page->content['teamSubtitle'] }}</span>
                            @endisset
                        </div>
                        
                        @isset($page->content['teamTitle'])
                            <h2 class="section-title split-collab">{{ $page->content['teamTitle'] }}</h2>
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
                                    <img src="assets/images/services/section-custom-menubar.png " alt="Corporate_service">
                                    @isset($page->content['referenceSubtitle'])
                                        <span class="subtitle">{{ $page->content['referenceSubtitle'] }}</span>
                                    @endisset
                                </div>
                                
                                @isset($page->content['referenceTitle'])
                                    <h2 class="title split-collab">{{ $page->content['referenceTitle'] }}</h2>
                                @endisset
                            </div>

                            <div class="button-next-prev">
                                <div class="swiper-button-prev"></div>
                                <div class="swiper-button-next"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="swiper-style-one tmp-section-gapBottom">
                            <div class="swiper-container-style-two">
                                <div class="swiper-wrapper">

                                    <div class="swiper-slide">
                                        <div class="single-card card-horizontal">
                                            <div class="card-inner">
                                                <div class="content">
                                                    <div class="rating rating-style-three">
                                                        <div class="stars-group">
                                                            <div class="star">
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star-half-stroke"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <p class="description">Its incredible. its really wonderful. company has completely surpassed our expect. Urna porttitor rhoncus dolor purus non enim praesent at the facilisis lectus. Adipiscing tristique risus.</p>
                                                    <div class="content content-without-bg">
                                                        <div class="name">Clade Owen</div>
                                                        <div class="designation">CEO &amp; Founder</div>
                                                    </div>
                                                </div>
                                                <div class="thumbnail">
                                                    <img src="assets/images/testimonial/testimonial-1.jpg" alt="testimonial">
                                                    <div class="icon icon-quote">
                                                        <i class="fa-duotone fa-quote-left"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="single-card card-horizontal">
                                            <div class="card-inner">
                                                <div class="content">
                                                    <div class="rating rating-style-three">
                                                        <div class="stars-group">
                                                            <div class="star">
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star-half-stroke"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <p class="description">Its incredible. its really wonderful. company has completely surpassed our expect. Urna porttitor rhoncus dolor purus non enim praesent at the facilisis lectus. Adipiscing tristique risus.</p>

                                                    <div class="content content-without-bg">
                                                        <div class="name">Nicolas Alvin</div>
                                                        <div class="designation">Web Developer</div>
                                                    </div>
                                                </div>
                                                <div class="thumbnail">
                                                    <img src="assets/images/testimonial/testimonial-2.jpg" alt="testimonial">
                                                    <div class="icon icon-quote">
                                                        <i class="fa-duotone fa-quote-left"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="single-card card-horizontal">
                                            <div class="card-inner">
                                                <div class="content">
                                                    <div class="rating rating-style-three">
                                                        <div class="stars-group">
                                                            <div class="star">
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star-half-stroke"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <p class="description">Its incredible. its really wonderful. company has completely surpassed our expect. Urna porttitor rhoncus dolor purus non enim praesent at the facilisis lectus. Adipiscing tristique risus.</p>
                                                    <div class="content content-without-bg">
                                                        <div class="name">Lara Willie</div>
                                                        <div class="designation">UX Designer</div>
                                                    </div>
                                                </div>
                                                <div class="thumbnail">
                                                    <img src="assets/images/testimonial/testimonial-1.jpg" alt="testimonial">
                                                    <div class="icon icon-quote">
                                                        <i class="fa-duotone fa-quote-left"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="single-card card-horizontal">
                                            <div class="card-inner">
                                                <div class="content">
                                                    <div class="rating rating-style-three">
                                                        <div class="stars-group">
                                                            <div class="star">
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star-half-stroke"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <p class="description">Its incredible. its really wonderful. company has completely surpassed our expect. Urna porttitor rhoncus dolor purus non enim praesent at the facilisis lectus. Adipiscing tristique risus.</p>
                                                    <div class="content content-without-bg">
                                                        <div class="name">Clade Herbert</div>
                                                        <div class="designation">CEO and Founder</div>
                                                    </div>
                                                </div>
                                                <div class="thumbnail">
                                                    <img src="assets/images/testimonial/testimonial-2.jpg" alt="testimonial">
                                                    <div class="icon icon-quote">
                                                        <i class="fa-duotone fa-quote-left"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="contact-area-three tmp-section-gapTop">
        <div class="bg-shape">
            <img src="/assets/images/cta/02.png" alt="bussiness-contact">
        </div>

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
                                    {!! $page->content['contactTextLeft'] !!}
                                </p>
                            @endisset
                        </div>

                        <ul class="ft-link ft-link-style-three" data-sal-delay="250" data-sal="slide-up" data-sal-duration="800">
                            @isset($page->content['contact'])
                                @foreach($page->content['contact'] as $contact)
                                    <li>
                                        <div class="single-contact background-transparent">
                                            <div class="icon">
                                                @isset($contact['icon'])
                                                    <x-curator-glider :media="$contact['icon']" />
                                                @endisset
                                            </div>

                                            <div class="content">
                                                @isset($contact['name'])
                                                    <span>{{ $contact['name'] }}</span>
                                                @endisset

                                                @isset($contact['information'])
                                                    <a class="contact-here" href="#">{{ $contact['information'] }}</a>
                                                @endisset
                                            </div>
                                        </div>
                                    </li>
                                @endforeach
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
                                    {!! $page->content['contactTextRight'] !!}
                                </p>
                            @endisset
                        </div>

                        <livewire:contact-form />

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="tmp-blog-area tmp-section-gap">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-head">
                        <div class="section-sub-title center-title">
                            <img src="/assets/images/services/section-custom-menubar.png" alt="Corporate_service">
                            @isset($page->content['blogSubtitle'])
                                <span class="subtitle">{{ $page->content['blogSubtitle'] }}</span>
                            @endisset
                        </div>

                        @isset($page->content['blogTitle'])
                            <h2 class="title split-collab">{{ $page->content['blogTitle'] }}</h2>
                        @endisset
                    </div>
                </div>
            </div>

            <livewire:latest-blogs />
        </div>
    </div>

@endsection