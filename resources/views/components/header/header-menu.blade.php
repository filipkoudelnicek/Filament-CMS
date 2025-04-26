<header class="tmp-header-area-start header-one construction-radious">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="main-header-one-wrapper">
                    <div class="tmp-nav-area-one header--sticky">
                        <div class="logo-md-sm-device">
                            <a href="#" class="logo">
                                <img src="assets/images/logo/logo-01.svg" alt="corporate_business-logo">
                            </a>
                        </div>

                        <div class="header-nav main-nav-one">
                            <nav>
                                <ul class="parent-nav">
                                    @foreach($menuPages as $page)
                                        <li>
                                            <a class="nav-link" href="{{ $getPageUrl($page) }}">
                                                <span class="rolling-text">{{ $page->in_menu_title ?? $page->title }}</span>
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </nav>
                        </div>

                        <livewire:language-switcher />

                    </div>
                </div>
            </div>
        </div>
    </div>
</header>