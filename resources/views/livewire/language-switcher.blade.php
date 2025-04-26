<div 
    class="language-picker" 
    x-data="{ open: false }" 
    @click.outside="open = false"
>
    <div class="language-picker js-language-picker" data-trigger-class="btn btn--subtle">

        <button 
            type="button" 
            @click="open = !open"
            class="language-picker__button btn btn--subtle" 
            aria-label="{{ app()->getLocale() }} Select your language" 
            :aria-expanded="open"
            aria-controls="language-picker-select-dropdown"
        >
            <span aria-hidden="true" class="language-picker__label language-picker__flag language-picker__flag--{{ app()->getLocale() }}">
                <em>{{ $actual->name }}</em>
                <svg viewBox="0 0 16 16" class="icon">
                    <polygon points="3,5 8,11 13,5 "></polygon>
                </svg>
            </span>
        </button>

        <div 
            x-show="open" 
            x-transition 
            class="language-picker__dropdown" 
            aria-describedby="language-picker-select-description" 
            id="language-picker-select-dropdown"
        >
            <p class="sr-only" id="language-picker-select-description">Select your language</p>
            <ul class="language-picker__list" role="listbox">
                @foreach ($langs as $item)
                    <li>
                        <a 
                            href="#"
                            wire:click.prevent="changeLang('{{ $item->locale }}', '{{ request()->getRequestUri() }}')"
                            role="option"
                            data-value="{{ $item->locale }}"
                            lang="{{ $item->locale }}"
                            hreflang="{{ $item->locale }}"
                            class="language-picker__item language-picker__flag language-picker__flag--{{ $item->locale }}"
                            @if (app()->getLocale() === $item->locale) aria-selected="true" @endif
                        >
                            <span>{{ $item->name }}</span>
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>

    </div>
</div>
