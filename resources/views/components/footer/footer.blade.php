<footer class="footer-area footer-style-one-wrapper bg-color-footer bg_images tmp-section-gap">
    <div class="container">
        <div class="footer-main footer-style-one">
            <div class="row g-5">
                <div class="col-lg-4 col-md-6">
                    <div class="single-footer-wrapper border-right mr--20">
                        <div class="logo">
                            <a href="#">
                                <img src="/assets/images/logo/logo-02.svg" alt="logo">
                            </a>
                        </div>

                        <p class="description">
                            {{ __('Komplexní stavební služby pro firmy i soukromé investory. Od prvního návrhu až po dokončení stavby — spolehlivě, efektivně a bez starostí.') }}
                        </p>


                        <div class="day-time">
                            <div class="icon"><i class="fa-solid fa-alarm-clock"></i></div>
                            <div class="content">
                                <div class="day">{{ __('Pondělí') }} - {{ __('Pátek') }}:</div>
                                <div class="time">8:00 – 16:00</div>
                            </div>
                        </div>

                        <ul class="social-icons solid-social-icons rounded-social-icons">
                            <li><a href="#"><i class="fa-brands fa-facebook-f"></i></a></li>
                            <li><a href="#"><i class="fa-brands fa-linkedin-in"></i></a></li>
                            <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="single-footer-wrapper pl-50 pl_md--0 pl_sm--0">
                        <h5 class="ft-title">{{ __('Menu') }}</h5>
                        <ul class="ft-link">
                            @foreach($menuPages as $page)
                                <li>
                                    <a href="{{ $getPageUrl($page) }}">
                                        {{ $page->in_menu_title ?? $page->title }}
                                    </a>
                                </li>
                            @endforeach
                        </ul>

                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="single-footer-wrapper pr--15">
                        <h5 class="ft-title">{{ __('Poslední příspěvky') }}</h5>

                        @foreach($latestArticles as $post)
                            <div class="single-post">
                                <div class="thumbnail">
                                    @isset($post->content['thumbnail'])
                                        <x-curator-glider :media="$post->content['thumbnail']" />
                                    @endisset
                                </div>
                                <div class="content">
                                    <div class="date"><i class="fa-light fa-calendar-days"></i><span>{{ $post->publish_time?->format('d M, Y') }}</span></div>

                                    <a href="{{ $getArticleUrl($post) }}">
                                        <h6 class="title">{{ $post->title }}</h6>
                                    </a>
                                </div>
                            </div>
                        @endforeach

                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="single-footer-wrapper">
                        <h5 class="ft-title">{{ __('E-Kontaktní údaje') }}:</h5>
                        <ul class="ft-link">
                            <li class="ft-location">{{ __('Česká republika') }} Tř. Tomáše Bati 123, Zlín</li>

                            <li>
                                <div class="single-contact">

                                    <div class="icon">
                                        <i class="fa-solid fa-envelope-open-text"></i>
                                    </div>

                                    <div class="content">
                                        <span>{{ __('E-mail') }}:</span>
                                        <a href="mailto:info@stavime.cz">info@stavime.cz</a>
                                    </div>

                                </div>
                            </li>

                            <li>
                                <div class="single-contact">
                                    <div class="icon">
                                        <i class="fa-light fa-phone"></i>
                                    </div>
                                    <div class="content">
                                        <span>{{ __('Telefon') }}:</span>
                                        <a href="tel:+420123456789">+420 123 456 789</a>
                                    </div>

                                </div>

                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="copyright-area-one">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="main-wrapper">
                    <p>© Copyright {{ date('Y') }}. {{ __('Všechna práva vyhrazena') }}. <a href="https://www.filipkoudelnicek.cz" target="_blank">Filip Koudelníček</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Footer Area  -->
<!-- End Footer Area  -->




<div id="overlay_every-where" data-tmp-cursor="md text-black dark:text-white opacity-10" data-tmp-cursor-icon="fa-regular fa-x fa-fw"></div>

<!-- progress area start -->
<div class="progress-wrap">
    <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
        <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 307.919;"></path>
    </svg>
</div>
<!-- progress area end -->


<!-- ==================== Start Loading ==================== -->

<div class="loader-wrap">
    <svg viewBox="0 0 1000 1000" preserveAspectRatio="none">
        <path id="svg" d="M0,1005S175,995,500,995s500,5,500,5V0H0Z"></path>
    </svg>

    <div class="loader-wrap-heading">
        <div class="load-text">
            <span>L</span>
            <span>o</span>
            <span>a</span>
            <span>d</span>
            <span>i</span>
            <span>n</span>
            <span>g</span>
        </div>
    </div>
</div>

<!-- ==================== End Loading ==================== -->