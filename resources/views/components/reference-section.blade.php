<div class="row">
    <div class="col-lg-12">
        <div class="swiper-style-one tmp-section-gapBottom">
            <div class="swiper-container-style-two">
                <div class="swiper-wrapper">
                    @foreach($references as $reference)
                        <div class="swiper-slide">
                            <div class="single-card card-horizontal">
                                <div class="card-inner">
                                    <div class="content">
                                        <div class="rating rating-style-three">
                                            <div class="stars-group">
                                                <div class="star">
                                                    @for($i = 0; $i < $reference->fullStars; $i++)
                                                        <i class="fa-solid fa-star"></i>
                                                    @endfor

                                                    @if($reference->halfStar)
                                                        <i class="fa-solid fa-star-half-stroke"></i>
                                                    @endif

                                                    @for($i = 0; $i < $reference->emptyStars; $i++)
                                                        <i class="fa-regular fa-star"></i>
                                                    @endfor
                                                </div>
                                            </div>
                                        </div>

                                        @isset($reference->referenceText)
                                            <p class="description">
                                                {{ $reference->referenceText }}
                                            </p>
                                        @endisset

                                        <div class="content content-without-bg">
                                            <div class="name">{{ $reference->name }}</div>
                                            <div class="designation">{{ $reference->position }}</div>
                                        </div>
                                    </div>

                                    <div class="thumbnail">
                                        @isset($reference->photo)
                                            <x-curator-glider :media="$reference->photo" />
                                        @endisset
                                        <div class="icon icon-quote">
                                            <i class="fa-duotone fa-quote-left"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
