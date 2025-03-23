<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="/assets/css/style.css" />
    @vite('resources/css/app.css')

    @yield('seo')

    <title>@yield('title')</title>
    
</head>

<body>
    <x-header.header-menu />

    @yield('content')

    <x-footer.footer />
    
    @vite('resources/js/app.js')
    <script src="/assets/js/script.js"></script>
</body>
</html>