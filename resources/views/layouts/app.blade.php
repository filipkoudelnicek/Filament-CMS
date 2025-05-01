<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="/assets/images/fav.png">

    @vite('resources/css/app.css')
    <!-- Bootstrap min css -->
    <link rel="stylesheet" href="/assets/css/vendor/fontawesome.css">
    <link rel="stylesheet" href="/assets/css/plugins/swiper.css">
    <link rel="stylesheet" href="/assets/css/plugins/cursor.css">
    <link rel="stylesheet" href="/assets/css/vendor/animate.min.css">

    <link rel="stylesheet" href="/assets/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/vendor/metismenu.css">
    <!-- custom css -->
    <link rel="stylesheet" href="/assets/css/style.css">

    @yield('seo')

    <title>@yield('title') - Bizper</title>

</head>

<body class="index-one">
    <x-header.header-menu />

    @yield('content')

    <x-footer.footer />

    @vite('resources/js/app.js')
    <script src="/assets/js/vendor/jquery.js"></script>
    <script src="/assets/js/vendor/jquery-ui.min.js"></script>
    <script src="/assets/js/vendor/waypoints.min.js"></script>
    <script src="/assets/js/vendor/jquery.counterup.min.js"></script>
    <script src="/assets/js/plugins/swiper.js"></script>

    <script src="/assets/js/plugins/gsap.js"></script>
    <script src="/assets/js/plugins/splittext.js"></script>
    <script src="/assets/js/plugins/scrolltigger.js"></script>
    <script src="/assets/js/plugins/scrolltoplugins.js"></script>
    <script src="/assets/js/plugins/smoothscroll.js"></script>

    <script src="/assets/js/plugins/cursor.js"></script>
    <script src="/assets/js/vendor/metismenu.js"></script>
    <!-- bootstrap Js-->
    <script src="/assets/js/vendor/bootstrap.min.js"></script>
    <script src="/assets/js/vendor/waw.js"></script>
    <script src="/assets/js/vendor/sal.min.js"></script>
    <script src="/assets/js/plugins/isotop.js"></script>
    <script src="/assets/js/vendor/contact-form.js"></script>
    <!-- custom Js -->
    <script src="/assets/js/main.js"></script>
</body>
</html>
