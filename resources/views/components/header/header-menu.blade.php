<header class="tmp-header-area-start header-one construction-radious">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="main-header-one-wrapper">
                    <div class="tmp-nav-area-one header--sticky">
                        <div class="logo-md-sm-device">
                            <a href="{{ $getHomepageUrl() }}" class="logo">
                                <img src="/assets/images/logo/logo-01.svg" alt="corporate_business-logo">
                            </a>
                        </div>

                        <div class="header-nav main-nav-one">
                            <nav>
                                <ul class="parent-nav">
                                    @foreach($menuPages as $page)
                                        <li>
                                            <a class="nav-link" href="{{ $getPageUrl($page) }}">
                                                <span>{{ $page->in_menu_title ?? $page->title }}</span>
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </nav>
                        </div>

                                <div class="tmp-side-collups-area" id="side-collups">
                                    <svg width="20" height="16" viewBox="0 0 20 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect y="14" width="20" height="2" fill="#1F1F25"></rect>
                                        <rect y="7" width="20" height="2" fill="#1F1F25"></rect>
                                        <rect width="20" height="2" fill="#1F1F25"></rect>
                                    </svg>
                                </div>

                        <livewire:language-switcher />

                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<div id="side-hide">
    <div class="top-area">
        <a href="{{ $getHomepageUrl() }}" class="logo-area">
            <img src="/assets/images/logo/logo-02.svg" alt="logo">
        </a>
        <livewire:language-switcher />
        <div class="close-icon-area">
            <div id="close-slide__main">
                <i class="fa-solid fa-x"></i>
            </div>
        </div>
    </div>
    <div class="mobile-menu-main">
        <nav class="nav-main mainmenu-nav mt--30">
            <ul class="mainmenu metismenu" id="mobile-menu-active">  
                @foreach($menuPages as $page)
                    <li>
                        <a href="{{ $getPageUrl($page) }}" class="main">{{ $page->in_menu_title ?? $page->title }}</a>
                    </li>
                @endforeach
            </ul>
        </nav>
    </div>
    <!-- mobile menu area end -->
</div>