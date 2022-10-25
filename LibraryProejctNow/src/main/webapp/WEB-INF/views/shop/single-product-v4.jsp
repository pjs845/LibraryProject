<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Title -->
    <title>Single Product v4 | Bookworm</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="shortcut icon" href="/img/favicon.png">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/vendor/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="/vendor/fancybox/jquery.fancybox.css">
    <link rel="stylesheet" href="/vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="/vendor/slick-carousel/slick/slick.css"/>
    <link rel="stylesheet" href="/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">

    <!-- CSS Bookworm Template -->
    <link rel="stylesheet" href="/css/theme.css">
    
    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</head>
<body class="right-sidebar">
    <!--===== HEADER CONTENT =====-->
    <header id="site-header" class="site-header__v1 u-header">
        <div class="topbar border-bottom d-none d-md-block">
            <div class="container-fluid px-2 px-md-5 px-xl-8d75">
                <div class="topbar__nav d-md-flex justify-content-between align-items-center">
                    <ul class="topbar__nav--left nav ml-md-n3">
                        <li class="nav-item"><a href="#" class="nav-link link-black-100"><i class="glph-icon flaticon-question mr-2"></i>Can we help you?</a></li>
                        <li class="nav-item"><a href="tel:+1246-345-0695" class="nav-link link-black-100"><i class="glph-icon flaticon-phone mr-2"></i>+1 246-345-0695</a></li>
                    </ul>
                    <ul class="topbar__nav--right nav mr-md-n3">
                        <li class="nav-item"><a href="#" class="nav-link link-black-100"><i class="glph-icon flaticon-pin"></i></a></li>
                        <li class="nav-item"><a href="#" class="nav-link link-black-100"><i class="glph-icon flaticon-switch"></i></a></li>
                        <li class="nav-item"><a href="#" class="nav-link link-black-100"><i class="glph-icon flaticon-heart"></i></a></li>
                        <li class="nav-item">
                            <!-- Account Sidebar Toggle Button -->
                            <a id="sidebarNavToggler" href="javascript:;" role="button" class="nav-link link-black-100"
                                aria-controls="sidebarContent"
                                aria-haspopup="true"
                                aria-expanded="false"
                                data-unfold-event="click"
                                data-unfold-hide-on-scroll="false"
                                data-unfold-target="#sidebarContent"
                                data-unfold-type="css-animation"
                                data-unfold-overlay='{
                                    "className": "u-sidebar-bg-overlay",
                                    "background": "rgba(0, 0, 0, .7)",
                                    "animationSpeed": 500
                                }'
                                data-unfold-animation-in="fadeInRight"
                                data-unfold-animation-out="fadeOutRight"
                                data-unfold-duration="500">
                                <i class="glph-icon flaticon-user"></i>
                            </a>
                            <!-- End Account Sidebar Toggle Button -->
                        </li>
                        <li class="nav-item">
                            <!-- Cart Sidebar Toggle Button -->
                            <a id="sidebarNavToggler1" href="javascript:;" role="button" class="nav-link link-black-100 position-relative"
                                aria-controls="sidebarContent1"
                                aria-haspopup="true"
                                aria-expanded="false"
                                data-unfold-event="click"
                                data-unfold-hide-on-scroll="false"
                                data-unfold-target="#sidebarContent1"
                                data-unfold-type="css-animation"
                                data-unfold-overlay='{
                                    "className": "u-sidebar-bg-overlay",
                                    "background": "rgba(0, 0, 0, .7)",
                                    "animationSpeed": 500
                                }'
                                data-unfold-animation-in="fadeInRight"
                                data-unfold-animation-out="fadeOutRight"
                                data-unfold-duration="500">
                                <span class="position-absolute bg-dark width-16 height-16 rounded-circle d-flex align-items-center justify-content-center text-white font-size-n9 right-0">3</span>
                                <i class="glph-icon flaticon-icon-126515"></i>
                            </a>
                            <!-- End Cart Sidebar Toggle Button -->
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="masthead border-bottom position-relative" style="margin-bottom: -1px;">
            <div class="container-fluid px-3 px-md-5 px-xl-8d75 py-2 py-md-0">
                <div class="d-flex align-items-center position-relative flex-wrap">
                    <div class="offcanvas-toggler mr-4 mr-lg-8">
                        <a id="sidebarNavToggler2" href="javascript:;" role="button" class="cat-menu"
                        aria-controls="sidebarContent2"
                        aria-haspopup="true"
                        aria-expanded="false"
                        data-unfold-event="click"
                        data-unfold-hide-on-scroll="false"
                        data-unfold-target="#sidebarContent2"
                        data-unfold-type="css-animation"
                        data-unfold-overlay='{
                            "className": "u-sidebar-bg-overlay",
                            "background": "rgba(0, 0, 0, .7)",
                            "animationSpeed": 100
                        }'
                        data-unfold-animation-in="fadeInLeft"
                        data-unfold-animation-out="fadeOutLeft"
                        data-unfold-duration="100">
                            <svg width="20px" height="18px">
                                <path fill-rule="evenodd"  fill="rgb(25, 17, 11)" d="M-0.000,-0.000 L20.000,-0.000 L20.000,2.000 L-0.000,2.000 L-0.000,-0.000 Z"/>
                                <path fill-rule="evenodd"  fill="rgb(25, 17, 11)" d="M-0.000,8.000 L15.000,8.000 L15.000,10.000 L-0.000,10.000 L-0.000,8.000 Z"/>
                                <path fill-rule="evenodd"  fill="rgb(25, 17, 11)" d="M-0.000,16.000 L20.000,16.000 L20.000,18.000 L-0.000,18.000 L-0.000,16.000 Z"/>
                            </svg>
                        </a>
                    </div>
                    <div class="site-branding pr-md-4">
                        <a href="/" class="d-block mb-1">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="170px" height="30px">
                                <path fill-rule="evenodd" fill="rgb(25, 17, 11)"
                                d="M166.225,28.691 L165.065,15.398 L160.598,28.691 L158.229,28.691 L153.762,15.398 L152.590,28.691 L148.928,28.691 L150.405,11.052 L155.629,11.052 L159.389,22.124 L163.198,11.052 L168.422,11.052 L169.875,28.691 L166.225,28.691 ZM142.641,28.691 L138.051,20.928 L136.989,20.928 L136.989,28.691 L133.327,28.691 L133.327,11.052 L139.724,11.052 C140.692,11.052 141.546,11.189 142.287,11.461 C143.028,11.734 143.620,12.112 144.063,12.596 C144.507,13.081 144.840,13.636 145.064,14.263 C145.288,14.889 145.400,15.577 145.400,16.326 C145.400,17.506 145.078,18.472 144.436,19.225 C143.793,19.978 142.869,20.484 141.665,20.745 L146.975,28.691 L142.641,28.691 ZM141.896,16.204 C141.896,15.544 141.673,15.028 141.225,14.653 C140.777,14.279 140.086,14.092 139.150,14.092 L136.989,14.092 L136.989,18.303 L139.150,18.303 C140.981,18.303 141.896,17.603 141.896,16.204 ZM125.570,27.831 C124.206,28.567 122.666,28.936 120.949,28.936 C119.224,28.936 117.680,28.567 116.317,27.831 C114.953,27.094 113.881,26.034 113.100,24.651 C112.319,23.267 111.928,21.672 111.928,19.866 C111.928,18.051 112.319,16.454 113.100,15.074 C113.881,13.695 114.953,12.639 116.317,11.907 C117.680,11.174 119.224,10.808 120.949,10.808 C122.674,10.808 124.217,11.174 125.576,11.907 C126.935,12.639 128.005,13.695 128.786,15.074 C129.567,16.454 129.958,18.051 129.958,19.866 C129.958,21.672 129.567,23.267 128.786,24.651 C128.005,26.034 126.933,27.094 125.570,27.831 ZM124.807,15.715 C123.797,14.690 122.512,14.177 120.949,14.177 C119.387,14.177 118.101,14.690 117.092,15.715 C116.083,16.741 115.578,18.124 115.578,19.866 C115.578,21.616 116.083,23.005 117.092,24.034 C118.101,25.064 119.387,25.579 120.949,25.579 C122.512,25.579 123.797,25.064 124.807,24.034 C125.816,23.005 126.320,21.616 126.320,19.866 C126.320,18.124 125.816,16.741 124.807,15.715 ZM66.872,28.691 L61.391,21.196 L60.097,21.196 L60.097,28.691 L56.435,28.691 L56.435,11.052 L60.097,11.052 L60.097,17.986 L61.342,17.986 L66.872,11.052 L71.340,11.052 L64.504,19.487 L71.547,28.691 L66.872,28.691 ZM48.677,27.831 C47.314,28.567 45.774,28.936 44.057,28.936 C42.332,28.936 40.788,28.567 39.425,27.831 C38.061,27.094 36.989,26.034 36.208,24.651 C35.427,23.267 35.036,21.672 35.036,19.866 C35.036,18.051 35.427,16.454 36.208,15.074 C36.989,13.695 38.061,12.639 39.425,11.907 C40.788,11.174 42.332,10.808 44.057,10.808 C45.782,10.808 47.324,11.174 48.684,11.907 C50.043,12.639 51.113,13.695 51.894,15.074 C52.675,16.454 53.066,18.051 53.066,19.866 C53.066,21.672 52.675,23.267 51.894,24.651 C51.113,26.034 50.040,27.094 48.677,27.831 ZM47.915,15.715 C46.905,14.690 45.620,14.177 44.057,14.177 C42.495,14.177 41.209,14.690 40.200,15.715 C39.191,16.741 38.686,18.124 38.686,19.866 C38.686,21.616 39.191,23.005 40.200,24.034 C41.209,25.064 42.495,25.579 44.057,25.579 C45.620,25.579 46.905,25.064 47.915,24.034 C48.924,23.005 49.428,21.616 49.428,19.866 C49.428,18.124 48.924,16.741 47.915,15.715 ZM28.487,27.831 C27.124,28.567 25.584,28.936 23.867,28.936 C22.141,28.936 20.597,28.567 19.234,27.831 C17.871,27.094 16.799,26.034 16.018,24.651 C15.236,23.267 14.846,21.672 14.846,19.866 C14.846,18.051 15.236,16.454 16.018,15.074 C16.799,13.695 17.871,12.639 19.234,11.907 C20.597,11.174 22.141,10.808 23.867,10.808 C25.592,10.808 27.134,11.174 28.493,11.907 C29.852,12.639 30.922,13.695 31.704,15.074 C32.485,16.454 32.875,18.051 32.875,19.866 C32.875,21.672 32.485,23.267 31.704,24.651 C30.922,26.034 29.850,27.094 28.487,27.831 ZM27.724,15.715 C26.715,14.690 25.429,14.177 23.867,14.177 C22.304,14.177 21.018,14.690 20.009,15.715 C19.000,16.741 18.496,18.124 18.496,19.866 C18.496,21.616 19.000,23.005 20.009,24.034 C21.018,25.064 22.304,25.579 23.867,25.579 C25.429,25.579 26.715,25.064 27.724,24.034 C28.733,23.005 29.238,21.616 29.238,19.866 C29.238,18.124 28.733,16.741 27.724,15.715 ZM11.672,27.367 C10.736,28.250 9.361,28.691 7.546,28.691 L0.283,28.691 L0.283,11.052 L5.996,11.052 C7.875,11.052 9.314,11.478 10.311,12.328 C11.308,13.178 11.806,14.365 11.806,15.886 C11.806,16.676 11.633,17.374 11.287,17.980 C10.941,18.586 10.431,19.052 9.755,19.377 C11.969,19.988 13.076,21.445 13.076,23.748 C13.076,25.278 12.608,26.484 11.672,27.367 ZM7.827,14.647 C7.420,14.277 6.821,14.092 6.032,14.092 L3.811,14.092 L3.811,18.242 L6.191,18.242 C6.940,18.242 7.501,18.047 7.875,17.656 C8.250,17.266 8.437,16.753 8.437,16.118 C8.437,15.508 8.233,15.018 7.827,14.647 ZM8.876,21.709 C8.445,21.278 7.749,21.062 6.789,21.062 L3.811,21.062 L3.811,25.554 L6.862,25.554 C7.782,25.554 8.455,25.347 8.883,24.932 C9.310,24.517 9.523,23.988 9.523,23.345 C9.523,22.686 9.308,22.140 8.876,21.709 Z" />
                                <path class="fill-primary" fill-rule="evenodd"
                                d="M105.996,23.499 C105.995,26.752 103.950,29.265 100.748,29.950 C100.713,29.958 100.681,29.983 100.647,30.000 C100.588,30.000 100.529,30.000 100.471,30.000 C100.467,28.585 100.460,27.171 100.466,25.756 C100.467,25.675 100.550,25.565 100.626,25.518 C101.352,25.068 101.714,24.425 101.711,23.571 C101.707,22.020 101.710,20.469 101.710,18.892 C103.133,18.892 104.546,18.892 105.996,18.892 C105.996,18.989 105.996,19.093 105.996,19.196 C105.996,20.630 105.997,22.065 105.996,23.499 ZM101.715,17.089 C101.715,15.990 101.683,14.917 101.724,13.847 C101.767,12.679 102.761,11.806 103.931,11.838 C105.060,11.869 105.978,12.794 105.993,13.940 C106.005,14.954 105.995,15.969 105.995,16.983 C105.995,17.011 105.987,17.040 105.980,17.089 C104.569,17.089 103.157,17.089 101.715,17.089 ZM96.421,29.234 C94.322,27.983 93.199,26.136 93.155,23.703 C93.108,21.138 93.145,18.571 93.146,16.005 C93.146,15.957 93.153,15.910 93.159,15.841 C94.572,15.841 95.976,15.841 97.426,15.841 C97.426,15.948 97.426,16.060 97.426,16.172 C97.426,18.602 97.430,21.031 97.423,23.461 C97.421,24.364 97.757,25.066 98.548,25.540 C98.629,25.589 98.688,25.740 98.689,25.844 C98.699,27.122 98.695,28.401 98.696,29.679 C98.696,29.786 98.703,29.893 98.707,30.000 C98.648,30.000 98.590,30.000 98.531,30.000 C97.799,29.823 97.075,29.624 96.421,29.234 ZM93.145,14.043 C93.145,13.935 93.145,13.823 93.145,13.711 C93.145,11.318 93.137,8.926 93.149,6.534 C93.154,5.625 92.818,4.928 92.023,4.460 C91.961,4.424 91.894,4.332 91.894,4.265 C91.886,2.850 91.888,1.436 91.888,0.000 C93.423,0.232 94.703,0.889 95.731,2.009 C96.833,3.209 97.413,4.630 97.421,6.261 C97.433,8.791 97.426,11.319 97.427,13.849 C97.427,13.906 97.421,13.964 97.416,14.043 C96.005,14.043 94.599,14.043 93.145,14.043 ZM89.588,4.782 C89.034,5.128 88.866,5.768 88.868,6.431 C88.875,8.061 88.870,9.692 88.869,11.322 C88.869,12.143 88.869,12.963 88.867,13.783 C88.867,13.869 88.857,13.954 88.851,14.051 C87.434,14.051 86.035,14.051 84.587,14.051 C84.587,13.958 84.587,13.866 84.587,13.774 C84.588,11.294 84.579,8.814 84.590,6.334 C84.605,3.158 86.853,0.543 90.000,0.018 C90.028,0.013 90.058,0.017 90.125,0.017 C90.125,0.639 90.125,1.243 90.125,1.848 C90.125,2.405 90.109,2.962 90.130,3.518 C90.149,4.032 90.126,4.447 89.588,4.782 ZM84.585,15.837 C86.015,15.837 87.420,15.837 88.868,15.837 C88.868,15.951 88.868,16.065 88.868,16.179 C88.868,18.608 88.849,21.039 88.873,23.468 C88.908,27.007 86.358,29.493 83.589,29.955 C83.552,29.961 83.518,29.985 83.482,30.000 C83.424,30.000 83.365,30.000 83.306,30.000 C83.310,28.634 83.319,27.268 83.313,25.902 C83.311,25.691 83.376,25.580 83.559,25.467 C84.268,25.031 84.587,24.371 84.587,23.549 C84.587,21.099 84.586,18.650 84.585,16.201 C84.585,16.085 84.585,15.970 84.585,15.837 ZM81.366,30.000 C80.875,29.844 80.360,29.740 79.897,29.524 C77.435,28.380 76.120,26.440 76.027,23.732 C75.974,22.192 76.017,20.649 76.016,19.107 C76.016,19.040 76.016,18.973 76.016,18.886 C77.447,18.886 78.859,18.886 80.303,18.886 C80.303,19.000 80.303,19.104 80.303,19.209 C80.303,20.663 80.308,22.117 80.302,23.571 C80.298,24.427 80.666,25.065 81.387,25.518 C81.463,25.566 81.547,25.675 81.547,25.756 C81.553,27.171 81.546,28.585 81.542,30.000 C81.484,30.000 81.425,30.000 81.366,30.000 ZM76.017,17.097 C76.017,16.540 76.017,15.997 76.017,15.453 C76.017,14.965 76.012,14.478 76.017,13.990 C76.030,12.831 76.911,11.892 78.032,11.838 C79.203,11.781 80.217,12.619 80.282,13.797 C80.341,14.885 80.294,15.978 80.294,17.097 C78.857,17.097 77.452,17.097 76.017,17.097 Z" />
                            </svg>
                        </a>
                    </div>
                    <div class="site-navigation mr-auto d-none d-xl-block">
                        <ul class="nav">
                            <li class="nav-item dropdown">
                                <a id="homeDropdownInvoker" href="#" class="dropdown-toggle nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium d-flex align-items-center"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                    data-unfold-event="hover"
                                    data-unfold-target="#homeDropdownMenu"
                                    data-unfold-type="css-animation"
                                    data-unfold-duration="200"
                                    data-unfold-delay="50"
                                    data-unfold-hide-on-scroll="true"
                                    data-unfold-animation-in="slideInUp"
                                    data-unfold-animation-out="fadeOut">
                                    Home
                                </a>
                                <ul id="homeDropdownMenu" class="dropdown-unfold dropdown-menu font-size-2 rounded-0 border-gray-900" aria-labelledby="homeDropdownInvoker">
                                    <li><a href="../home/index.html" class="dropdown-item link-black-100">Home v1</a></li>
                                    <li><a href="../home/home-v2.html" class="dropdown-item link-black-100">Home v2</a></li>
                                    <li><a href="../home/home-v3.html" class="dropdown-item link-black-100">Home v3</a></li>
                                    <li><a href="../home/home-v4.html" class="dropdown-item link-black-100">Home v4</a></li>
                                    <li><a href="../home/home-v5.html" class="dropdown-item link-black-100">Home v5</a></li>
                                    <li><a href="../home/home-v6.html" class="dropdown-item link-black-100">Home v6</a></li>
                                    <li><a href="../home/home-v7.html" class="dropdown-item link-black-100">Home v7</a></li>
                                    <li><a href="../home/home-v8.html" class="dropdown-item link-black-100">Home v8</a></li>
                                    <li><a href="../home/home-v9.html" class="dropdown-item link-black-100">Home v9</a></li>
                                    <li><a href="../home/home-v10.html" class="dropdown-item link-black-100">Home v10</a></li>
                                    <li><a href="../home/home-v11.html" class="dropdown-item link-black-100">Home v11</a></li>
                                    <li><a href="../home/home-v12.html" class="dropdown-item link-black-100">Home v12</a></li>
                                    <li><a href="../home/home-v13.html" class="dropdown-item link-black-100">Home v13</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a href="#" class="nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium active border-bottom border-primary border-width-2">Categories</a></li>
                            <li class="nav-item dropdown">
                                <a id="shopDropdownInvoker" href="#" class="dropdown-toggle nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium d-flex align-items-center"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                    data-unfold-event="hover"
                                    data-unfold-target="#shopDropdownMenu"
                                    data-unfold-type="css-animation"
                                    data-unfold-duration="200"
                                    data-unfold-delay="50"
                                    data-unfold-hide-on-scroll="true"
                                    data-unfold-animation-in="slideInUp"
                                    data-unfold-animation-out="fadeOut">
                                    Shop
                                </a>
                                <ul id="shopDropdownMenu" class="dropdown-unfold dropdown-menu font-size-2 rounded-0 border-gray-900" aria-labelledby="shopDropdownInvoker">
                                    <li class="position-relative">
                                        <a id="shopDropdownsubmenuoneInvoker" href="#" class="dropdown-toggle dropdown-item dropdown-item__sub-menu link-black-100 d-flex align-items-center justify-content-between"
                                            aria-haspopup="true"
                                            aria-expanded="false"
                                            data-unfold-event="hover"
                                            data-unfold-target="#shopDropdownsubMenuone"
                                            data-unfold-type="css-animation"
                                            data-unfold-duration="200"
                                            data-unfold-delay="100"
                                            data-unfold-hide-on-scroll="true"
                                            data-unfold-animation-in="slideInUp"
                                            data-unfold-animation-out="fadeOut">Shop List
                                        </a>
                                        <ul id="shopDropdownsubMenuone" class="dropdown-unfold dropdown-menu dropdown-sub-menu font-size-2 rounded-0 border-gray-900" aria-labelledby="shopDropdownsubmenuoneInvoker">
                                            <li><a href="../shop/v1.html" class="dropdown-item link-black-100">Shop List v1</a></li>
                                            <li><a href="../shop/v2.html" class="dropdown-item link-black-100">Shop List v2</a></li>
                                            <li><a href="../shop/v3.html" class="dropdown-item link-black-100">Shop List v3</a></li>
                                            <li><a href="../shop/v4.html" class="dropdown-item link-black-100">Shop List v4</a></li>
                                            <li><a href="../shop/v5.html" class="dropdown-item link-black-100">Shop List v5</a></li>
                                            <li><a href="../shop/v6.html" class="dropdown-item link-black-100">Shop List v6</a></li>
                                            <li><a href="../shop/v7.html" class="dropdown-item link-black-100">Shop List v7</a></li>
                                            <li><a href="../shop/v8.html" class="dropdown-item link-black-100">Shop List v8</a></li>
                                            <li><a href="../shop/v9.html" class="dropdown-item link-black-100">Shop List v9</a></li>
                                        </ul>
                                    </li>
                                    <li class="position-relative">
                                        <a id="shopDropdownsubmenutwoInvoker" href="#" class="dropdown-toggle dropdown-item dropdown-item__sub-menu link-black-100 d-flex align-items-center justify-content-between"
                                            aria-haspopup="true"
                                            aria-expanded="false"
                                            data-unfold-event="hover"
                                            data-unfold-target="#shopDropdownsubMenutwo"
                                            data-unfold-type="css-animation"
                                            data-unfold-duration="200"
                                            data-unfold-delay="100"
                                            data-unfold-hide-on-scroll="true"
                                            data-unfold-animation-in="slideInUp"
                                            data-unfold-animation-out="fadeOut">Single Product
                                        </a>
                                        <ul id="shopDropdownsubMenutwo" class="dropdown-unfold dropdown-menu dropdown-sub-menu font-size-2 rounded-0 border-gray-900" aria-labelledby="shopDropdownsubmenutwoInvoker">
                                            <li><a href="../shop/single-product-v1.html" class="dropdown-item link-black-100">Shop Single v1</a></li>
                                            <li><a href="../shop/single-product-v2.html" class="dropdown-item link-black-100">Shop Single v2</a></li>
                                            <li><a href="../shop/single-product-v3.html" class="dropdown-item link-black-100">Shop Single v3</a></li>
                                            <li><a href="../shop/single-product-v4.html" class="dropdown-item link-black-100">Shop Single v4</a></li>
                                            <li><a href="../shop/single-product-v5.html" class="dropdown-item link-black-100">Shop Single v5</a></li>
                                            <li><a href="../shop/single-product-v6.html" class="dropdown-item link-black-100">Shop Single v6</a></li>
                                            <li><a href="../shop/single-product-v7.html" class="dropdown-item link-black-100">Shop Single v7</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="../shop/cart.html" class="dropdown-item link-black-100">Shop cart</a></li>
                                    <li><a href="../shop/checkout.html" class="dropdown-item link-black-100">Shop checkout</a></li>
                                    <li><a href="../shop/my-account.html" class="dropdown-item link-black-100">Shop My Account</a></li>
                                    <li><a href="../shop/order-received.html" class="dropdown-item link-black-100">Shop Order Received</a></li>
                                    <li><a href="../shop/order-tracking.html" class="dropdown-item link-black-100">Shop Order Tracking</a></li>
                                    <li><a href="../shop/store-location.html" class="dropdown-item link-black-100">Shop Store Location</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a id="featuresDropdownInvoker" href="#" class="dropdown-toggle nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium d-flex align-items-center"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                    data-unfold-event="hover"
                                    data-unfold-target="#featuresDropdownMenu"
                                    data-unfold-type="css-animation"
                                    data-unfold-duration="200"
                                    data-unfold-delay="50"
                                    data-unfold-hide-on-scroll="true"
                                    data-unfold-animation-in="slideInUp"
                                    data-unfold-animation-out="fadeOut">
                                    Pages
                                </a>
                                <div id="featuresDropdownMenu" class="p-0 dropdown-unfold dropdown-menu megamenu font-size-2 rounded-0 border-gray-900" aria-labelledby="featuresDropdownInvoker" style="width:1100px;">
                                    <div class="row no-gutters">
                                        <div class="col-8 px-1">
                                            <div class="px-5 py-2 pb-5">
                                                <div class="row">
                                                    <div class="col-3">
                                                        <ul class="menu list-unstyled">
                                                            <li><span class=" d-block link-black-100 py-3 font-size-3 font-weight-medium">Home</span></li>
                                                            <li><a href="../home/index.html" class="d-block link-black-100 py-1">Home v1</a></li>
                                                            <li><a href="../home/home-v2.html" class="d-block link-black-100 py-1">Home v2</a></li>
                                                            <li><a href="../home/home-v3.html" class="d-block link-black-100 py-1">Home v3</a></li>
                                                            <li><a href="../home/home-v4.html" class="d-block link-black-100 py-1">Home v4</a></li>
                                                            <li><a href="../home/home-v5.html" class="d-block link-black-100 py-1">Home v5</a></li>
                                                            <li><a href="../home/home-v6.html" class="d-block link-black-100 py-1">Home v6</a></li>
                                                            <li><a href="../home/home-v7.html" class="d-block link-black-100 py-1">Home v7</a></li>
                                                            <li><a href="../home/home-v8.html" class="d-block link-black-100 py-1">Home v8</a></li>
                                                            <li><a href="../home/home-v9.html" class="d-block link-black-100 py-1">Home v9</a></li>
                                                            <li><a href="../home/home-v10.html" class="d-block link-black-100 py-1">Home v10</a></li>
                                                            <li><a href="../home/home-v11.html" class="d-block link-black-100 py-1">Home v11</a></li>
                                                            <li><a href="../home/home-v12.html" class="d-block link-black-100 py-1">Home v12</a></li>
                                                            <li><a href="../home/home-v13.html" class="d-block link-black-100 py-1">Home v13</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-3">
                                                        <ul class="menu list-unstyled">
                                                            <li><span class=" d-block link-black-100 py-3 font-size-3 font-weight-medium">Single Product</span></li>
                                                            <li><a href="../shop/single-product-v1.html" class="d-block link-black-100 py-1">Single Product v1</a></li>
                                                            <li><a href="../shop/single-product-v2.html" class="d-block link-black-100 py-1">Single Product v2</a></li>
                                                            <li><a href="../shop/single-product-v3.html" class="d-block link-black-100 py-1">Single Product v3</a></li>
                                                            <li><a href="../shop/single-product-v4.html" class="d-block link-black-100 py-1">Single Product v4</a></li>
                                                            <li><a href="../shop/single-product-v5.html" class="d-block link-black-100 py-1">Single Product v5</a></li>
                                                            <li><a href="../shop/single-product-v6.html" class="d-block link-black-100 py-1">Single Product v6</a></li>
                                                            <li><a href="../shop/single-product-v7.html" class="d-block link-black-100 py-1">Single Product v7</a></li>
                                                            <li><span class=" d-block link-black-100 py-3 font-size-3 font-weight-medium">Shop Pages</span></li>
                                                            <li><a href="../shop/cart.html" class="d-block link-black-100 py-1">Shop cart</a></li>
                                                            <li><a href="../shop/checkout.html" class="d-block link-black-100 py-1">Shop checkout</a></li>
                                                            <li><a href="../shop/my-account.html" class="d-block link-black-100 py-1">Shop My Account</a></li>
                                                            <li><a href="../shop/order-received.html" class="d-block link-black-100 py-1">Shop Order Received</a></li>
                                                            <li><a href="../shop/order-tracking.html" class="d-block link-black-100 py-1">Shop Order Tracking</a></li>
                                                            <li><a href="../shop/store-location.html" class="d-block link-black-100 py-1">Shop Store Location</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-3">
                                                        <ul class="menu list-unstyled">
                                                            <li><span class=" d-block link-black-100 py-3 font-size-3 font-weight-medium">Shop List</span></li>
                                                            <li><a href="../shop/v1.html" class="d-block link-black-100 py-1">Shop List v1</a></li>
                                                            <li><a href="../shop/v2.html" class="d-block link-black-100 py-1">Shop List v2</a></li>
                                                            <li><a href="../shop/v3.html" class="d-block link-black-100 py-1">Shop List v3</a></li>
                                                            <li><a href="../shop/v4.html" class="d-block link-black-100 py-1">Shop List v4</a></li>
                                                            <li><a href="../shop/v5.html" class="d-block link-black-100 py-1">Shop List v5</a></li>
                                                            <li><a href="../shop/v6.html" class="d-block link-black-100 py-1">Shop List v6</a></li>
                                                            <li><a href="../shop/v7.html" class="d-block link-black-100 py-1">Shop List v7</a></li>
                                                            <li><a href="../shop/v8.html" class="d-block link-black-100 py-1">Shop List v8</a></li>
                                                            <li><a href="../shop/v9.html" class="d-block link-black-100 py-1">Shop List v9</a></li>
                                                            <li><span class=" d-block link-black-100 py-3 font-size-3 font-weight-medium">Blog</span></li>
                                                            <li><a href="../blog/blog-v1.html" class="d-block link-black-100 py-1">Blog v1</a></li>
                                                            <li><a href="../blog/blog-v2.html" class="d-block link-black-100 py-1">Blog v2</a></li>
                                                            <li><a href="../blog/blog-v3.html" class="d-block link-black-100 py-1">Blog v3</a></li>
                                                            <li><a href="../blog/blog-single.html" class="d-block link-black-100 py-1">Blog Single</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-3">
                                                        <ul class="menu list-unstyled">
                                                            <li><span class=" d-block link-black-100 py-3 font-size-3 font-weight-medium">Others</span></li>
                                                            <li><a href="../others/404.html" class="d-block link-black-100 py-1">404</a></li>
                                                            <li><a href="../others/about.html" class="d-block link-black-100 py-1">About Us</a></li>
                                                            <li><a href="../others/authors-list.html" class="d-block link-black-100 py-1">Authors List</a></li>
                                                            <li><a href="../others/authors-single.html" class="d-block link-black-100 py-1">Authors Single</a></li>
                                                            <li><a href="../others/coming-soon.html" class="d-block link-black-100 py-1">Coming Soon</a></li>
                                                            <li><a href="../others/contact.html" class="d-block link-black-100 py-1">Contact Us</a></li>
                                                            <li><a href="../others/faq.html" class="d-block link-black-100 py-1">FAQ</a></li>
                                                            <li><a href="../others/pricing-table.html" class="d-block link-black-100 py-1">Pricing Table</a></li>
                                                            <li><a href="../others/terms-conditions.html" class="d-block link-black-100 py-1">Terms Conditions</a></li>
                              <li><a href="../../documentation/index.html" class="btn btn-primary mb-3 mb-md-0 mb-xl-3 mt-4 font-size-2 btn-block">Documentation</a></li>
                              <li><a href="../../starter/index.html" class="btn btn-secondary font-size-2 btn-block mb-2">Starter</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 bg-gray-200">
                                            <div class="banner px-8 py-5">
                                                <div class="banner__body">
                                                    <h3 class="banner_text m-0">
                                                        <span class="d-block mb-1 font-size-7 font-weight-regular">Deals in </span>
                                                        <span class="d-block mb-2 font-size-10 text-primary font-weight-bold">Books</span>
                                                    </h3>
                                                    <a href="#" class="d-block link-black-100 mb-6">Shop Now</a>
                                                    <div class="banner__image">
                                                        <img src="https://placehold.it/280x210" class="img-fluid" alt="image-description">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a id="blogDropdownInvoker" href="#" class="dropdown-toggle nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium d-flex align-items-center"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                    data-unfold-event="hover"
                                    data-unfold-target="#blogDropdownMenu"
                                    data-unfold-type="css-animation"
                                    data-unfold-duration="200"
                                    data-unfold-delay="50"
                                    data-unfold-hide-on-scroll="true"
                                    data-unfold-animation-in="slideInUp"
                                    data-unfold-animation-out="fadeOut">
                                    Blog
                                </a>
                                <ul id="blogDropdownMenu" class="dropdown-unfold dropdown-menu font-size-2 rounded-0 border-gray-900" aria-labelledby="blogDropdownInvoker">
                                    <li><a href="../blog/blog-v1.html" class="dropdown-item link-black-100">Blog v1</a></li>
                                    <li><a href="../blog/blog-v2.html" class="dropdown-item link-black-100">Blog v2</a></li>
                                    <li><a href="../blog/blog-v3.html" class="dropdown-item link-black-100">Blog v3</a></li>
                                    <li><a href="../blog/blog-single.html" class="dropdown-item link-black-100">Blog Single</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a id="pagesDropdownInvoker" href="#" class="dropdown-toggle nav-link link-black-100 mx-4 px-0 py-5 font-weight-medium d-flex align-items-center"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                    data-unfold-event="hover"
                                    data-unfold-target="#pagesDropdownMenu"
                                    data-unfold-type="css-animation"
                                    data-unfold-duration="200"
                                    data-unfold-delay="50"
                                    data-unfold-hide-on-scroll="true"
                                    data-unfold-animation-in="slideInUp"
                                    data-unfold-animation-out="fadeOut">
                                    Others
                                </a>
                                <ul id="pagesDropdownMenu" class="dropdown-unfold dropdown-menu font-size-2 rounded-0 border-gray-900" aria-labelledby="pagesDropdownInvoker">
                                    <li><a href="../others/404.html" class="dropdown-item link-black-100">404</a></li>
                                    <li><a href="../others/about.html" class="dropdown-item link-black-100">About Us</a></li>
                                    <li><a href="../others/authors-list.html" class="dropdown-item link-black-100">Authors List</a></li>
                                    <li><a href="../others/authors-single.html" class="dropdown-item link-black-100">Authors Single</a></li>
                                    <li><a href="../others/coming-soon.html" class="dropdown-item link-black-100">Coming Soon</a></li>
                                    <li><a href="../others/contact.html" class="dropdown-item link-black-100">Contact Us</a></li>
                                    <li><a href="../others/faq.html" class="dropdown-item link-black-100">FAQ</a></li>
                                    <li><a href="../others/pricing-table.html" class="dropdown-item link-black-100">Pricing Table</a></li>
                                    <li><a href="../others/terms-conditions.html" class="dropdown-item link-black-100">Terms Conditions</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                    <ul class="d-md-none nav mr-md-n3 ml-auto">
                        <li class="nav-item">
                            <!-- Account Sidebar Toggle Button - Mobile -->
                            <a id="sidebarNavToggler9" href="javascript:;" role="button" class="px-2 nav-link link-black-100"
                                aria-controls="sidebarContent9"
                                aria-haspopup="true"
                                aria-expanded="false"
                                data-unfold-event="click"
                                data-unfold-hide-on-scroll="false"
                                data-unfold-target="#sidebarContent9"
                                data-unfold-type="css-animation"
                                data-unfold-overlay='{
                                    "className": "u-sidebar-bg-overlay",
                                    "background": "rgba(0, 0, 0, .7)",
                                    "animationSpeed": 500
                                }'
                                data-unfold-animation-in="fadeInRight"
                                data-unfold-animation-out="fadeOutRight"
                                data-unfold-duration="500">
                                <i class="glph-icon flaticon-user"></i>
                            </a>
                            <!-- End Account Sidebar Toggle Button - Mobile -->
                        </li>
                    </ul>
                    
                    <script>
						jQuery(function($) {
							$("#search").keydown(function(e) {		// 메인 페이지 중간 검색어 입력박스 엔터-키 처리
								if (e.keyCode == 13) {
									$("#search_button").trigger( "click" );
								}
							});
							$("#search_button").click(function(e) {					// 메인 페이지 검색어 입력박스 옆 전송버튼 클릭시
								let terms = $("#search").val().trim();								
								if (terms == '') {
									alert("검색어를 입력하세요.");
									return false;
								}
								var show = sessionStorage.getItem("show");
								if(sessionStorage.getItem("show")==null){
									show = 12;
								}
								$(location).attr('href', "/search/book?&type=1&keyword="+terms+"&page=1");
								return false;
							});
						});
					</script>

                    <div class="site-search ml-xl-0 ml-md-auto w-r-100 my-2 my-xl-0">
                        <form class="form-inline">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <i class="glph-icon flaticon-loupe input-group-text py-2d75 bg-white-100 border-white-100"></i>
                                </div>
                                <input id="search" class="form-control bg-white-100 min-width-380 py-2d75 height-4 border-white-100" type="search" placeholder="통합검색 - 검색어를 입력하세요" aria-label="Search" autocomplete="off">
                            </div>
                            <button id="search_button" class="btn btn-outline-success my-2 my-sm-0 sr-only" type="submit">검색</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Account Sidebar Navigation - Mobile -->
    <aside id="sidebarContent9" class="u-sidebar u-sidebar__lg" aria-labelledby="sidebarNavToggler9">
        <div class="u-sidebar__scroller">
            <div class="u-sidebar__container">
                <div class="u-header-sidebar__footer-offset">
                    <!-- Toggle Button -->
                    <div class="d-flex align-items-center position-absolute top-0 right-0 z-index-2 mt-5 mr-md-6 mr-4">
                        <button type="button" class="close ml-auto"
                            aria-controls="sidebarContent9"
                            aria-haspopup="true"
                            aria-expanded="false"
                            data-unfold-event="click"
                            data-unfold-hide-on-scroll="false"
                            data-unfold-target="#sidebarContent9"
                            data-unfold-type="css-animation"
                            data-unfold-animation-in="fadeInRight"
                            data-unfold-animation-out="fadeOutRight"
                            data-unfold-duration="500">
                            <span aria-hidden="true">Close <i class="fas fa-times ml-2"></i></span>
                        </button>
                    </div>
                    <!-- End Toggle Button -->

                    <!-- Content -->
                    <div class="js-scrollbar u-sidebar__body">
                        <div class="u-sidebar__content u-header-sidebar__content">
                            <form class="">
                                <!-- Login -->
                                <div id="login1" data-target-group="idForm1">
                                    <!-- Title -->
                                    <header class="border-bottom px-4 px-md-6 py-4">
                                        <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-user mr-3 font-size-5"></i>Account</h2>
                                    </header>
                                    <!-- End Title -->

                                    <div class="p-4 p-md-6">
                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signinEmailLabel9" class="form-label" for="signinEmail9">Username or email *</label>
                                                <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail9" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel9" required>
                                            </div>
                                        </div>
                                        <!-- End Form Group -->

                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signinPasswordLabel9" class="form-label" for="signinPassword9">Password *</label>
                                                <input type="password" class="form-control rounded-0 height-4 px-4" name="password" id="signinPassword9" placeholder="" aria-label="" aria-describedby="signinPasswordLabel9" required>
                                            </div>
                                        </div>
                                        <!-- End Form Group -->

                                        <div class="d-flex justify-content-between mb-5 align-items-center">
                                            <!-- Checkbox -->
                                            <div class="js-form-message">
                                                <div class="custom-control custom-checkbox d-flex align-items-center text-muted">
                                                    <input type="checkbox" class="custom-control-input" id="termsCheckbox1" name="termsCheckbox1" required>
                                                    <label class="custom-control-label" for="termsCheckbox1">
                                                        <span class="font-size-2 text-secondary-gray-700">
                                                            Remember me
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <!-- End Checkbox -->

                                            <a class="js-animation-link text-dark font-size-2 t-d-u link-muted font-weight-medium" href="javascript:;"
                                            data-target="#forgotPassword1"
                                            data-link-group="idForm1"
                                            data-animation-in="fadeIn">Forgot Password?</a>
                                        </div>

                                        <div class="mb-4d75">
                                            <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Sign In</button>
                                        </div>

                                        <div class="mb-2">
                                            <a href="javascript:;" class="js-animation-link btn btn-block py-3 rounded-0 btn-outline-dark font-weight-medium"
                                            data-target="#signup1"
                                            data-link-group="idForm1"
                                            data-animation-in="fadeIn">Create Account</a>
                                        </div>
                                    </div>
                                </div>

                                <!-- Signup -->
                                <div id="signup1" style="display: none; opacity: 0;" data-target-group="idForm1">
                                    <!-- Title -->
                                    <header class="border-bottom px-4 px-md-6 py-4">
                                        <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-resume mr-3 font-size-5"></i>Create Account</h2>
                                    </header>
                                    <!-- End Title -->

                                    <div class="p-4 p-md-6">
                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signinEmailLabel11" class="form-label" for="signinEmail11">Email *</label>
                                                <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail11" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel11" required>
                                            </div>
                                        </div>
                                        <!-- End Form Group -->

                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signinPasswordLabel11" class="form-label" for="signinPassword11">Password *</label>
                                                <input type="password" class="form-control rounded-0 height-4 px-4" name="password" id="signinPassword11" placeholder="" aria-label="" aria-describedby="signinPasswordLabel11" required>
                                            </div>
                                        </div>
                                        <!-- End Form Group -->

                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signupConfirmPasswordLabel9" class="form-label" for="signupConfirmPassword9">Confirm Password *</label>
                                                <input type="password" class="form-control rounded-0 height-4 px-4" name="confirmPassword" id="signupConfirmPassword9" placeholder="" aria-label="" aria-describedby="signupConfirmPasswordLabel9" required>
                                            </div>
                                        </div>
                                        <!-- End Input -->

                                        <div class="mb-3">
                                            <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Create Account</button>
                                        </div>

                                        <div class="text-center mb-4">
                                            <span class="small text-muted">Already have an account?</span>
                                            <a class="js-animation-link small" href="javascript:;"
                                                data-target="#login1"
                                                data-link-group="idForm1"
                                                data-animation-in="fadeIn">Login
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Signup -->

                                <!-- Forgot Password -->
                                <div id="forgotPassword1" style="display: none; opacity: 0;" data-target-group="idForm1">
                                    <!-- Title -->
                                    <header class="border-bottom px-4 px-md-6 py-4">
                                        <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-question mr-3 font-size-5"></i>Forgot Password?</h2>
                                    </header>
                                    <!-- End Title -->

                                    <div class="p-4 p-md-6">
                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signinEmailLabel33" class="form-label" for="signinEmail33">Email *</label>
                                                <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail33" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel33" required>
                                            </div>
                                        </div>
                                        <!-- End Form Group -->

                                        <div class="mb-3">
                                            <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Recover Password</button>
                                        </div>

                                        <div class="text-center mb-4">
                                            <span class="small text-muted">Remember your password?</span>
                                            <a class="js-animation-link small" href="javascript:;"
                                                data-target="#login1"
                                                data-link-group="idForm1"
                                                data-animation-in="fadeIn">Login
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Forgot Password -->
                            </form>
                        </div>
                    </div>
                    <!-- End Content -->
                </div>
            </div>
        </div>
    </aside>
    <!-- End Account Sidebar Navigation - Mobile -->

    <!-- Account Sidebar Navigation - Desktop -->
    <aside id="sidebarContent" class="u-sidebar u-sidebar__lg" aria-labelledby="sidebarNavToggler">
        <div class="u-sidebar__scroller">
            <div class="u-sidebar__container">
                <div class="u-header-sidebar__footer-offset">
                    <!-- Toggle Button -->
                    <div class="d-flex align-items-center position-absolute top-0 right-0 z-index-2 mt-5 mr-md-6 mr-4">
                        <button type="button" class="close ml-auto"
                            aria-controls="sidebarContent"
                            aria-haspopup="true"
                            aria-expanded="false"
                            data-unfold-event="click"
                            data-unfold-hide-on-scroll="false"
                            data-unfold-target="#sidebarContent"
                            data-unfold-type="css-animation"
                            data-unfold-animation-in="fadeInRight"
                            data-unfold-animation-out="fadeOutRight"
                            data-unfold-duration="500">
                            <span aria-hidden="true">Close <i class="fas fa-times ml-2"></i></span>
                        </button>
                    </div>
                    <!-- End Toggle Button -->

                    <!-- Content -->
                    <div class="js-scrollbar u-sidebar__body">
                        <div class="u-sidebar__content u-header-sidebar__content">
                            <form class="">
                                <!-- Login -->
                                <div id="login" data-target-group="idForm">
                                    <!-- Title -->
                                    <header class="border-bottom px-4 px-md-6 py-4">
                                        <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-user mr-3 font-size-5"></i>Account</h2>
                                    </header>
                                    <!-- End Title -->

                                    <div class="p-4 p-md-6">
                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signinEmailLabel" class="form-label" for="signinEmail">Username or email *</label>
                                                <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel" required>
                                            </div>
                                        </div>
                                        <!-- End Form Group -->

                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signinPasswordLabel" class="form-label" for="signinPassword">Password *</label>
                                                <input type="password" class="form-control rounded-0 height-4 px-4" name="password" id="signinPassword" placeholder="" aria-label="" aria-describedby="signinPasswordLabel" required>
                                            </div>
                                        </div>
                                        <!-- End Form Group -->

                                        <div class="d-flex justify-content-between mb-5 align-items-center">
                                            <!-- Checkbox -->
                                            <div class="js-form-message">
                                                <div class="custom-control custom-checkbox d-flex align-items-center text-muted">
                                                    <input type="checkbox" class="custom-control-input" id="termsCheckbox" name="termsCheckbox" required>
                                                    <label class="custom-control-label" for="termsCheckbox">
                                                        <span class="font-size-2 text-secondary-gray-700">
                                                            Remember me
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <!-- End Checkbox -->

                                            <a class="js-animation-link text-dark font-size-2 t-d-u link-muted font-weight-medium" href="javascript:;"
                                            data-target="#forgotPassword"
                                            data-link-group="idForm"
                                            data-animation-in="fadeIn">Forgot Password?</a>
                                        </div>

                                        <div class="mb-4d75">
                                            <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Sign In</button>
                                        </div>

                                        <div class="mb-2">
                                            <a href="javascript:;" class="js-animation-link btn btn-block py-3 rounded-0 btn-outline-dark font-weight-medium"
                                            data-target="#signup"
                                            data-link-group="idForm"
                                            data-animation-in="fadeIn">Create Account</a>
                                        </div>
                                    </div>
                                </div>

                                <!-- Signup -->
                                <div id="signup" style="display: none; opacity: 0;" data-target-group="idForm">
                                    <!-- Title -->
                                    <header class="border-bottom px-4 px-md-6 py-4">
                                        <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-resume mr-3 font-size-5"></i>Create Account</h2>
                                    </header>
                                    <!-- End Title -->

                                    <div class="p-4 p-md-6">
                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signinEmailLabel1" class="form-label" for="signinEmail1">Email *</label>
                                                <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail1" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel1" required>
                                            </div>
                                        </div>
                                        <!-- End Form Group -->

                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signinPasswordLabel1" class="form-label" for="signinPassword1">Password *</label>
                                                <input type="password" class="form-control rounded-0 height-4 px-4" name="password" id="signinPassword1" placeholder="" aria-label="" aria-describedby="signinPasswordLabel1" required>
                                            </div>
                                        </div>
                                        <!-- End Form Group -->

                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signupConfirmPasswordLabel" class="form-label" for="signupConfirmPassword">Confirm Password *</label>
                                                <input type="password" class="form-control rounded-0 height-4 px-4" name="confirmPassword" id="signupConfirmPassword" placeholder="" aria-label="" aria-describedby="signupConfirmPasswordLabel" required>
                                            </div>
                                        </div>
                                        <!-- End Input -->

                                        <div class="mb-3">
                                            <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Create Account</button>
                                        </div>

                                        <div class="text-center mb-4">
                                            <span class="small text-muted">Already have an account?</span>
                                            <a class="js-animation-link small" href="javascript:;"
                                                data-target="#login"
                                                data-link-group="idForm"
                                                data-animation-in="fadeIn">Login
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Signup -->

                                <!-- Forgot Password -->
                                <div id="forgotPassword" style="display: none; opacity: 0;" data-target-group="idForm">
                                    <!-- Title -->
                                    <header class="border-bottom px-4 px-md-6 py-4">
                                        <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-question mr-3 font-size-5"></i>Forgot Password?</h2>
                                    </header>
                                    <!-- End Title -->

                                    <div class="p-4 p-md-6">
                                        <!-- Form Group -->
                                        <div class="form-group mb-4">
                                            <div class="js-form-message js-focus-state">
                                                <label id="signinEmailLabel3" class="form-label" for="signinEmail3">Email *</label>
                                                <input type="email" class="form-control rounded-0 height-4 px-4" name="email" id="signinEmail3" placeholder="creativelayers088@gmail.com" aria-label="creativelayers088@gmail.com" aria-describedby="signinEmailLabel3" required>
                                            </div>
                                        </div>
                                        <!-- End Form Group -->

                                        <div class="mb-3">
                                            <button type="submit" class="btn btn-block py-3 rounded-0 btn-dark">Recover Password</button>
                                        </div>

                                        <div class="text-center mb-4">
                                            <span class="small text-muted">Remember your password?</span>
                                            <a class="js-animation-link small" href="javascript:;"
                                                data-target="#login"
                                                data-link-group="idForm"
                                                data-animation-in="fadeIn">Login
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Forgot Password -->
                            </form>
                        </div>
                    </div>
                    <!-- End Content -->
                </div>
            </div>
        </div>
    </aside>
    <!-- End Account Sidebar Navigation - Desktop -->

    <!-- Cart Sidebar Navigation -->
    <aside id="sidebarContent1" class="u-sidebar u-sidebar__xl" aria-labelledby="sidebarNavToggler1">
        <div class="u-sidebar__scroller js-scrollbar">
            <div class="u-sidebar__container">
                <div class="u-header-sidebar__footer-offset">
                    <!-- Toggle Button -->
                    <div class="d-flex align-items-center position-absolute top-0 right-0 z-index-2 mt-5 mr-md-6 mr-4">
                        <button type="button" class="close ml-auto"
                            aria-controls="sidebarContent1"
                            aria-haspopup="true"
                            aria-expanded="false"
                            data-unfold-event="click"
                            data-unfold-hide-on-scroll="false"
                            data-unfold-target="#sidebarContent1"
                            data-unfold-type="css-animation"
                            data-unfold-animation-in="fadeInRight"
                            data-unfold-animation-out="fadeOutRight"
                            data-unfold-duration="500">
                            <span aria-hidden="true">Close <i class="fas fa-times ml-2"></i></span>
                        </button>
                    </div>
                    <!-- End Toggle Button -->

                    <!-- Content -->
                    <div class="u-sidebar__body">
                        <div class="u-sidebar__content u-header-sidebar__content">
                            <!-- Title -->
                            <header class="border-bottom px-4 px-md-6 py-4">
                                <h2 class="font-size-3 mb-0 d-flex align-items-center"><i class="flaticon-icon-126515 mr-3 font-size-5"></i>Your shopping bag (3)</h2>
                            </header>
                            <!-- End Title -->

                            <div class="px-4 py-5 px-md-6 border-bottom">
                                <div class="media">
                                    <a href="#" class="d-block"><img src="https://placehold.it/100x153" class="img-fluid" alt="image-description"></a>
                                    <div class="media-body ml-4d875">
                                        <div class="text-primary text-uppercase font-size-1 mb-1 text-truncate"><a href="#">Hard Cover</a></div>
                                        <h2 class="woocommerce-loop-product__title h6 text-lh-md mb-1 text-height-2 crop-text-2">
                                            <a href="#" class="text-dark">The Ride of a Lifetime: Lessons Learned  from 15 Years as CEO</a>
                                        </h2>
                                        <div class="font-size-2 mb-1 text-truncate"><a href="#" class="text-gray-700">Robert Iger</a></div>
                                        <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                            <span class="woocommerce-Price-amount amount">1 x <span class="woocommerce-Price-currencySymbol">$</span>125.30</span>
                                        </div>
                                    </div>
                                    <div class="mt-3 ml-3">
                                        <a href="#" class="text-dark"><i class="fas fa-times"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="px-4 py-5 px-md-6 border-bottom">
                                <div class="media">
                                    <a href="#" class="d-block"><img src="https://placehold.it/100x153" class="img-fluid" alt="image-description"></a>
                                    <div class="media-body ml-4d875">
                                        <div class="text-primary text-uppercase font-size-1 mb-1 text-truncate"><a href="#">Hard Cover</a></div>
                                        <h2 class="woocommerce-loop-product__title h6 text-lh-md mb-1 text-height-2 crop-text-2">
                                            <a href="#" class="text-dark">The Rural Diaries: Love, Livestock, and  Big Life Lessons Down</a>
                                        </h2>
                                        <div class="font-size-2 mb-1 text-truncate"><a href="#" class="text-gray-700">Hillary Burton</a></div>
                                        <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                            <span class="woocommerce-Price-amount amount">2 x <span class="woocommerce-Price-currencySymbol">$</span>200</span>
                                        </div>
                                    </div>
                                    <div class="mt-3 ml-3">
                                        <a href="#" class="text-dark"><i class="fas fa-times"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="px-4 py-5 px-md-6 border-bottom">
                                <div class="media">
                                    <a href="#" class="d-block"><img src="https://placehold.it/100x153" class="img-fluid" alt="image-description"></a>
                                    <div class="media-body ml-4d875">
                                        <div class="text-primary text-uppercase font-size-1 mb-1 text-truncate"><a href="#">Paperback</a></div>
                                        <h2 class="woocommerce-loop-product__title h6 text-lh-md mb-1 text-height-2 crop-text-2">
                                            <a href="#" class="text-dark">Russians Among Us: Sleeper Cells,  Ghost Stories, and the Hunt.</a>
                                        </h2>
                                        <div class="font-size-2 mb-1 text-truncate"><a href="#" class="text-gray-700">Gordon Corera</a></div>
                                        <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                            <span class="woocommerce-Price-amount amount">6 x <span class="woocommerce-Price-currencySymbol">$</span>100</span>
                                        </div>
                                    </div>
                                    <div class="mt-3 ml-3">
                                        <a href="#" class="text-dark"><i class="fas fa-times"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="px-4 py-5 px-md-6 d-flex justify-content-between align-items-center font-size-3">
                                <h4 class="mb-0 font-size-3">Subtotal:</h4>
                                <div class="font-weight-medium">$750.00</div>
                            </div>

                            <div class="px-4 mb-8 px-md-6">
                                <button type="submit" class="btn btn-block py-4 rounded-0 btn-outline-dark mb-4">View Cart</button>
                                <button type="submit" class="btn btn-block py-4 rounded-0 btn-dark">Checkout</button>
                            </div>
                        </div>
                    </div>
                    <!-- End Content -->
                </div>
            </div>
        </div>
    </aside>
    <!-- End Cart Sidebar Navigation -->

    <!-- Categories Sidebar Navigation -->
    <aside id="sidebarContent2" class="u-sidebar u-sidebar__md u-sidebar--left" aria-labelledby="sidebarNavToggler2">
        <div class="u-sidebar__scroller js-scrollbar">
            <div class="u-sidebar__container">
                <div class="u-header-sidebar__footer-offset">
                    <!-- Content -->
                    <div class="u-sidebar__body">
                        <div class="u-sidebar__content u-header-sidebar__content">
                            <!-- Title -->
                            <header class="border-bottom px-4 px-md-5 py-4 d-flex align-items-center justify-content-between">
                                <h2 class="font-size-3 mb-0">SHOP BY CATEGORY</h2>

                                <!-- Toggle Button -->
                                <div class="d-flex align-items-center">
                                    <button type="button" class="close ml-auto"
                                        aria-controls="sidebarContent2"
                                        aria-haspopup="true"
                                        aria-expanded="false"
                                        data-unfold-event="click"
                                        data-unfold-hide-on-scroll="false"
                                        data-unfold-target="#sidebarContent2"
                                        data-unfold-type="css-animation"
                                        data-unfold-animation-in="fadeInLeft"
                                        data-unfold-animation-out="fadeOutLeft"
                                        data-unfold-duration="500">
                                        <span aria-hidden="true"><i class="fas fa-times ml-2"></i></span>
                                    </button>
                                </div>
                                <!-- End Toggle Button -->
                            </header>
                            <!-- End Title -->

                            <div class="border-bottom">
                                <div class="zeynep pt-4">
                                    <ul>
                                        <li class="has-submenu">
                                            <a href="#" data-submenu="off-pages">Pages</a>

                                            <div id="off-pages" class="submenu">
                                                <div class="submenu-header" data-submenu-close="off-pages">
                                                    <a href="#">Pages</a>
                                                </div>

                                                <ul>
                                                    <li class="has-submenu">
                                                        <a href="#" data-submenu="off-home">Home Pages</a>

                                                        <div id="off-home" class="submenu js-scrollbar">
                                                            <div class="submenu-header" data-submenu-close="off-home">
                                                                <a href="#">Home Pages</a>
                                                            </div>

                                                            <ul class="">
                                                                <li>
                                                                    <a href="../home/index.html">Home v1</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v2.html">Home v2</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v3.html">Home v2</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v3.html">Home v3</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v4.html">Home v4</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v5.html">Home v5</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v6.html">Home v6</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v7.html">Home v7</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v8.html">Home v8</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v9.html">Home v9</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v10.html">Home v10</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v11.html">Home v11</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v12.html">Home v12</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../home/home-v13.html">Home v13</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>

                                                    <li class="has-submenu">
                                                        <a href="#" data-submenu="off-single-product">Single Product</a>

                                                        <div id="off-single-product" class="submenu js-scrollbar">
                                                            <div class="submenu-header" data-submenu-close="off-single-product">
                                                                <a href="#">Single Product</a>
                                                            </div>

                                                            <ul class="">
                                                                <li>
                                                                    <a href="../shop/single-product-v1.html">Single Product v1</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/single-product-v2.html">Single Product v2</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/single-product-v3.html">Single Product v3</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/single-product-v4.html">Single Product v4</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/single-product-v5.html">Single Product v5</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/single-product-v6.html">Single Product v6</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/single-product-v7.html">Single Product v7</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>

                                                    <li class="has-submenu">
                                                        <a href="#" data-submenu="off-shop-pages">Shop Pages</a>

                                                        <div id="off-shop-pages" class="submenu js-scrollbar">
                                                            <div class="submenu-header" data-submenu-close="off-shop-pages">
                                                                <a href="#">Shop Pages</a>
                                                            </div>

                                                            <ul class="">
                                                                <li>
                                                                    <a href="../shop/cart.html">Shop cart</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/checkout.html">Shop checkout</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/my-account.html">Shop My Account</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/order-received.html">Shop Order Received</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/order-tracking.html">Shop Order Tracking</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/store-location.html">Shop Store Location</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>

                                                    <li class="has-submenu">
                                                        <a href="#" data-submenu="off-shop-list">Shop List</a>

                                                        <div id="off-shop-list" class="submenu js-scrollbar">
                                                            <div class="submenu-header" data-submenu-close="off-shop-list">
                                                                <a href="#">Shop List</a>
                                                            </div>

                                                            <ul class="">
                                                                <li>
                                                                    <a href="../shop/v1.html">Shop List v1</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/v2.html">Shop List v2</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/v3.html">Shop List v3</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/v4.html">Shop List v4</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/v5.html">Shop List v5</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/v6.html">Shop List v6</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/v7.html">Shop List v7</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/v8.html">Shop List v8</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../shop/v9.html">Shop List v9</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>

                                                    <li class="has-submenu">
                                                        <a href="#" data-submenu="off-blog">Blog</a>

                                                        <div id="off-blog" class="submenu js-scrollbar">
                                                            <div class="submenu-header" data-submenu-close="off-blog">
                                                                <a href="#">Blog</a>
                                                            </div>

                                                            <ul class="">
                                                                <li>
                                                                    <a href="../blog/blog-v1.html">Blog v1</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../blog/blog-v2.html">Blog v2</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../blog/blog-v3.html">Blog v3</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../blog/blog-single.html">Blog Single</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>

                                                    <li class="has-submenu">
                                                        <a href="#" data-submenu="off-others">Others</a>

                                                        <div id="off-others" class="submenu js-scrollbar">
                                                            <div class="submenu-header" data-submenu-close="off-others">
                                                                <a href="#">Others</a>
                                                            </div>

                                                            <ul class="">
                                                                <li>
                                                                    <a href="../others/404.html">404</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../others/about.html">About Us</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../others/authors-list.html">Authors List</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../others/authors-single.html">Authors Single</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../others/coming-soon.html">Coming Soon</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../others/contact.html">Contact Us</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../others/faq.html">FAQ</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../others/pricing-table.html">Pricing Table</a>
                                                                </li>

                                                                <li>
                                                                    <a href="../others/terms-conditions.html">Terms Conditions</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>

                                                    <li class="px-5">
                                                        <a href="../../documentation/index.html" class="btn btn-primary mb-3 mb-md-0 mb-xl-3 mt-4 font-size-2 btn-block">Documentation</a>
                                                    </li>

                                                    <li class="px-5 mb-4">
                                                        <a href="../../starter/index.html" class="btn btn-secondary font-size-2 btn-block mb-2">Starter</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#" data-submenu="art-photo">Arts & Photography</a>

                                            <div id="art-photo" class="submenu">
                                                <div class="submenu-header" data-submenu-close="art-photo">
                                                    <a href="#">Arts & Photography</a>
                                                </div>

                                                <ul>
                                                    <li>
                                                        <a href="#">Architecture</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Business of Art</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Collections, Catalogs & Exhibitions</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Decorative Arts & Design</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Drawing</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Fashion</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Graphic Design</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#" data-submenu="biography">Biographies & Memoirs</a>

                                            <div id="biography" class="submenu">
                                                <div class="submenu-header" data-submenu-close="biography">
                                                    <a href="#">Biographies & Memoirs</a>
                                                </div>

                                                <ul>
                                                    <li>
                                                        <a href="#">Istanbul</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Mardin</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Amed</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#" data-submenu="children">Children's Books</a>

                                            <div id="children" class="submenu">
                                                <div class="submenu-header" data-submenu-close="children">
                                                    <a href="#">Children's Books</a>
                                                </div>

                                                <ul>
                                                    <li class="has-submenu">
                                                        <a href="#" data-submenu="electronics">Electronics</a>

                                                        <div id="electronics" class="submenu js-scrollbar">
                                                            <div class="submenu-header" data-submenu-close="electronics">
                                                                <a href="#">Electronics</a>
                                                            </div>

                                                            <ul class="">
                                                                <li>
                                                                    <a href="#">Camera & Photo</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Home Audio</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Tv & Video</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Computers & Accessories</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Car & Vehicle Electronics</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Portable Audio & Video</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Headphones</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Accessories & Supplies</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Video Projectors</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Office Electronics</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Wearable Technology</a>
                                                                </li>

                                                                <li>
                                                                    <a href="#">Service Plans</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <a href="#">Books</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Video Games</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Computers</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#" data-submenu="computers">Computers & Technology</a>

                                            <div id="computers" class="submenu">
                                                <div class="submenu-header" data-submenu-close="computers">
                                                    <a href="#">Computers & Technology</a>
                                                </div>

                                                <ul>
                                                    <li>
                                                        <a href="#">Istanbul</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Mardin</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Amed</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#" data-submenu="cookbook">Cookbooks, Food & Wine</a>

                                            <div id="cookbook" class="submenu">
                                                <div class="submenu-header" data-submenu-close="cookbook">
                                                    <a href="#">Cookbooks, Food & Wine</a>
                                                </div>

                                                <ul>
                                                    <li>
                                                        <a href="#">Istanbul</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Mardin</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Amed</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#" data-submenu="sciencemath">Education & Teaching</a>

                                            <div id="sciencemath" class="submenu">
                                                <div class="submenu-header" data-submenu-close="sciencemath">
                                                    <a href="#">Education & Teaching</a>
                                                </div>

                                                <ul>
                                                    <li>
                                                        <a href="#">Istanbul</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Mardin</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Amed</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#" data-submenu="health">Health, Fitness & Dieting</a>

                                            <div id="health" class="submenu">
                                                <div class="submenu-header" data-submenu-close="health">
                                                    <a href="#">Health, Fitness & Dieting</a>
                                                </div>

                                                <ul>
                                                    <li>
                                                        <a href="#">Istanbul</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Mardin</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Amed</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#" data-submenu="history">History</a>

                                            <div id="history" class="submenu">
                                                <div class="submenu-header" data-submenu-close="history">
                                                    <a href="#">History</a>
                                                </div>

                                                <ul>
                                                    <li>
                                                        <a href="#">Istanbul</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Mardin</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Amed</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#" data-submenu="romance">Romance</a>

                                            <div id="romance" class="submenu">
                                                <div class="submenu-header" data-submenu-close="romance">
                                                    <a href="#">Romance</a>
                                                </div>

                                                <ul>
                                                    <li>
                                                        <a href="#">Istanbul</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Mardin</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Amed</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#" data-submenu="sports">Sports & Outdoors</a>

                                            <div id="sports" class="submenu">
                                                <div class="submenu-header" data-submenu-close="sports">
                                                    <a href="#">Sports & Outdoors</a>
                                                </div>

                                                <ul>
                                                    <li>
                                                        <a href="#">Istanbul</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Mardin</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Amed</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#" data-submenu="travel">Travel</a>

                                            <div id="travel" class="submenu">
                                                <div class="submenu-header" data-submenu-close="travel">
                                                    <a href="#">Travel</a>
                                                </div>

                                                <ul>
                                                    <li>
                                                        <a href="#">Istanbul</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Mardin</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">Amed</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="px-4 px-md-5 pt-5 pb-4 border-bottom">
                                <h2 class="font-size-3 mb-3">HELP & SETTINGS </h2>
                                <ul class="list-group list-group-flush list-group-borderless">
                                    <li class="list-group-item px-0 py-2 border-0"><a href="#" class="h-primary">Your Account</a></li>
                                    <li class="list-group-item px-0 py-2 border-0"><a href="#" class="h-primary">Help</a></li>
                                    <li class="list-group-item px-0 py-2 border-0"><a href="#" class="h-primary">Sign In</a></li>
                                </ul>
                            </div>

                            <div class="px-4 px-md-5 py-5">
                                <select class="custom-select mb-4 rounded-0 pl-4 height-4 shadow-none text-dark">
                                    <option selected>English (United States)</option>
                                    <option value="1">English (UK)</option>
                                    <option value="2">Arabic (Saudi Arabia)</option>
                                    <option value="3">Deutsch</option>
                                </select>
                                <select class="custom-select mb-4 rounded-0 pl-4 height-4 shadow-none text-dark">
                                    <option selected>$ USD</option>
                                    <option value="1">د.إ AED</option>
                                    <option value="2">¥ CNY</option>
                                    <option value="3">€ EUR</option>
                                </select>
                                <!-- Social Networks -->
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item">
                                        <a class="h-primary pr-2 font-size-2" href="#">
                                            <span class="fab fa-facebook-f btn-icon__inner"></span>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="h-primary pr-2 font-size-2" href="#">
                                            <span class="fab fa-google btn-icon__inner"></span>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="h-primary pr-2 font-size-2" href="#">
                                            <span class="fab fa-twitter btn-icon__inner"></span>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="h-primary pr-2 font-size-2" href="#">
                                            <span class="fab fa-github btn-icon__inner"></span>
                                        </a>
                                    </li>
                                </ul>
                                <!-- End Social Networks -->
                            </div>
                        </div>
                    </div>
                    <!-- End Content -->
                </div>
            </div>
        </div>
    </aside>
    <!-- End Categories Sidebar Navigation -->

    <!--===== END HEADER CONTENT =====-->

    <!-- ====== MAIN CONTENT ====== -->
    <div class="page-header border-bottom">
        <div class="container">
            <div class="d-md-flex justify-content-between align-items-center py-4">
                <h1 class="page-title font-size-3 font-weight-medium m-0 text-lh-lg">Shop Single</h1>
                <nav class="woocommerce-breadcrumb font-size-2">
                    <a href="../home/index.html" class="h-primary">Home</a>
                    <span class="breadcrumb-separator mx-1"><i class="fas fa-angle-right"></i></span>
                    <a href="../shop/v4.html" class="h-primary">Shop</a>
                    <span class="breadcrumb-separator mx-1"><i class="fas fa-angle-right"></i></span>Shop Single
                </nav>
            </div>
        </div>
    </div>
    <div class="site-content" id="content">
        <div class="container">
            <div class="row  space-top-2">
                <div id="primary" class="content-area">
                    <main id="main" class="site-main ">
                        <div class="product">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-5 woocommerce-product-gallery woocommerce-product-gallery--with-images images">
                                        <figure class="woocommerce-product-gallery__wrapper mb-0">
                                            <div class="js-slick-carousel u-slick"
                                            data-pagi-classes="text-center u-slick__pagination my-4">
                                                <div class="js-slide">
                                                    <img src="${books.detail.img}" alt="Image Description" class="mx-auto img-fluid">
                                                </div>
                                            </div>
                                        </figure>
                                    </div>
                                    <div class="col-lg-7 pl-lg-0 summary entry-summary">
                                        <div class="px-lg-4 px-xl-6">
                                            <h1 class="product_title entry-title font-size-7 mb-3">${books.detail.title}</h1>
                                            <div class="font-size-2 mb-4">
                                            	<span class="ml-3 font-weight-medium">지은이</span>
                                                <span class="ml-2 text-gray-600">${books.detail.writer}</span>
                                                <br>
                                                <span class="text-yellow-darker">
                                                    <span class="fas fa-star"></span>
                                                    <span class="fas fa-star"></span>
                                                    <span class="fas fa-star"></span>
                                                    <span class="fas fa-star"></span>
                                                    <span class="fas fa-star"></span>
                                                </span>
                                                <span class="ml-3">(3,714)</span>
                                                &nbsp;
                                               <c:set var="loop_flag" value="false" />  
                                                  <c:choose>
                                                  <c:when test="${not empty member}">
                                                  <c:choose>
                                                  <c:when test="${not empty member.bookFavorite}">
                                                     <c:forEach items="${member.bookFavorite}" var="list" varStatus="status">    
                                                     <c:if test="${not loop_flag }">      
                                                   <c:choose>
                                                           <c:when test="${list.libraryBook.book_isbn == books.detail.isbn}">
                                                              <a href="javascript:addFav('${books.detail.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${books.detail.isbn}" id="${books.detail.isbn}" style="display: inline-flex;">                                            
                                                                  <svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                        </svg>
                                                              </a>
                                                              <c:set var="loop_flag" value="true" />
                                                           </c:when>                                                  
                                                           <c:otherwise>
                                                              <c:if test="${status.last}">
                                                                 <a href="javascript:addFav('${books.detail.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${books.detail.isbn}" id="${books.detail.isbn}" style="display: inline-flex;">                                            
                                                                        <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                                <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                              </svg>
                                                                    </a>                                                                                                                   
                                                              </c:if>
                                                           </c:otherwise>
                                                        </c:choose>
                                                     </c:if>  
                                                    </c:forEach>
                                                  </c:when>
                                                  <c:otherwise>
                                                     <a href="javascript:addFav('${books.detail.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${books.detail.isbn}" id="${books.detail.isbn}" style="display: inline-flex;">                                            
                                                         <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                 <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                               </svg>
                                                     </a>
                                                  </c:otherwise>
                                                  </c:choose>                                                                 
                                              </c:when>
                                             <c:otherwise>
                                                   <a href="javascript:login()" class="h-p-bg btn btn-outline-primary border-0 ${books.detail.isbn}" id="${books.detail.isbn}" style="display: inline-flex;">
                                                                <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                       <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                     </svg>
                                                            </a>   
                                             </c:otherwise>
                                           </c:choose>      
                                                
                                            </div>

                                            <div class="woocommerce-product-details__short-description font-size-2 mb-4">
                                                <p class="">${books.detail.description}</p>
                                            </div>

                                            <p class="price font-size-22 font-weight-medium mb-4">
                                                <span class="woocommerce-Price-amount amount">
                                                    <span class="woocommerce-Price-currencySymbol"></span>카테고리
                                                </span> <div></div>
                                                <span class="woocommerce-Price-amount amount">
                                                    <span class="woocommerce-Price-currencySymbol"></span>${books.detail.catgo}
                                                </span>
                                            

                                            <div class="mb-4">
                                                <label class="form-label font-size-2 font-weight-medium mb-3">상태 :&nbsp;</label>
                                                <c:choose>                                                
									   			    <c:when test="${Lbook.book_isbn == books.detail.isbn}">									   			    	
									   			    	<c:choose>                                                
											   			    <c:when test="${Lbook.book_count - Rbook_count != 0}">
											   			    	<label style="color:blue;"> 대출가능 (재고 : ${Lbook.book_count - Rbook_count}권)</label>						                	
											                </c:when>
											                <c:otherwise>
											                    <label style="color:red;"> 대출불가능 (재고 : ${Lbook.book_count - Rbook_count}권)</label>
											                </c:otherwise>
														</c:choose>						                	
									                </c:when>
									                <c:otherwise>
									                    <label style="color:red;"> 대출불가능 (도서관에 없는 도서입니다.)</label>
									                </c:otherwise>
												</c:choose>	
												<br>
												<c:choose>                                                
									   			    <c:when test="${Lbook.book_isbn == books.detail.isbn}">									   			    										   			    	                                                			
									   			    	<label>도서위치 : ${book_loc}</label>						                												                				                	
									                </c:when>									                
												</c:choose>             
                                            </div>
                                            
                                            <c:choose>
                                            	<c:when test="${Lbook.book_isbn == books.detail.isbn}"> <!-- 대출예약 여부 =  검색isbn과 db에있는 책 isbn과 비교 -->
                                            	<form action="/rental.ok" id="rental" name="rental" class="cart d-md-flex align-items-center" method="post">		                                            
		                                            <c:choose>
											   			    <c:when test="${Lbook.book_count - Rbook_count != 0}">
											   			    	<label for="date">반납예정일&nbsp;
																  <input type="date" id="ren_return" name="ren_return" onkeydown="return false">
																</label>																		                
											                </c:when>									       
														</c:choose>			                                                																																					   			    	
									   			    	<c:choose>
											   			    <c:when test="${Lbook.book_count - Rbook_count != 0}"> <!-- 대출예약 여부 =  db에 있는 재고량 - isbn의 값으로 대출예약테이블 count -->
											   			    	<button type="button" id="btn_rental" name="btn_rental" class="btn btn-blue border-0 rounded-0 p-3 btn-block ml-md-4 single_add_to_cart_button button alt">대출예약</button>											   			    							                	
											                </c:when>
											                <c:otherwise>
											                    <button type="button" id="btn_no_rental" name="btn_no_rental" class="btn btn-red border-0 rounded-0 p-3 btn-block ml-md-4 single_add_to_cart_button button alt">대출예약불가</button>
											                </c:otherwise>
														</c:choose>					                										                
														<c:choose>
											   			    <c:when test="${not empty member.mem_num}"> 
											   			    	<input type="hidden" id="mem_num" name="mem_num" value="${member.mem_num}"> <!-- 로그인 멤버 넘버로 value변경 -->											   			    							                	
											                </c:when>
											                <c:otherwise>
											                    <input type="hidden" id="mem_num" name="mem_num" value="0"> <!-- 로그인 멤버 넘버로 value변경 -->
											                </c:otherwise>
														</c:choose>		                                                
		                                            	<input type="hidden" id="book_num" name="book_num" value="${Lbook.book_num}">		
		                                            </form> 
                                            	</c:when> 
                                            	<c:otherwise>
                                            			<form action="/request.ok" id="request" name="request" class="cart d-md-flex align-items-center" method="post">		                                            		                                                                                            																																					   			    										   			    												   			 
											                <button type="button" id="btn_request" name="btn_request" class="btn btn-green border-0 rounded-0 p-3 btn-block ml-md-4 single_add_to_cart_button button alt">도서신청</button>											               																		                										                
														<c:choose>
											   			    <c:when test="${not empty member.mem_num}"> 
											   			    	<input type="hidden" id="mem_num" name="mem_num" value="${member.mem_num}"> <!-- 로그인 멤버 넘버로 value변경 -->											   			    							                	
											                </c:when>
											                <c:otherwise>
											                    <input type="hidden" id="mem_num" name="mem_num" value="0"> <!-- 로그인 멤버 넘버로 value변경 -->
											                </c:otherwise>
														</c:choose>		                                                
		                                            	<input type="hidden" id="br_title" name="br_title" value="${books.detail.title}">
		                                            	<input type="hidden" id="br_writer" name="br_writer" value="${books.author}">
		                                            	<input type="hidden" id="br_isbn" name="br_isbn" value="${books.isbn}">		
		                                            </form>                                             				
                                            	</c:otherwise>                                           
                                            </c:choose>                                  
                                        </div>
                                        <!-- <div class="px-lg-4 px-xl-7 py-5 d-flex align-items-center">
                                            <ul class="list-unstyled nav">
                                                <li class="mr-6 mb-4 mb-md-0">
                                                    <a href="#" class="h-primary"><i class="flaticon-heart mr-2"></i> Add to Wishlist</a>
                                                </li>                                                
                                            </ul>
                                        </div> -->
                                    </div>
                                </div>
                            </div>

                            <!-- Features Section -->
                            <div class="woocommerce-tabs wc-tabs-wrapper mb-10 row">
                                <!-- Nav Classic -->
                                <ul class="col-lg-4 col-xl-3 pt-9 border-top d-lg-block tabs wc-tabs nav justify-content-lg-center flex-nowrap flex-lg-wrap overflow-auto overflow-lg-visble" id="pills-tab" role="tablist">
                                    <li class="flex-shrink-0 flex-lg-shrink-1 nav-item mb-3">
                                        <a class="py-1 d-inline-block nav-link font-weight-medium active" id="pills-one-example1-tab" data-toggle="pill" href="#pills-one-example1" role="tab" aria-controls="pills-one-example1" aria-selected="true">
                                        	인포그래픽
                                        </a>
                                    </li>
                                    <li class="flex-shrink-0 flex-lg-shrink-1 nav-item mb-3">
                                        <a class="py-1 d-inline-block nav-link font-weight-medium" id="pills-two-example1-tab" data-toggle="pill" href="#pills-two-example1" role="tab" aria-controls="pills-two-example1" aria-selected="false">
                                           	상세정보
                                        </a>
                                    </li>   
                                    <c:if test="${book != 0}">                                   
	                                    <li class="flex-shrink-0 flex-lg-shrink-1 nav-item mb-3">
	                                        <a class="py-1 d-inline-block nav-link font-weight-medium" id="pills-four-example1-tab" data-toggle="pill" href="#pills-four-example1" role="tab" aria-controls="pills-four-example1" aria-selected="false">
												리뷰
	                                        </a>
	                                    </li>
                                    </c:if>
                                </ul>
                                <!-- End Nav Classic -->

                                <!-- Tab Content -->
                                <div class="tab-content col-lg-8 col-xl-9 border-top" id="pills-tabContent">
                                    <div class="woocommerce-Tabs-panel panel entry-content wc-tab tab-pane fade border-left pl-4 pt-4 pl-lg-6 pt-lg-6 pl-xl-9 pt-xl-9 show active" id="pills-one-example1" role="tabpanel" aria-labelledby="pills-one-example1-tab">
                                        <!-- Mockup Block -->
                                        <canvas id="infoChart" height="200"></canvas>
                                        <!-- End Mockup Block -->
                                    </div>
                                    <div class="woocommerce-Tabs-panel panel entry-content wc-tab tab-pane fade border-left pl-4 pt-4 pl-lg-6 pt-lg-6 pl-xl-9 pt-xl-9" id="pills-two-example1" role="tabpanel" aria-labelledby="pills-two-example1-tab">
                                        <!-- Mockup Block -->
                                        <div class="table-responsive mb-4">
                                            <table class="table table-hover table-borderless">
                                                <tbody>
                                                    <tr>
                                                        <th class="px-4 px-xl-5">정보: </th>
                                                        <td class="">쪽수 | ${books.detail.page}p</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="px-4 px-xl-5">사이즈</th>
                                                        <td>${books.detail.sizeWidth} x ${books.detail.sizeHeight} x ${books.detail.sizeDepth}mm | ${books.detail.weight}g</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="px-4 px-xl-5">ISBN: </th>
                                                        <td>${books.detail.isbn}</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="px-4 px-xl-5">출판일: </th>
                                                        <td>${books.detail.pubDate}</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="px-4 px-xl-5">출판사:</th>
                                                        <td>${books.detail.publisher}</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- End Mockup Block -->
                                    </div>
                                    <div class="woocommerce-Tabs-panel panel entry-content wc-tab tab-pane fade border-left pl-4 pt-4 pl-lg-6 pt-lg-6 pl-xl-9 pt-xl-9" id="pills-three-example1" role="tabpanel" aria-labelledby="pills-three-example1-tab">
                                        <!-- Mockup Block -->
                                        <div class="d-flex mb-8 justify-content-center">
                                            <a href="javascript:;" class="product__video js-fancybox d-block p-4 border position-relative max-width-234"
                                                data-src="//www.youtube.com/watch?v=u-0Z0iVBxUY?autoplay=0"
                                                data-speed="700">
                                                <span class="position-absolute-center text-dark font-size-10"><i class="flaticon-multimedia"></i></span>
                                                <div class="hover-area">
                                                    <img src="https://placehold.it/120x180" class="img-fluid d-block mx-auto mb-3" alt="image-description">
                                                    <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-dark">Where The Crawdads Sing Overview</h2>
                                                    <div class="font-size-2 text-gray-700">Solomon</div>
                                                </div>
                                                <span class="text-white bg-dark px-3 py-1 position-absolute bottom-0 right-0">1:45</span>
                                            </a>
                                            <a href="javascript:;" class="product__video js-fancybox d-block p-4 border position-relative max-width-234"
                                                data-src="www.youtube.com/watch?v=F7yO1tYCYxQ?autoplay=0"
                                                data-speed="700">
                                                <span class="position-absolute-center text-dark font-size-10"><i class="flaticon-multimedia"></i></span>
                                                <div class="hover-area">
                                                    <img src="https://placehold.it/120x180" class="img-fluid d-block mx-auto mb-3" alt="image-description">
                                                    <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-dark">Where The Crawdads Sing Overview</h2>
                                                    <div class="font-size-2 text-gray-700">Solomon</div>
                                                </div>
                                                <span class="text-white bg-dark px-3 py-1 position-absolute bottom-0 right-0">2:21</span>
                                            </a>
                                        </div>
                                        <!-- End Mockup Block -->
                                    </div>
                                    <div class="woocommerce-Tabs-panel panel entry-content wc-tab tab-pane fade border-left pl-4 pt-4 pl-lg-6 pt-lg-6 pl-xl-9 pt-xl-9" id="pills-four-example1" role="tabpanel" aria-labelledby="pills-four-example1-tab">
                                        <!-- Mockup Block  리뷰 -->
                                        <div id="cut">
                                        <h4 class="font-size-3">회원 리뷰 </h4>
                                        <div class="mb-8">
                                            <div class="mb-6">
                                                <div class="d-flex  align-items-center mb-4">
                                                    <span class="font-size-15 font-weight-bold">${reviewAvg}</span>
                                                    <div class="ml-3 h6 mb-0">
                                                        <span class="font-weight-normal">${reviewTotal} reviews</span>
                                                        <c:choose>
                                                        	<c:when test="${reviewAvg < 0.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        <c:when test="${reviewAvg >= 0.5 and reviewAvg < 1.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        <c:when test="${reviewAvg >= 1.5 and reviewAvg < 2.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        <c:when test="${reviewAvg >= 2.5 and reviewAvg < 3.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        <c:when test="${reviewAvg >= 3.5 and reviewAvg < 4.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        <c:when test="${reviewAvg >= 4.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        
                                                        </c:choose>
                                                    </div>
                                                </div>

                                                <div class="d-xl-flex">
                                                    <a type="button" href="#reviewcommit" class="d-block btn btn-outline-dark rounded-0 px-5 mb-3 mb-xl-0">리뷰 쓰러가기</a>
                                                    <!-- <a type="button" href="#reviewcommit" class="d-block btn btn-dark ml-xl-3 rounded-0 px-5">리뷰 쓰러가기</a> -->
                                                </div>
                                            </div>
                                            <div class="">
                                                <!-- Ratings -->
                                                <ul class="list-unstyled">
                                                    <li class="py-2">
                                                        <a class="row align-items-center mx-gutters-2 font-size-2" href="javascript:;">
                                                            <div class="col-auto">
                                                                <span class="text-dark">5 stars</span>
                                                            </div>
                                                            <div class="col px-0">
                                                                <div class="progress bg-white-100" style="height: 7px;">
                                                                    <div class="progress-bar bg-yellow-darker" role="progressbar" style="width: ${five/reviewTotal*100}%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2">
                                                                <span class="text-secondary">${five}</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="py-2">
                                                        <a class="row align-items-center mx-gutters-2 font-size-2" href="javascript:;">
                                                            <div class="col-auto">
                                                                <span class="text-dark">4 stars</span>
                                                            </div>
                                                            <div class="col px-0">
                                                                <div class="progress bg-white-100" style="height: 7px;">
                                                                    <div class="progress-bar bg-yellow-darker" role="progressbar" style="width: ${four/reviewTotal*100}%;" aria-valuenow="53" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2">
                                                                <span class="text-secondary">${four}</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="py-2">
                                                        <a class="row align-items-center mx-gutters-2 font-size-2" href="javascript:;">
                                                            <div class="col-auto">
                                                                <span class="text-dark">3 stars</span>
                                                            </div>
                                                            <div class="col px-0">
                                                                <div class="progress bg-white-100" style="height: 7px;">
                                                                    <div class="progress-bar bg-yellow-darker" role="progressbar" style="width: ${three/reviewTotal*100}%;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2">
                                                                <span class="text-secondary">${three}</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="py-2">
                                                        <a class="row align-items-center mx-gutters-2 font-size-2" href="javascript:;">
                                                            <div class="col-auto">
                                                                <span class="text-dark">2 stars</span>
                                                            </div>
                                                            <div class="col px-0">
                                                                <div class="progress bg-white-100" style="height: 7px;">
                                                                    <div class="progress-bar bg-yellow-darker" role="progressbar" style="width: ${two/reviewTotal*100}%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2">
                                                                <span class="text-secondary">${two}</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="py-2">
                                                        <a class="row align-items-center mx-gutters-2 font-size-2" href="javascript:;">
                                                            <div class="col-auto">
                                                                <span class="text-dark">1 stars</span>
                                                            </div>
                                                            <div class="col px-0">
                                                                <div class="progress bg-white-100" style="height: 7px;">
                                                                    <div class="progress-bar bg-yellow-darker" role="progressbar" style="width: ${one/reviewTotal*100}%;" aria-valuenow="1" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2">
                                                                <span class="text-secondary">${one}</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- End Ratings -->
                                            </div>
                                        </div>

                                        <h4 class="font-size-3 mb-8">1-5 of ${reviewTotal} reviews </h4>
										<c:if test="${reviewTotal != 0}">
                                        <ul class="list-unstyled mb-8" id="ulul">
                                        	<!-- 리뷰 리스트 -->
                
                                        	<c:forEach items="${books.list}" var="list">
	                                            <li class="mb-4 pb-5 border-bottom">
	                                                <div class="d-flex align-items-center mb-3">
	                                                    <h6 class="mb-0">${list.brs_num} ${list.member.mem_id}</h6>
	                                                   	<%-- 평점: ${list.brs_rating} --%>
	                                                   	<c:choose>
	                                                   		<c:when test="${list.brs_rating == 1}">
	                                                   			<div class="text-yellow-darker ml-3">
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                    </div>
	                                                   		</c:when>
	                                                   		<c:when test="${list.brs_rating == 2}">
	                                                   			<div class="text-yellow-darker ml-3">
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                    </div>
	                                                   		</c:when>
	                                                   		<c:when test="${list.brs_rating == 3}">
	                                                   			<div class="text-yellow-darker ml-3">
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                    </div>
	                                                   		</c:when>
	                                                   		<c:when test="${list.brs_rating == 4}">
	                                                   			<div class="text-yellow-darker ml-3">
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                    </div>
	                                                   		</c:when>
	                                                   		<c:when test="${list.brs_rating == 5}">
	                                                   			<div class="text-yellow-darker ml-3">
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                    </div>
	                                                   		</c:when>
	                                            		</c:choose>
	                                                </div>
	                                                <p class="mb-4 text-lh-md">${list.brs_content}</p>
	                                                <div class="text-gray-600 mb-4"><fmt:formatDate pattern="yyyy-MM-dd kk:mm:ss" value="${list.brs_cdate}"/></div>
	                                                <ul class="nav">
	                                                    <li class="mr-7">
	                                                        <a onclick="update_like(${list.brs_num}, ${books.member.mem_num})" class="text-gray-600 d-flex align-items-center" style="cursor:pointer;">
	                                                            <i id="like" class="font-size-5 flaticon-like-1"></i>
	                                                            <span id="likeCount" class="ml-2">${list.brs_like}</span>
	                                                        </a>
	                                                    </li>
	                                                    <li class="mr-7">
	                                                        <a onclick="update_hate(${list.brs_num}, ${books.member.mem_num})" class="text-gray-600 d-flex align-items-center" style="cursor:pointer;">
	                                                            <i id="hate" class="font-size-5 flaticon-dislike"></i>
	                                                            <span id="hateCount" class="ml-2">${list.brs_hate}</span>
	                                                        </a>
	                                                    </li>
	                                                    <c:if test="${list.member.mem_id == books.member.mem_id}">
	                                                    <li class="mr-7">
	                                                        <a onclick="delete_review(${list.brs_num})" class="text-gray-600 d-flex align-items-center" style="cursor:pointer">
	                                                            <span class="material-icons" style="font-size: 30px; color:green">delete_forever</span>
	                                                        </a>
	                                                    </li>
														</c:if>
	                                                </ul>
	                                            </li>
                                            </c:forEach>
                                           
                                        </ul>
                                         </c:if>
                                        
                                        <c:if test="${reviewAvg != 0.0}">
                                        <div id="plusPage">
                                        	<div style="text-align:center;"><a onclick="list_review_plus(${book}, ${plusPage})" style="cursor:pointer" ><i class="fa-sharp fa-solid fa-plus"></i>더 보기</a></div>
										</div>
										</c:if>
										</div>
										
                                        <h4 id="reviewcommit" class="font-size-3 mb-4">리뷰 작성</h4>
                                        <div class="d-flex align-items-center mb-6" >
                                            <h6 class="mb-0">별점 표기</h6>
                                            <div class="text-yellow-darker ml-3 font-size-4">
                                                <small id="star1" class="far fa-star" style="cursor:pointer;"></small>
                                                <small id="star2" class="far fa-star" style="cursor:pointer;"></small>
                                                <small id="star3" class="far fa-star" style="cursor:pointer;"></small>
                                                <small id="star4" class="far fa-star" style="cursor:pointer;"></small>
                                                <small id="star5" class="far fa-star" style="cursor:pointer;"></small>
                                                <input id="bn" type="hidden" value="${book}" name="book_num"/>
                                                <input id="mn" type="hidden" value="${member.mem_num}" name="mem_num"/>
                                                <input id="br" type="hidden" value="" name="brs_rating"/>
                                            </div>
                                        </div>
                                        <div class="js-form-message form-group mb-4">
                                            <label for="descriptionTextarea" class="form-label text-dark h6 mb-3">리뷰를 작성해 주세요.</label>
                                            <textarea class="form-control rounded-0 p-4" rows="7" name="brs_content" id="descriptionTextarea" placeholder="리뷰 내용 입력" required data-msg="Please enter your message." data-error-class="u-has-error" data-success-class="u-has-success"></textarea>
                                        </div>
                                        <!-- <div class="form-group mb-5">
                                            <label for="inputCompanyName" class="form-label text-dark h6 mb-3">Add a title</label>
                                            <input type="text" class="form-control rounded-0 px-4" name="companyName" id="inputCompanyName" placeholder="3000 characters remaining" aria-label="3000 characters remaining">
                                        </div> -->
                                        <div class="d-flex">
                                            <button id="reviewBtn" type="button" class="btn btn-dark btn-wide rounded-0 transition-3d-hover">작성 완료</button>
                                        </div>
                                        <!-- End Mockup Block -->
                                    </div>
                                </div>
                                <!-- End Tab Content -->
                            </div>
                            <!-- End Features Section -->

                        </div>
                    </main>
                </div>
                <div id="secondary" class="sidebar widget-area order-1" role="complementary">
                    <div id="widgetAccordion">
                        <div class="widget p-4d875 border mb-5">
                        <c:forEach items="${books.catgo.catgoBook}" var="catgo">
                            <div class="mb-5">
                                <div style="text-align:center;">
                                    <a class="d-block" href="/detail/book?isbn=${catgo.isbn}">
                                        <img class="img-fluid" src="${catgo.img}" alt="Image-Description">
                                    </a>                                    
                                </div>
                                <div class="media-body ml-3 pl-1">
                                        <h6 class="font-size-2 text-lh-md font-weight-normal" style="text-align:center;">
                                            <a href="/detail/book?isbn=${catgo.isbn}">${catgo.title}</a>
                                        </h6>
                                        <span class="font-weight-medium" style="text-align:center;">${catgo.writer}</span>
                                    </div>
                            </div>
                                 </c:forEach>
                        </div>                        
                    </div>
                </div>
            </div>
            <section class="space-bottom-3">
                <div class="container">
                    <header class="mb-5 d-md-flex justify-content-between align-items-center">
                        <h2 class="font-size-7 mb-3 mb-md-0">${books.author} 작가의 다른 작품</h2>
                    </header>

                     <div class="js-slick-carousel products no-gutters border-top border-left border-right"
                            data-arrows-classes="u-slick__arrow u-slick__arrow-centered--y"
                            data-arrow-left-classes="fas fa-chevron-left u-slick__arrow-inner u-slick__arrow-inner--left ml-lg-n10"
                            data-arrow-right-classes="fas fa-chevron-right u-slick__arrow-inner u-slick__arrow-inner--right mr-lg-n10"
                            data-slides-show="5"
                            data-responsive='[{
                               "breakpoint": 1500,
                               "settings": {
                                 "slidesToShow": 4
                               }
                            },{
                               "breakpoint": 1199,
                               "settings": {
                                 "slidesToShow": 3
                               }
                            }, {
                               "breakpoint": 992,
                               "settings": {
                                 "slidesToShow": 2
                               }
                            }, {
                               "breakpoint": 554,
                               "settings": {
                                 "slidesToShow": 2
                               }
                            }]'>
                            <c:forEach items="${books.writer.writerBook}" var="writer">
                            <div class="product">
                                <div class="product__inner overflow-hidden p-3 p-md-4d875">
                                    <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
                                        <div class="woocommerce-loop-product__thumbnail">
                                            <a href="/detail/book?isbn=${writer.isbn}" class="d-block"><img src="${writer.img}" class="img-fluid d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid" alt="image-description"></a>
                                        </div>
                                        <div class="woocommerce-loop-product__body product__body pt-3 bg-white">
                                            <div class="text-uppercase font-size-1 mb-1 text-truncate"><a href="../shop/single-product-v7.html"></a></div>
                                            <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-height-2 crop-text-2 h-dark"><a href="/detail/book?isbn=${writer.isbn}">${writer.title}</a></h2>
                                            <div class="font-size-2  mb-1 text-truncate"><a href="../others/authors-single.html" class="text-gray-700">${writer.writer}</a></div>
                                            <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span></span>
                                            </div>
                                        </div>
                                        <div class="product__hover d-flex align-items-center">
                                            <a href="../shop/single-product-v7.html" class="text-uppercase text-dark h-dark font-weight-medium mr-auto">
                                                <span class="product__add-to-cart">ADD TO CART</span>
                                                <span class="product__add-to-cart-icon font-size-4"><i class="flaticon-icon-126515"></i></span>
                                            </a>
                                            <a href="../shop/single-product-v7.html" class="mr-1 h-p-bg btn btn-outline-primary border-0">
                                                <i class="flaticon-switch"></i>
                                            </a>
                                            <a href="../shop/single-product-v7.html" class="h-p-bg btn btn-outline-primary border-0">
                                                <i class="flaticon-heart"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>   
                            </c:forEach>                       
                    </div>
                </div>
            </section>
        </div>
    </div>
    <!-- ====== END MAIN CONTENT ====== -->

    <!-- ========== FOOTER ========== -->
    <footer>
        <div class="border-top space-top-3">
            <div class="border-bottom pb-5 space-bottom-lg-3">
                <div class="container">
                    <!-- Newsletter -->
                    <div class="space-bottom-2 space-bottom-md-3">
                        <div class="text-center mb-5">
                            <h5 class="font-size-7 font-weight-medium">Join Our Newsletter</h5>
                            <p class="text-gray-700">Signup to be the first to hear about exclusive deals, special offers and upcoming collections</p>
                        </div>
                        <!-- Form Group -->
                        <div class="form-row justify-content-center">
                            <div class="col-md-5 mb-3 mb-md-2">
                                <div class="js-form-message">
                                    <div class="input-group">
                                        <input type="text" class="form-control px-5 height-60 border-dark" name="name" id="signupSrName" placeholder="Enter email for weekly newsletter." aria-label="Your name" required="" data-msg="Name must contain only letters." data-error-class="u-has-error" data-success-class="u-has-success">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2 ml-md-2">
                                <button type="submit" class="btn btn-dark rounded-0 btn-wide py-3 font-weight-medium">Subscribe
                                </button>
                            </div>
                        </div>
                        <!-- End Form Group -->
                    </div>
                    <!-- End  Newsletter -->
                    <div class="row">
                        <div class="col-lg-4 mb-6 mb-lg-0">
                            <div class="pb-6">
                                <a href="../home/index.html" class="d-inline-block mb-5">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="170px" height="30px">
                                        <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M166.225,28.691 L165.065,15.398 L160.598,28.691 L158.229,28.691 L153.762,15.398 L152.590,28.691 L148.928,28.691 L150.405,11.052 L155.629,11.052 L159.389,22.124 L163.198,11.052 L168.422,11.052 L169.875,28.691 L166.225,28.691 ZM142.641,28.691 L138.051,20.928 L136.989,20.928 L136.989,28.691 L133.327,28.691 L133.327,11.052 L139.724,11.052 C140.692,11.052 141.546,11.189 142.287,11.461 C143.028,11.734 143.620,12.112 144.063,12.596 C144.507,13.081 144.840,13.636 145.064,14.263 C145.288,14.889 145.400,15.577 145.400,16.326 C145.400,17.506 145.078,18.472 144.436,19.225 C143.793,19.978 142.869,20.484 141.665,20.745 L146.975,28.691 L142.641,28.691 ZM141.896,16.204 C141.896,15.544 141.673,15.028 141.225,14.653 C140.777,14.279 140.086,14.092 139.150,14.092 L136.989,14.092 L136.989,18.303 L139.150,18.303 C140.981,18.303 141.896,17.603 141.896,16.204 ZM125.570,27.831 C124.206,28.567 122.666,28.936 120.949,28.936 C119.224,28.936 117.680,28.567 116.317,27.831 C114.953,27.094 113.881,26.034 113.100,24.651 C112.319,23.267 111.928,21.672 111.928,19.866 C111.928,18.051 112.319,16.454 113.100,15.074 C113.881,13.695 114.953,12.639 116.317,11.907 C117.680,11.174 119.224,10.808 120.949,10.808 C122.674,10.808 124.217,11.174 125.576,11.907 C126.935,12.639 128.005,13.695 128.786,15.074 C129.567,16.454 129.958,18.051 129.958,19.866 C129.958,21.672 129.567,23.267 128.786,24.651 C128.005,26.034 126.933,27.094 125.570,27.831 ZM124.807,15.715 C123.797,14.690 122.512,14.177 120.949,14.177 C119.387,14.177 118.101,14.690 117.092,15.715 C116.083,16.741 115.578,18.124 115.578,19.866 C115.578,21.616 116.083,23.005 117.092,24.034 C118.101,25.064 119.387,25.579 120.949,25.579 C122.512,25.579 123.797,25.064 124.807,24.034 C125.816,23.005 126.320,21.616 126.320,19.866 C126.320,18.124 125.816,16.741 124.807,15.715 ZM66.872,28.691 L61.391,21.196 L60.097,21.196 L60.097,28.691 L56.435,28.691 L56.435,11.052 L60.097,11.052 L60.097,17.986 L61.342,17.986 L66.872,11.052 L71.340,11.052 L64.504,19.487 L71.547,28.691 L66.872,28.691 ZM48.677,27.831 C47.314,28.567 45.774,28.936 44.057,28.936 C42.332,28.936 40.788,28.567 39.425,27.831 C38.061,27.094 36.989,26.034 36.208,24.651 C35.427,23.267 35.036,21.672 35.036,19.866 C35.036,18.051 35.427,16.454 36.208,15.074 C36.989,13.695 38.061,12.639 39.425,11.907 C40.788,11.174 42.332,10.808 44.057,10.808 C45.782,10.808 47.324,11.174 48.684,11.907 C50.043,12.639 51.113,13.695 51.894,15.074 C52.675,16.454 53.066,18.051 53.066,19.866 C53.066,21.672 52.675,23.267 51.894,24.651 C51.113,26.034 50.040,27.094 48.677,27.831 ZM47.915,15.715 C46.905,14.690 45.620,14.177 44.057,14.177 C42.495,14.177 41.209,14.690 40.200,15.715 C39.191,16.741 38.686,18.124 38.686,19.866 C38.686,21.616 39.191,23.005 40.200,24.034 C41.209,25.064 42.495,25.579 44.057,25.579 C45.620,25.579 46.905,25.064 47.915,24.034 C48.924,23.005 49.428,21.616 49.428,19.866 C49.428,18.124 48.924,16.741 47.915,15.715 ZM28.487,27.831 C27.124,28.567 25.584,28.936 23.867,28.936 C22.141,28.936 20.597,28.567 19.234,27.831 C17.871,27.094 16.799,26.034 16.018,24.651 C15.236,23.267 14.846,21.672 14.846,19.866 C14.846,18.051 15.236,16.454 16.018,15.074 C16.799,13.695 17.871,12.639 19.234,11.907 C20.597,11.174 22.141,10.808 23.867,10.808 C25.592,10.808 27.134,11.174 28.493,11.907 C29.852,12.639 30.922,13.695 31.704,15.074 C32.485,16.454 32.875,18.051 32.875,19.866 C32.875,21.672 32.485,23.267 31.704,24.651 C30.922,26.034 29.850,27.094 28.487,27.831 ZM27.724,15.715 C26.715,14.690 25.429,14.177 23.867,14.177 C22.304,14.177 21.018,14.690 20.009,15.715 C19.000,16.741 18.496,18.124 18.496,19.866 C18.496,21.616 19.000,23.005 20.009,24.034 C21.018,25.064 22.304,25.579 23.867,25.579 C25.429,25.579 26.715,25.064 27.724,24.034 C28.733,23.005 29.238,21.616 29.238,19.866 C29.238,18.124 28.733,16.741 27.724,15.715 ZM11.672,27.367 C10.736,28.250 9.361,28.691 7.546,28.691 L0.283,28.691 L0.283,11.052 L5.996,11.052 C7.875,11.052 9.314,11.478 10.311,12.328 C11.308,13.178 11.806,14.365 11.806,15.886 C11.806,16.676 11.633,17.374 11.287,17.980 C10.941,18.586 10.431,19.052 9.755,19.377 C11.969,19.988 13.076,21.445 13.076,23.748 C13.076,25.278 12.608,26.484 11.672,27.367 ZM7.827,14.647 C7.420,14.277 6.821,14.092 6.032,14.092 L3.811,14.092 L3.811,18.242 L6.191,18.242 C6.940,18.242 7.501,18.047 7.875,17.656 C8.250,17.266 8.437,16.753 8.437,16.118 C8.437,15.508 8.233,15.018 7.827,14.647 ZM8.876,21.709 C8.445,21.278 7.749,21.062 6.789,21.062 L3.811,21.062 L3.811,25.554 L6.862,25.554 C7.782,25.554 8.455,25.347 8.883,24.932 C9.310,24.517 9.523,23.988 9.523,23.345 C9.523,22.686 9.308,22.140 8.876,21.709 Z"></path>
                                        <path class="fill-primary" fill-rule="evenodd" d="M105.996,23.499 C105.995,26.752 103.950,29.265 100.748,29.950 C100.713,29.958 100.681,29.983 100.647,30.000 C100.588,30.000 100.529,30.000 100.471,30.000 C100.467,28.585 100.460,27.171 100.466,25.756 C100.467,25.675 100.550,25.565 100.626,25.518 C101.352,25.068 101.714,24.425 101.711,23.571 C101.707,22.020 101.710,20.469 101.710,18.892 C103.133,18.892 104.546,18.892 105.996,18.892 C105.996,18.989 105.996,19.093 105.996,19.196 C105.996,20.630 105.997,22.065 105.996,23.499 ZM101.715,17.089 C101.715,15.990 101.683,14.917 101.724,13.847 C101.767,12.679 102.761,11.806 103.931,11.838 C105.060,11.869 105.978,12.794 105.993,13.940 C106.005,14.954 105.995,15.969 105.995,16.983 C105.995,17.011 105.987,17.040 105.980,17.089 C104.569,17.089 103.157,17.089 101.715,17.089 ZM96.421,29.234 C94.322,27.983 93.199,26.136 93.155,23.703 C93.108,21.138 93.145,18.571 93.146,16.005 C93.146,15.957 93.153,15.910 93.159,15.841 C94.572,15.841 95.976,15.841 97.426,15.841 C97.426,15.948 97.426,16.060 97.426,16.172 C97.426,18.602 97.430,21.031 97.423,23.461 C97.421,24.364 97.757,25.066 98.548,25.540 C98.629,25.589 98.688,25.740 98.689,25.844 C98.699,27.122 98.695,28.401 98.696,29.679 C98.696,29.786 98.703,29.893 98.707,30.000 C98.648,30.000 98.590,30.000 98.531,30.000 C97.799,29.823 97.075,29.624 96.421,29.234 ZM93.145,14.043 C93.145,13.935 93.145,13.823 93.145,13.711 C93.145,11.318 93.137,8.926 93.149,6.534 C93.154,5.625 92.818,4.928 92.023,4.460 C91.961,4.424 91.894,4.332 91.894,4.265 C91.886,2.850 91.888,1.436 91.888,0.000 C93.423,0.232 94.703,0.889 95.731,2.009 C96.833,3.209 97.413,4.630 97.421,6.261 C97.433,8.791 97.426,11.319 97.427,13.849 C97.427,13.906 97.421,13.964 97.416,14.043 C96.005,14.043 94.599,14.043 93.145,14.043 ZM89.588,4.782 C89.034,5.128 88.866,5.768 88.868,6.431 C88.875,8.061 88.870,9.692 88.869,11.322 C88.869,12.143 88.869,12.963 88.867,13.783 C88.867,13.869 88.857,13.954 88.851,14.051 C87.434,14.051 86.035,14.051 84.587,14.051 C84.587,13.958 84.587,13.866 84.587,13.774 C84.588,11.294 84.579,8.814 84.590,6.334 C84.605,3.158 86.853,0.543 90.000,0.018 C90.028,0.013 90.058,0.017 90.125,0.017 C90.125,0.639 90.125,1.243 90.125,1.848 C90.125,2.405 90.109,2.962 90.130,3.518 C90.149,4.032 90.126,4.447 89.588,4.782 ZM84.585,15.837 C86.015,15.837 87.420,15.837 88.868,15.837 C88.868,15.951 88.868,16.065 88.868,16.179 C88.868,18.608 88.849,21.039 88.873,23.468 C88.908,27.007 86.358,29.493 83.589,29.955 C83.552,29.961 83.518,29.985 83.482,30.000 C83.424,30.000 83.365,30.000 83.306,30.000 C83.310,28.634 83.319,27.268 83.313,25.902 C83.311,25.691 83.376,25.580 83.559,25.467 C84.268,25.031 84.587,24.371 84.587,23.549 C84.587,21.099 84.586,18.650 84.585,16.201 C84.585,16.085 84.585,15.970 84.585,15.837 ZM81.366,30.000 C80.875,29.844 80.360,29.740 79.897,29.524 C77.435,28.380 76.120,26.440 76.027,23.732 C75.974,22.192 76.017,20.649 76.016,19.107 C76.016,19.040 76.016,18.973 76.016,18.886 C77.447,18.886 78.859,18.886 80.303,18.886 C80.303,19.000 80.303,19.104 80.303,19.209 C80.303,20.663 80.308,22.117 80.302,23.571 C80.298,24.427 80.666,25.065 81.387,25.518 C81.463,25.566 81.547,25.675 81.547,25.756 C81.553,27.171 81.546,28.585 81.542,30.000 C81.484,30.000 81.425,30.000 81.366,30.000 ZM76.017,17.097 C76.017,16.540 76.017,15.997 76.017,15.453 C76.017,14.965 76.012,14.478 76.017,13.990 C76.030,12.831 76.911,11.892 78.032,11.838 C79.203,11.781 80.217,12.619 80.282,13.797 C80.341,14.885 80.294,15.978 80.294,17.097 C78.857,17.097 77.452,17.097 76.017,17.097 Z"></path>
                                    </svg>
                                </a>
                                <address class="font-size-2 mb-5">
                                    <span class="mb-2 font-weight-normal text-dark">
                                        1418 River Drive, Suite 35 Cottonhall, CA 9622 <br> United States
                                    </span>
                                </address>
                                <div class="mb-4">
                                    <a href="mailto:sale@bookworm.com" class="font-size-2 d-block link-black-100 mb-1">sale@bookworm.com</a>
                                    <a href="tel:+1246-345-0695" class="font-size-2 d-block link-black-100">+1 246-345-0695</a>
                                </div>
                                <ul class="list-unstyled mb-0 d-flex">
                                    <li class="btn pl-0">
                                        <a class="link-black-100" href="#">
                                            <span class="fab fa-instagram"></span>
                                        </a>
                                    </li>
                                    <li class="btn">
                                        <a class="link-black-100" href="#">
                                            <span class="fab fa-facebook-f"></span>
                                        </a>
                                    </li>
                                    <li class="btn">
                                        <a class="link-black-100" href="#">
                                            <span class="fab fa-youtube"></span>
                                        </a>
                                    </li>
                                    <li class="btn">
                                        <a class="link-black-100" href="#">
                                            <span class="fab fa-twitter"></span>
                                        </a>
                                    </li>
                                    <li class="btn">
                                        <a class="link-black-100" href="#">
                                            <span class="fab fa-pinterest"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-2 mb-6 mb-lg-0">
                            <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1">Explore</h4>
                            <ul class="list-unstyled mb-0">
                                <li class="pb-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">About as</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Sitemap</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Bookmarks</a>
                                </li>
                                <li class="pt-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Sign in/Join</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-2 mb-6 mb-lg-0">
                            <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1">Customer Service</h4>
                            <ul class="list-unstyled mb-0">
                                <li class="pb-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Help Center</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Returns</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Product Recalls</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Accessibility</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Contact Us</a>
                                </li>
                                <li class="pt-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Store Pickup</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-2 mb-6 mb-lg-0">
                            <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1">Policy</h4>
                            <ul class="list-unstyled mb-0">
                                <li class="pb-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Return Policy</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Terms Of Use</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Security</a>
                                </li>
                                <li class="pt-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Privacy</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-2 mb-6 mb-lg-0">
                            <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1">Categories</h4>
                            <ul class="list-unstyled mb-0">
                                <li class="pb-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Action</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Comedy</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Drama</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Horror</a>
                                </li>
                                <li class="py-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Kids</a>
                                </li>
                                <li class="pt-2">
                                    <a class="widgets-hover transition-3d-hover font-size-2 link-black-100" href="#">Romantic Comedy</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="space-1">
                <div class="container">
                    <div class="d-lg-flex text-center text-lg-left justify-content-between align-items-center">
                        <!-- Copyright -->
                        <p class="mb-3 mb-lg-0 font-size-2">©2020 Book Worm. All rights reserved</p>
                        <!-- End Copyright -->

                        <div class="ml-auto d-lg-flex align-items-center">
                            <div class="mb-4 mb-lg-0 mr-5">
                               <img class="img-fluid" src="/img/324x38/img1.png" alt="Image-Description">
                            </div>

                            <!-- Select -->
                            <select class="js-select selectpicker dropdown-select mb-3 mb-lg-0"
                                data-style="border px-4 py-2 rounded-0 height-5 outline-none shadow-none form-control font-size-2"
                                data-dropdown-align-right="true">
                                <option value="one" selected>English (United States)</option>
                                <option value="two">Deutsch</option>
                                <option value="three">Français</option>
                                <option value="four">Español</option>
                            </select>
                            <!-- End Select -->

                            <!-- Select -->
                            <select class="js-select selectpicker dropdown-select ml-md-3"
                                data-style="border px-4 py-2 rounded-0 height-5 outline-none shadow-none form-control font-size-2"
                                data-dropdown-align-right="true"
                                data-width="fit">
                                <option value="one" selected>$ USD</option>
                                <option value="two">€ EUR</option>
                                <option value="three">₺ TL</option>
                                <option value="four">₽ RUB</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ========== END FOOTER ========== -->
    
    <script type="text/javascript">	                                                                   
    $(document).ready(function (e){
		$('#btn_rental').on("click", function(){
			var date = $('#ren_return').val();
			if(date.length>0){
				$('#rental').submit();
			}else{
				alert("반납예정일을 선택해주세요.");
			}
		});
		$('#btn_no_rental').on("click", function(){
			alert("대출이 불가능한 도서입니다.");
		});
		$('#btn_request').on("click", function(){
			var result = confirm("도서신청을 하시겠습니까?");
			if(result){
				$('#request').submit();
			}else{
				
			}
		});
	});                                          	
	</script>

    <!-- 반납예정일  -->
    <script>
		var now = new Date();
		var tomorrow = new Date(now.setDate(now.getDate() + 1));
		var month = new Date(now.setDate(now.getDate() + 30));
		var timeOff = new Date().getTimezoneOffset()*60000;
		var nextday = new Date(tomorrow-timeOff).toISOString().split("T")[0];	
		var monthday = new Date(month-timeOff).toISOString().split("T")[0];	
		document.getElementById("ren_return").setAttribute("min", nextday);	
		document.getElementById("ren_return").setAttribute("max", monthday);	
	</script>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="/vendor/jquery/dist/jquery.min.js"></script>
    <script src="/vendor/jquery-migrate/dist/jquery-migrate.min.js"></script>
    <script src="/vendor/popper.js/dist/umd/popper.min.js"></script>
    <script src="/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="/vendor/appear.js"></script>
    <script src="/vendor/fancybox/jquery.fancybox.min.js"></script>
    <script src="/vendor/multilevel-sliding-mobile-menu/dist/jquery.zeynep.js"></script>
    <script src="/vendor/hs-megamenu/src/hs.megamenu.js"></script>
    <script src="/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/vendor/slick-carousel/slick/slick.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>    
    <script src="/js/infochart.js"></script>
    

    <!-- JS HS Components -->
    <script src="/js/hs.core.js"></script>
    <script src="/js/components/hs.unfold.js"></script>
    <script src="/js/components/hs.malihu-scrollbar.js"></script>
    <script src="/js/components/hs.fancybox.js"></script>
    <script src="/js/components/hs.slick-carousel.js"></script>
    <script src="/js/components/hs.selectpicker.js"></script>
    <script src="/js/components/hs.show-animation.js"></script>
    <script src="/js/components/hs.onscroll-animation.js"></script>
    <script src="/js/components/hs.quantity-counter.js"></script>
    <script src="/js/components/hs.scroll-nav.js"></script>

    <!-- JS Bookworm -->
    <!-- <script src="/js/bookworm.js"></script> -->

    <script>
        $(document).on('ready', function () {
            // initialization of unfold component
            $.HSCore.components.HSUnfold.init($('[data-unfold-target]'));

            // initialization of select picker
            $.HSCore.components.HSSelectPicker.init('.js-select');

            // initialization of slick carousel
            $.HSCore.components.HSSlickCarousel.init('.js-slick-carousel');

            // initialization of malihu scrollbar
            $.HSCore.components.HSMalihuScrollBar.init($('.js-scrollbar'));

            // initialization of popups
            $.HSCore.components.HSFancyBox.init('.js-fancybox');

            // initialization of quantity counter
            $.HSCore.components.HSQantityCounter.init('.js-quantity');

            // initialization of show animations
            $.HSCore.components.HSShowAnimation.init('.js-animation-link');

            // initialization of HSScrollNav component
            $.HSCore.components.HSScrollNav.init($('.js-scroll-nav'), {
              duration: 700
            });

            // init zeynepjs
            var zeynep = $('.zeynep').zeynep({
                onClosed: function () {
                    // enable main wrapper element clicks on any its children element
                    $("body main").attr("style", "");

                    console.log('the side menu is closed.');
                },
                onOpened: function () {
                    // disable main wrapper element clicks on any its children element
                    $("body main").attr("style", "pointer-events: none;");

                    console.log('the side menu is opened.');
                }
            });

            // handle zeynep overlay click
            $(".zeynep-overlay").click(function () {
                zeynep.close();
            });

            // open side menu if the button is clicked
            $(".cat-menu").click(function () {
                if ($("html").hasClass("zeynep-opened")) {
                    zeynep.close();
                } else {
                    zeynep.open();
                }
            });
        });
    </script>
    
    <script>
    	var rating = $('input[name=brs_rating]').val();
    
    	$('#star1').click(function(){
    		rating = $('input[name=brs_rating]').attr('value', '1');
    		rating = $('input[name=brs_rating]').val();
    		//alert(rating);
    		$('#star1').removeClass('far');
    		$('#star2').removeClass('far');
    		$('#star2').removeClass('fas');
    		$('#star2').addClass("far");
    		$('#star3').removeClass('fas');
    		$('#star3').removeClass('far');
    		$('#star3').addClass("far");
    		$('#star4').removeClass('fas');
    		$('#star4').removeClass('far');
    		$('#star4').addClass("far");
    		$('#star5').removeClass('fas');
    		$('#star5').removeClass('far');
    		$('#star5').addClass("far");
    		
    		$('#star1').addClass("fas"); //색칠
    	});
    	$('#star2').click(function(){
    		rating = $('input[name=brs_rating]').attr('value', '2');
    		rating = $('input[name=brs_rating]').val();
    		//alert(rating);
    		$('#star1').removeClass('far');
    		$('#star2').removeClass('far');
    		$('#star3').removeClass('far');
    		$('#star3').removeClass('fas');
    		$('#star3').addClass("far");
    		$('#star4').removeClass('fas');
    		$('#star4').removeClass('far');
    		$('#star4').addClass("far");
    		$('#star5').removeClass('fas');
    		$('#star5').removeClass('far');
    		$('#star5').addClass("far");
    		  		
    		$('#star1').addClass("fas");
    		$('#star2').addClass("fas");
    	});
    	$('#star3').click(function(){
    		rating = $('input[name=brs_rating]').attr('value', '3');
    		rating = $('input[name=brs_rating]').val();
    		//alert(rating);
    		$('#star1').removeClass('far');
    		$('#star2').removeClass('far');
    		$('#star3').removeClass('far');
    		$('#star4').removeClass('far');
    		$('#star4').removeClass('fas');
    		$('#star4').addClass("far");
    		$('#star5').removeClass('far');
    		$('#star5').removeClass('fas');
    		$('#star5').addClass("far");
    		  		
    		$('#star1').addClass("fas");
    		$('#star2').addClass("fas");
    		$('#star3').addClass("fas");
    	});
    	$('#star4').click(function(){
    		rating = $('input[name=brs_rating]').attr('value', '4');
    		rating = $('input[name=brs_rating]').val();
    		//alert(rating);
    		$('#star5').removeClass('fas');
    		$('#star5').addClass("far");
    		
    		$('#star1').addClass("fas");
    		$('#star2').addClass("fas");
    		$('#star3').addClass("fas");
    		$('#star4').addClass("fas");
    		
    	});
    	$('#star5').click(function(){
    		rating = $('input[name=brs_rating]').attr('value', '5');
    		rating = $('input[name=brs_rating]').val();
    		//alert(rating);
    		$('#star1').removeClass('far');
    		$('#star2').removeClass('far');
    		$('#star3').removeClass('far');
    		$('#star4').removeClass('far');
    		$('#star5').removeClass('far');    		
    		
    		$('#star1').addClass("fas");
    		$('#star2').addClass("fas");
    		$('#star3').addClass("fas");
    		$('#star4').addClass("fas");
    		$('#star5').addClass("fas");
    		
    	});
    	
    	var member = "${books.member.mem_id}";
    	$('#reviewBtn').click(function(){
    		
    		var bn = $('#bn').val();
    		var mn = $('#mn').val();
    		var br = $('#br').val();
    		var dt = $('#descriptionTextarea').val();
    		if(mn == ""){
    			alert("로그인이 필요한 기능입니다.");
    			$('#star1').removeClass("fas");
				$('#star2').removeClass("fas");
				$('#star3').removeClass("fas");
				$('#star4').removeClass("fas");
				$('#star5').removeClass("fas");
				$('#star1').addClass("far");
				$('#star2').addClass("far");
				$('#star3').addClass("far");
				$('#star4').addClass("far");
				$('#star5').addClass("far");
				$('#br').val("");
				$('#descriptionTextarea').val("");
    		}else if(br == ""){
    			alert("리뷰를 표기해주세요!");
    			
    		}else{
    			//alert("북넘버: "+bn+", 멤버넘버: "+mn+", 별점: "+br+", 내용: "+dt);
        		$.ajax({
        			url:'../detail/book/writereview',
        			type:'POST',
        			data:{'book_num':bn,'mem_num':mn,'brs_rating':br,'brs_content':dt},
        			dataType:'json',
        			success: function(data){
        				//alert("data: "+data);
        				//alert(data.brs_content);
        				if(data){
        					alert("댓글 등록 성공");
        					
        					$('#star1').removeClass("fas");
        					$('#star2').removeClass("fas");
        					$('#star3').removeClass("fas");
        					$('#star4').removeClass("fas");
        					$('#star5').removeClass("fas");
        					$('#star1').addClass("far");
        					$('#star2').addClass("far");
        					$('#star3').addClass("far");
        					$('#star4').addClass("far");
        					$('#star5').addClass("far");
        					$('#br').val("");
        					$('#descriptionTextarea').val("");
        					
        					list_review();
        				}else if(!data){
        					alert("실패");
        				}
        			},
        			error: function(err){
        				alert("댓글 등록 실패!");
        				//alert("에러"+err);
        			}
        		});
    		}
    		
    		
    	});
    	
    	
    	
    	function delete_review(brs_num){
    		alert(brs_num);
    		if(!confirm("댓글을 삭제하시겠습니까?")){
    			alert("취소 누름")
    		}else{
    			alert("확인 누름");
        		alert("넘버: "+brs_num);
        		$.ajax({
        			url:'../detail/book/deletereview',
        			type:'POST',
        			data:{'brs_num':brs_num},
        			dataType:'json',
        			success: function(data){
        				alert("삭제 성공: "+data);
        				list_review();
        			},
        			error: function(err){
        				alert("삭제 오류:"+err)
        			}
        		});
    		}
    	}
    	
    	// 좋아요 업데이트
    	function update_like(br_num, mem_num){
    		var mn = $('#mn').val();
    		alert("좋아요!!");
    		//alert(br_num);
    		//alert(mem_num);
    		//alert(mn);
    		if(mn == ""){
    			alert("로그인이 필요한 기능입니다.");
    		}else{
    			$.ajax({
        			url:'../detail/book/reviewupdatelike',
        			type:'POST',
        			data:{'brs_num':br_num, 'mem_num':mem_num},
        			dataType:'json',
        			success: function(result){
        				//alert("좋아요 성공: "+result);
        				//alert("좋 성공후 dataExists: "+result.dataExists);
        				//alert("좋 성공후2 selectLike: "+result.selectLike);
        				if(result.dataExists == 1){
        					alert("이미 좋아요를 누른 회원입니다.");
        					if(result.selectLike == 0){
        						alert("좋아요 누르기 성공");
        						list_review();
        					}else if(result.selectLike == 1){
        						alert("이미 좋아요를 눌러서 다시 1 다운");
        						list_review();
        					}
        				}else if(result.dataExists == 0){
        					alert("좋아요를 누를 수 있는 권한 흭득.");
        					if(result.selectLike == 0){
        						alert("좋아요 누르기 성공");
        						list_review();
        					}
        				}
        				//list_review();
        			},
        			error: function(err){
        				alert("좋아요 실패[ERROR]: "+err);
        			}
        		});
    		}
    	}
    	//싫어요 업데이트
    	function update_hate(br_num, mem_num){
    		var mn = $('#mn').val();
    		alert("싫어요!!");
    		//alert(br_num);
    		//$('#hate').css("color","red");
    		if(mn == ""){
    			alert("로그인이 필요한 기능입니다");
    		}else{
    			$.ajax({
        			url:'../detail/book/reviewupdatehate',
        			type:'POST',
        			data:{'brs_num':br_num, 'mem_num':mem_num},
        			dataType:'json',
        			success: function(result){
        				if(result.dataExists == 1){
        					alert("이미 싫어요를 누른 회원입니다.");
        					if(result.selectHate == 0){
        						alert("싫어요 누르기 성공");
        						list_review();
        					}else if(result.selectHate == 1){
        						alert("이미 싫어요를 눌러서 다시 1 다운");
        						list_review();
        					}
        				}else if(result.dataExists == 0){
        					alert("싫어요를 누를 수 있는 권한 흭득.");
        					if(result.selectHate == 0){
        						alert("싫어요 누르기 성공");
        						list_review();
        					}
        				}
        				
        			},
        			error: function(err){
        				alert("싫어요 실패[ERROR]: "+err);
        			}
        		});
    		}
    		
    	}
    	
    	function test(brs_num){
    		alert("TEST");
    		alert(brs_num);
    	}
    	
    	function list_review_plus(booknum, plusPage){
    		alert("플러스 페이지");
    		//alert("book_num: "+booknum);
    		//alert("plusPage: "+plusPage);
    		$.ajax({
    			url:'../detail/book/listreviewplus',
    			type:'POST',
    			data:{'book_num':bookNum, 'plusPage':plusPage},
    			dataType:'json',
    			success: function(result){
    				
    				//alert("더보기 성공시 값: "+result);
    				//alert("더보기 result.length: "+result.review.length);
    				//alert("더보기 plusPage: "+ plusPage);
    				var htmll = "";
    				var plus = "";
    				if(result){
    					alert("더보기 플러스 페이지 증가 테스트: "+result.plusPage);
    					for(let BookReviews of result.review){
    						//alert(result.member.mem_id);
    						htmll += "<li class='mb-4 pb-5 border-bottom'>";
    						htmll += "<div class='d-flex align-items-center mb-3'>";
    						htmll += "<h6 class='mb-0'>"+BookReviews.member.mem_id+"</h6>";
    						if(BookReviews.brs_rating == 1){
    							htmll += "<div class='text-yellow-darker ml-3'>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "</div>";
    						}else if(BookReviews.brs_rating == 2){
    							htmll += "<div class='text-yellow-darker ml-3'>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "</div>";
    						}else if(BookReviews.brs_rating == 3){
    							htmll += "<div class='text-yellow-darker ml-3'>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "</div>";
    						}else if(BookReviews.brs_rating == 4){
    							htmll += "<div class='text-yellow-darker ml-3'>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "</div>";
    						}else if(BookReviews.brs_rating == 5){
    							htmll += "<div class='text-yellow-darker ml-3'>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "</div>";
    						}
    						htmll += "</div>";
    						htmll += "<p class='mb-4 text-lh-md'>"+BookReviews.brs_content+"</p>";
    						htmll += "<div class='text-gray-600 mb-4'>"+BookReviews.brs_cdate+"</div>";
    						htmll += "<ul class='nav'>";
    						htmll += "<li class='mr-7'>";
    						htmll += "<a onclick='update_like("+BookReviews.brs_num+", "+result.member.mem_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
    						htmll += "<i id='like' class='font-size-5 flaticon-like-1'></i>";
    						htmll += "<span id='likeCount' class='ml-2'>"+BookReviews.brs_like+"</span>";
    						htmll += "</a>";
    						htmll += "</li>";
    						htmll += "<li class='mr-7'>";
    						htmll += "<a onclick='update_hate("+BookReviews.brs_num+", "+result.member.mem_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
    						htmll += "<i id='hate' class='font-size-5 flaticon-dislike'></i>";
    						htmll += "<span id='hateCount' class='ml-2'>"+BookReviews.brs_hate+"</span>";
    						htmll += "</a>";
    						htmll += "</li>";
    						//alert(result.member);
							if(result.member){
								if(result.member.mem_id == BookReviews.member.mem_id){
	    							htmll += "<li class='mr-7'>";
	    							htmll += "<a onclick='delete_review("+BookReviews.brs_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
	    							htmll += "<span class='material-icons' style='font-size: 30px; color:green'>delete_forever</span>";
	    							htmll += "</a>";
	    							htmll += "</li>";
	    						}
							}
							htmll += "</ul>";
    						htmll += "</li>";
    						//alert("요기2");
			
    					}
    					$('#ulul').html(htmll);
    					if(result.plusPage >= result.reviewTotal){
    						//alert("더보기 그만");
    						$('#plusPage').hide();
    						
    					}
    					plus += "<div style='text-align:center;'>";
    					plus += "<a onclick='list_review_plus(${book}, "+result.plusPage+")' style='cursor:pointer' >";
    					plus += "<i class='fa-sharp fa-solid fa-plus'></i>";
    					plus += "더 보기</a>";
    					plus += "</div>";
    					$('#plusPage').html(plus);
    					alert("더보기 그려지기 완료")
    					
    				}else if(!result){
    					alert("데이터 없음");
    				}
    			},
    			error: function(err){
    				alert("더보기 에러"+err);
    			}
    		});
    		
    	}
    	
    	
    	
    	var bookNum = $('#bn').val();
    	//var pp = $('#pp').val();

    	function list_review(){
    		//alert("리스트 불러오기");
    		//alert("book_num: "+bookNum);
    		//alert("plusPage: "+plusPage);
    		//alert("pp: "+pp);
    		$.ajax({
    			url:'../detail/book/listreview',
    			type:'POST',
    			data:{'book_num':bookNum},
    			dataType:'json',
    			success: function(result){
    				//alert("성공 result: "+result);
    				//alert("성공후 length: "+result.plusPage.length);
    				html = "";
    				if(result){
    					html += "<h4 class='font-size-3'>회원 리뷰 </h4>";
    					html += "<div class='mb-8' id='cut'>";
    					html += "<div class='mb-6'>";
    					html += "<div class='d-flex  align-items-center mb-4'>";
    					html += "<span class='font-size-15 font-weight-bold'>"+result.reviewAvg+"</span>";
    					html += "<div class='ml-3 h6 mb-0'>";
    					html += "<span class='font-weight-normal'>"+result.reviewTotal+" reviews</span>";
    					if(result.reviewAvg < 0.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "</div>";
    					}else if(result.reviewAvg >= 0.5 && result.reviewAvg < 1.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "</div>";
    					}else if(result.reviewAvg >= 1.5 && result.reviewAvg < 2.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "</div>";
    					}else if(result.reviewAvg >= 2.5 && result.reviewAvg < 3.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "</div>";
    					}else if(result.reviewAvg >= 3.5 && result.reviewAvg < 4.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "</div>";
    					}else if(result.reviewAvg >= 4.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "</div>";
    					}
    					
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='d-xl-flex'>";
    					html += "<a type='button' href=''#reviewcommit' class='d-block btn btn-outline-dark rounded-0 px-5 mb-3 mb-xl-0'>리뷰 쓰러가기</a>";
    					html += "</div>";
    					html += "</div>";// 버튼까지
    					html += "<div>"; //별점 bar 그래프
    					html += "<ul class='list-unstyled'>";
    					html += "<li class='py-2'>";//바 리스트 5점짜리
    					html += "<a class='row align-items-center mx-gutters-2 font-size-2' href='javascript:;'>";
    					html += "<div class='col-auto'>";
    					html += "<span class='text-dark'>5 stars</span>";
    					html += "</div>";
    					html += "<div class='col px-0'>";
    					html += "<div class='progress bg-white-100' style='height: 7px;'>";
    					html += "<div class='progress-bar bg-yellow-darker' role='progressbar' style='width:"+result.five/result.reviewTotal*100+"%;' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>";
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='col-2'>";
    					html += "<span class='text-secondary'>"+result.five+"</span>";
    					html += "</div>";
    					html += "</a>";
    					html += "</li>";
    					
    					html += "<li class='py-2'>";//바 리스트 4점짜리
    					html += "<a class='row align-items-center mx-gutters-2 font-size-2' href='javascript:;'>";
    					html += "<div class='col-auto'>";
    					html += "<span class='text-dark'>4 stars</span>";
    					html += "</div>";
    					html += "<div class='col px-0'>";
    					html += "<div class='progress bg-white-100' style='height: 7px;'>";
    					html += "<div class='progress-bar bg-yellow-darker' role='progressbar' style='width:"+result.four/result.reviewTotal*100+"%;' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>";
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='col-2'>";
    					html += "<span class='text-secondary'>"+result.four+"</span>";
    					html += "</div>";
    					html += "</a>";
    					html += "</li>";
    					
    					html += "<li class='py-2'>";//바 리스트 3점짜리
    					html += "<a class='row align-items-center mx-gutters-2 font-size-2' href='javascript:;'>";
    					html += "<div class='col-auto'>";
    					html += "<span class='text-dark'>3 stars</span>";
    					html += "</div>";
    					html += "<div class='col px-0'>";
    					html += "<div class='progress bg-white-100' style='height: 7px;'>";
    					html += "<div class='progress-bar bg-yellow-darker' role='progressbar' style='width:"+result.three/result.reviewTotal*100+"%;' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>";
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='col-2'>";
    					html += "<span class='text-secondary'>"+result.three+"</span>";
    					html += "</div>";
    					html += "</a>";
    					html += "</li>";
    					
    					html += "<li class='py-2'>";//바 리스트 2점짜리
    					html += "<a class='row align-items-center mx-gutters-2 font-size-2' href='javascript:;'>";
    					html += "<div class='col-auto'>";
    					html += "<span class='text-dark'>2 stars</span>";
    					html += "</div>";
    					html += "<div class='col px-0'>";
    					html += "<div class='progress bg-white-100' style='height: 7px;'>";
    					html += "<div class='progress-bar bg-yellow-darker' role='progressbar' style='width:"+result.two/result.reviewTotal*100+"%;' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>";
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='col-2'>";
    					html += "<span class='text-secondary'>"+result.two+"</span>";
    					html += "</div>";
    					html += "</a>";
    					html += "</li>";
    					
    					html += "<li class='py-2'>";//바 리스트 1점짜리
    					html += "<a class='row align-items-center mx-gutters-2 font-size-2' href='javascript:;'>";
    					html += "<div class='col-auto'>";
    					html += "<span class='text-dark'>1 stars</span>";
    					html += "</div>";
    					html += "<div class='col px-0'>";
    					html += "<div class='progress bg-white-100' style='height: 7px;'>";
    					html += "<div class='progress-bar bg-yellow-darker' role='progressbar' style='width:"+result.one/result.reviewTotal*100+"%;' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>";
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='col-2'>";
    					html += "<span class='text-secondary'>"+result.one+"</span>";
    					html += "</div>";
    					html += "</a>";
    					html += "</li>"; // 바 리스트 끝
    					
    					html += "</ul>";
    					html += "</div>";
    					html += "</div>";
    					html += "<h4 class='font-size-3 mb-8'>1-5 of "+result.reviewTotal+" reviews </h4>";
    					html += "<ul class='list-unstyled mb-8' id='ulul'>";
    					
    					for(let BookReviews of result.review){
    						//alert(BookReviews.brs_num);
    						html += "<li class='mb-4 pb-5 border-bottom'>";
    						html += "<div class='d-flex align-items-center mb-3'>";
    						html += "<h6 class='mb-0'>"+BookReviews.member.mem_id+"</h6>";
    						if(BookReviews.brs_rating == 1){
    							html += "<div class='text-yellow-darker ml-3'>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "</div>";
    						}else if(BookReviews.brs_rating == 2){
    							html += "<div class='text-yellow-darker ml-3'>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "</div>";
    						}else if(BookReviews.brs_rating == 3){
    							html += "<div class='text-yellow-darker ml-3'>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "</div>";
    						}else if(BookReviews.brs_rating == 4){
    							html += "<div class='text-yellow-darker ml-3'>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "</div>";
    						}else if(BookReviews.brs_rating == 5){
    							html += "<div class='text-yellow-darker ml-3'>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "</div>";
    						}
    						html += "</div>";
    						html += "<p class='mb-4 text-lh-md'>"+BookReviews.brs_content+"</p>";
    						html += "<div class='text-gray-600 mb-4'>"+BookReviews.brs_cdate+"</div>";
    						html += "<ul class='nav'>";
    						html += "<li class='mr-7'>";
    						html += "<a onclick='update_like("+BookReviews.brs_num+", "+result.member.mem_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
    						html += "<i id='like' class='font-size-5 flaticon-like-1'></i>";
    						html += "<span id='likeCount' class='ml-2'>"+BookReviews.brs_like+"</span>";
    						html += "</a>";
    						html += "</li>";
    						html += "<li class='mr-7'>";
    						html += "<a onclick='update_hate("+BookReviews.brs_num+", "+result.member.mem_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
    						html += "<i id='hate' class='font-size-5 flaticon-dislike'></i>";
    						html += "<span id='hateCount' class='ml-2'>"+BookReviews.brs_hate+"</span>";
    						html += "</a>";
    						html += "</li>";
    						if(result.member.mem_id == BookReviews.member.mem_id){
    							html += "<li class='mr-7'>";
    							html += "<a onclick='delete_review("+BookReviews.brs_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
    							html += "<span class='material-icons' style='font-size: 30px; color:green'>delete_forever</span>";
    							html += "</a>";
    							html += "</li>";
    						}
    						html += "</ul>";
    						html += "</li>";
    					}
    					html += "</ul>";
    					//alert(bookNum);
    					html += "<div style='text-align:center;'><a onclick='list_review_plus("+bookNum+", "+result.plusPage+")' style='cursor:pointer' ><i class='fa-sharp fa-solid fa-plus'></i>더 보기</a></div>";
    					html += "</div>";
    					
    					$('#cut').html(html);		
    					alert("그려지기 완료");
    					
    					
    				}else if(!result){
    					alert("성공인데 데이터 없음")
    				}
    			},
    			error: function(err){
    				alert("에러: "+err);
    			}
    		});
    	}
    </script>
    <script>
    function addFav(isbn){    		
    	let memnum = "${member.mem_num}";
    	var favsuccess = false;
    	if($('#'+isbn+'').children('svg').attr('class') == "heart-empty"){//빈하트 클릭시    			
    		$.ajax({
    			url: "/ajax/fav/book.json", 
    			type: "GET", 
    			data: {isbn: isbn,
    				memnum: memnum
    				}, 
    			success: function(data){
    				if(!data){
    					alert("즐겨찾기할 수 없는 도서입니다.");
    					favsuccess = false;
    				}
    				if(data==true){ //db에 있는 도서 즐겨찾기(성공)    						  	
    					favsuccess = true;    						
    				}
    				else if(data==false){ //db에 없는 도서 즐겨찾기(실패)    						   
    					favsuccess = false;
    				}
    				if(favsuccess == true){
    	    			$('.'+isbn+'').empty();
    	        		$('.'+isbn+'-').empty();
    	    			$('.'+isbn+'').html('<svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter"><path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg>');
    	    			$('.'+isbn+'-').html('<svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter"><path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg>');    			    			    		    			
    	    		}
    			},
    			error: function(){
    				alert('서버에러');
    			}    				
    		});    	    				    		    
    	}else if($('#'+isbn+'').children('svg').attr('class') == "heart-fill"){
    		$.ajax({
    			url: "/ajax/favdel/book.json", 
    			type: "GET", 
    			data: {isbn: isbn,
    				memnum: memnum
    				}, 
    			success: function(data){
    				if(!data){
    					alert("존재하지않는 data");
    					return false;
    				}    					
    			},
    			error: function(){
    				alert('서버에러');
    			}
    		});    			
    		$('.'+isbn+'').empty();
    		$('.'+isbn+'-').empty();
    		$('.'+isbn+'').html('<svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter"><path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg>');
    		$('.'+isbn+'-').html('<svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter"><path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg>');    			
    	}    		
    }
    function login(){
    	alert("로그인을 해주세요");
    }
    </script>
</body>
</html>