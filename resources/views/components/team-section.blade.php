<div class="row g-5">
    @foreach($members as $member)
        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12"
            @if(!$loop->first)
                data-sal-delay="{{ 150 + ($loop->index * 100) }}"
            @else
                data-sal-delay="150"
            @endif
            data-sal="slide-up"
            data-sal-duration="800"
        >
            <div class="single-team">
                <a class="thumbnail">
                    @isset($member->content['photo'])
                        <x-curator-glider :media="$member->content['photo']" />
                    @endisset
                </a>

                <div class="content">
                    <div class="team-name content-with-bg">
                        <a class="name-area">
                            <h6 class="name">{{ $member->name }}</h6>
                        </a>
                        <div class="designation">{{ $member->position }}</div>
                    </div>

                    @if(!empty($member->content['facebook']) || !empty($member->content['linkedin']) || !empty($member->content['twitter']))
                        <div class="share-icon-style-one">
                            <ul class="social-icons social-icons-with-bg">
                                @isset($member->content['facebook'])
                                    <li><a href="{{ $member->content['facebook'] }}" target="_blank"><i class="fa-brands fa-facebook-f"></i></a></li>
                                @endisset
                                @isset($member->content['linkedin'])
                                    <li><a href="{{ $member->content['linkedin'] }}" target="_blank"><i class="fa-brands fa-linkedin-in"></i></a></li>
                                @endisset
                                @isset($member->content['twitter'])
                                    <li><a href="{{ $member->content['twitter'] }}" target="_blank"><i class="fa-brands fa-twitter"></i></a></li>
                                @endisset
                            </ul>
                            <i class="fa-sharp fa-solid fa-share-nodes"></i>
                        </div>
                    @endif
                </div>

            </div>
        </div>
    @endforeach
</div>
