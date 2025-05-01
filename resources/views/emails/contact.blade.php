<x-mail::message>
# Nová zpráva z kontaktního formuláře

**Jméno:** {{ $formData['name'] }}
**Email:** {{ $formData['email'] }}
@if(isset($formData['phone']))
**Telefon:** {{ $formData['phone'] }}
@endif

## Zpráva:
{{ $formData['message'] }}

Děkujeme,<br>
{{ config('app.name') }}
</x-mail::message>
