<div class="contact-form style-two">
    @if (session()->has('message'))
        <div class="alert alert-success mb-4">
            {{ session('message') }}
        </div>
    @endif

    @if (session()->has('error'))
        <div class="alert alert-danger mb-4">
            {{ session('error') }}
        </div>
    @endif

    <form wire:submit.prevent="submitForm">
        <div class="contact-form-wrapper row">
            <div class="col-lg-6">
                <div class="form-group">
                    <input class="input-field @error('name') is-invalid @enderror"
                           wire:model="name"
                           placeholder="{{ __('Jméno') }}"
                           type="text">
                    @error('name') <span class="text-danger">{{ $message }}</span> @enderror
                </div>
            </div>

            <div class="col-lg-6">
                <div class="form-group">
                    <input class="input-field @error('phone') is-invalid @enderror"
                           wire:model="phone"
                           placeholder="{{ __('Telefon') }}"
                           type="text">
                    @error('phone') <span class="text-danger">{{ $message }}</span> @enderror
                </div>
            </div>

            <div class="col-lg-12">
                <div class="form-group">
                    <input class="input-field @error('email') is-invalid @enderror"
                           wire:model="email"
                           placeholder="{{ __('E-mail') }}"
                           type="email">
                    @error('email') <span class="text-danger">{{ $message }}</span> @enderror
                </div>
            </div>

            <div class="col-lg-12">
                <div class="form-group">
                    <textarea class="input-field @error('message') is-invalid @enderror"
                              wire:model="message"
                              placeholder="{{ __('S čím můžeme pomoci?') }}"></textarea>
                    @error('message') <span class="text-danger">{{ $message }}</span> @enderror
                </div>
            </div>

            <div class="col-lg-12">
                <div class="form-submit-group">
                    <button class="tmp-btn btn-primary" type="submit">
                        <span wire:loading.remove>{{ __('Odeslat') }}</span>
                        <span wire:loading>{{ __('Odesílání...') }}</span>
                    </button>
                </div>
            </div>
        </div>
    </form>
</div>
