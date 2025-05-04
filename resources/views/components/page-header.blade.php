<div class="breadcrumb-area bg_image tmp-section-gap breadcrumb-bg" @if($background) style="background-image: url('{{ $background }}')"@endif>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-inner text-center">
                    @isset($title)<h1 class="title" data-sal-delay="150" data-sal="slide-up" data-sal-duration="800">{{$title}}</h1>@endisset
                    @if (!empty($author) && !empty($publishedAt))
                        <ul class="page-list">
                            <li>{{$publishedAt}} / {{$author}}</li>
                        </ul>
                    @endif
                    <div class="circle-1"></div>
                </div>
            </div>
        </div>
    </div>
</div>