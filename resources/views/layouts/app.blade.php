<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="/assets/css/style.css" />
    @vite('resources/css/app.css')

    <title>@yield('title')</title>
    
    @yield('styles')
</head>

<body>
    <x-header-menu />

    @yield('content')

    @yield('scripts')
    @vite('resources/js/app.js')

    <x-footer.footer />
    <script src="/assets/js/script.js"></script>
</body>
</html>