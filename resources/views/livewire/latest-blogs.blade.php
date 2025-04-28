<div class="row g-5">
    @foreach($latestArticles as $post)
        <div class="col-lg-6 col-md-6 col-sm-12 col1-2" data-sal-delay="{{ 150 + ($loop->index * 100) }}" data-sal="slide-up" data-sal-duration="800">
            <div class="single-blog">
                <div class="blog-inner">
                    <div class="thumbnail">
                        <a href="{{ $this->getArticleUrl($post) }}">
                            @isset($post->content['thumbnail'])
                                <x-curator-glider :media="$post->content['thumbnail']" />
                            @endisset
                        </a>

                        <div class="pmt-blog-meta">
                            <ul class="all-meta">
                                <li class="date"><span>{{ $post->publish_time?->format('d') }}</span></li>
                                <li class="month"><span>{{ $post->publish_time?->locale(app()->getLocale())->translatedFormat('M') }}</span></li>
                            </ul>
                        </div>
                    </div>

                    <div class="blog-content">
                        <div class="blog-head">
                            <span class="name">{{ $post->publish_time?->format('j.n.Y') }}</span>
                            <span class="designation">{{ $post->user->name }}</span>
                        </div>

                        <div class="blog-body">
                            <a href="{{ $this->getArticleUrl($post) }}" class="title-area">
                                <h4 class="title">{{ $post->title }}</h4>
                            </a>

                            @isset($post->content['body'])
                                <p class="description">
                                    {{ $this->getFirstParagraph($post->content['body']) }}
                                </p>
                            @endisset
                        </div>

                        <a class="btn-read-more" href="{{ $this->getArticleUrl($post) }}">
                            <span class="read-more-text">{{ __('Číst více') }}</span>
                            <span class="read-more-icon"><i class="fa-solid fa-arrow-right"></i></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
</div>