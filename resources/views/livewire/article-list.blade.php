<div class="altest-blog-area tmp-section-gap">
    <div class="container">
        <div class="row g-5">
            @foreach($articles as $article)
                <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                    <div class="single-blog blog-style-three">
                        <div class="blog-inner">
                            <div class="thumbnail">
                                <a href="{{ $this->getArticleUrl($article) }}">
                                    @isset($article->content['thumbnail'])
                                        <x-curator-glider :media="$article->content['thumbnail']"/>
                                    @endisset
                                </a>
                            </div>
                            <div class="blog-content text-center">
                                <div class="blog-head">
                                    <span class="name">{{ $article->publish_time?->format('j.n. Y') }}</span>
                                    <span class="designation">{{ $article->user->name }}</span>
                                </div>
                                <div class="blog-body">
                                    <a href="{{ $this->getArticleUrl($article) }}" class="title-area">
                                        <h2 class="title">{{ $article->title }}</h2>
                                    </a>
                                    <a class="btn-read-more" href="{{ $this->getArticleUrl($article) }}">
                                        <span class="read-more-text">{{ __('Číst více') }}</span>
                                        <span class="read-more-icon"><i class="fa-solid fa-arrow-right"></i></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="tmp-pagination-area-next-pev mt--50">
            {{ $articles->links('vendor.pagination.bootstrap-5') }}
        </div>
    </div>
</div>
