<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Title -->
    <title>책 4조 도서관</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="shortcut icon" href="/img/favicon.png">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/vendor/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="/vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="/vendor/slick-carousel/slick/slick.css"/>
    <link rel="stylesheet" href="/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">

    <!-- CSS Bookworm Template -->
    <link rel="stylesheet" href="/css/theme.css">
    
    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    
</head>
<body class="left-sidebar">
    <!--===== HEADER CONTENT =====-->
    <header id="site-header" class="site-header__v1">
        <div class="topbar border-bottom d-none d-md-block">
            <div class="container-fluid px-2 px-md-5 px-xl-8d75">
                <div class="topbar__nav d-md-flex justify-content-between align-items-center">
                    <ul class="topbar__nav--left nav ml-md-n3">
                        <li class="nav-item"><a href="#" class="nav-link link-black-100"><i class="glph-icon flaticon-question mr-2"></i>Can we help you?</a></li>
                        <li class="nav-item"><a href="tel:+1246-345-0695" class="nav-link link-black-100"><i class="glph-icon flaticon-phone mr-2"></i>+1 246-345-0695</a></li>
                    </ul>
                    <ul class="topbar__nav--right nav mr-md-n3">
                        <li class="nav-item"><a href="#" class="nav-link link-black-100"><i class="glph-icon flaticon-pin"></i></a></li>
                        <c:choose>
                        	<c:when test="${not empty member}">
                        	<li class="nav-item"><a href="#" class="nav-link link-black-100"><svg role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
											          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
											        </svg></a></li>		
                        	</c:when>
                        	<c:otherwise>
                        	<li class="nav-item"><a href="#" class="nav-link link-black-100"><svg role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white">          
											          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
											        </svg></a></li>		
                        	</c:otherwise>
                        </c:choose>                        
                        		        
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
    <div class="page-header border-bottom mb-8">
        <div class="container">
            <div class="d-md-flex justify-content-between align-items-center py-4">            
                <h1 class="page-title font-size-3 font-weight-medium m-0 text-lh-lg">${listResult.keyword}에 대한 검색결과 </h1>                
            </div>
        </div>
    </div>
    <div class="site-content space-bottom-3" id="content">
        <div class="container">
            <div class="row">
                <div id="primary" class="content-area order-2">
                    <div class="position-relative mb-6">
                        <header class="mb-5 d-md-flex justify-content-between align-items-center">
                            <h2 class="font-size-26 mb-3 mb-md-0">인기도서</h2>
                        </header>

                        <div class="js-slick-carousel products no-gutters border-top border-left border-right position-static"
                            data-arrows-classes="position-absolute right-0 top-0 mt-2 arrow-cursor"
                            data-arrow-left-classes="flaticon-back mr-5"
                            data-arrow-right-classes="flaticon-next"
                            data-slides-show="4"
                            data-responsive='[{
                               "breakpoint": 1500,
                               "settings": {
                                 "slidesToShow": 3
                               }
                            },{
                               "breakpoint": 992,
                               "settings": {
                                 "slidesToShow": 2
                               }
                            }, {
                               "breakpoint": 768,
                               "settings": {
                                 "slidesToShow": 1
                               }
                            }, {
                               "breakpoint": 554,
                               "settings": {
                                 "slidesToShow": 1
                               }
                            }]'>                            
                            <c:forEach items="${listResult.popBook}" var="book">
								<div class="product">
                                <div class="product__inner overflow-hidden p-3 p-md-4" style="height:600px;">
                                    <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
                                        <div class="woocommerce-loop-product__thumbnail">
                                            <a href="/detail/book?isbn=${book.isbn}" class="d-block"><img src="${book.img}" class="img-fluid d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid" alt="image-description"></a>
                                        </div>
                                        <div class="woocommerce-loop-product__body product__body pt-3 bg-white">
                                            <div class="text-uppercase font-size-1 mb-1 text-truncate"><a href="/detail/book?isbn=${book.isbn}">${book.publisher}</a></div>
                                            <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-height-2 crop-text-2 h-dark"><a href="/detail/book?isbn=${book.isbn}">${book.title}</a></h2>
                                            <div class="font-size-2  mb-1 text-truncate"><a href="/search/book?type=3&keyword=${book.writer}&page=1" class="text-gray-700">${book.writer}</a></div>
                                            <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span>${book.catgo} </span>
                                            </div>
                                        </div>
                                        <div class="product__hover d-flex align-items-center">
                                            <a href="javascript:openPop('${book.isbn}')" class="text-uppercase text-dark h-dark font-weight-medium mr-auto" data-toggle="tooltip" data-placement="right" data-original-title="대출 예약"><span class="product__add-to-cart">대출 예약</span>
                                                <span class="product__add-to-cart-icon font-size-4"><i class="flaticon-icon-126515"></i></span>
                                            </a> 
                                            <c:set var="loop_flag" value="false" />  
                                                  <c:choose>
                                                  <c:when test="${not empty member}">
                                                  <c:choose>
                                                  <c:when test="${not empty member.bookFavorite}">
                                                     <c:forEach items="${member.bookFavorite}" var="list" varStatus="status">    
                                                     <c:if test="${not loop_flag }">      
                                                   <c:choose>
                                                           <c:when test="${list.libraryBook.book_isbn == book.isbn}">
                                                              <a href="javascript:addFav('${book.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">                                            
                                                                  <svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                        </svg>
                                                              </a>
                                                              <c:set var="loop_flag" value="true" />
                                                           </c:when>                                                  
                                                           <c:otherwise>
                                                              <c:if test="${status.last}">
                                                                 <a href="javascript:addFav('${book.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">                                            
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
                                                     <a href="javascript:addFav('${book.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">                                            
                                                         <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                 <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                               </svg>
                                                     </a>
                                                  </c:otherwise>
                                                  </c:choose>                                                                 
                                              </c:when>
                                             <c:otherwise>
                                                   <a href="javascript:login()" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">
                                                                <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                       <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                     </svg>
                                                            </a>   
                                             </c:otherwise>
                                           </c:choose>                                       	                                            	                                     	                                            		                                           	                                          	                                                                                                                                                                    
                                        </div>
                                    </div>
                                </div>
                            </div>
							</c:forEach>                       
                        </div>
                    </div>
                    
                    

                    <div class="shop-control-bar d-lg-flex justify-content-between align-items-center mb-5 text-center text-md-left">
                        <div class="shop-control-bar__left mb-4 m-lg-0">
                        	<c:if test="${listResult.cp == listResult.totalPageCount}">
                            <p class="woocommerce-result-count m-0">총 검색결과 ${listResult.totalCount}건 중 현재페이지 ${listResult.cp*listResult.ps-(listResult.ps-1)}-${listResult.totalCount} </p>
                            </c:if>
                            <c:if test="${listResult.cp != listResult.totalPageCount}">
                            <p class="woocommerce-result-count m-0">총 검색결과 ${listResult.totalCount}건 중 현재페이지 ${listResult.cp*listResult.ps-(listResult.ps-1)}-${listResult.cp*listResult.ps} </p>
                            </c:if>
                        </div>
                        <div class="shop-control-bar__right d-md-flex align-items-center">
                            <form class="woocommerce-ordering mb-4 m-md-0" method="get">
                                <!-- Select -->
                                <select class="js-select selectpicker dropdown-select orderby" name="orderby"
                                data-style="border-bottom shadow-none outline-none py-2" onchange="select_sort(this.value)"
                                id="sorted">
                                    <option value="1">인기순</option>
                                    <option value="2" selected="selected">정확도순</option>
                                    <option value="3">출판일순</option>
                                    <option value="4">평점순</option>                               
                                </select>
                                <!-- End Select -->
                            </form>

                            <form class="number-of-items ml-md-4 mb-4 m-md-0 d-none d-xl-block" method="get">
                                <!-- Select -->
                                <select class="js-select selectpicker dropdown-select orderby" name="orderby"
                                data-style="border-bottom shadow-none outline-none py-2"
                                data-width="fit" id="selected_show" onchange="select_show(this.value)">
                                    <option value="10">10개</option>
                                    <option value="12" selected="selected">12개</option>
                                    <option value="15">15개</option>
                                    <option value="20">20개</option>
                                    <option value="30">30개</option>
                                </select>
                                
                                <script>
                                var para = document.location.href.split("?");			
								var subPageStart = para[1].indexOf('=', para[1].indexOf('page'))+1;
								var subPageEnd = para[1].indexOf('&', para[1].indexOf('page'));	
								if(subPageEnd==-1){
									var page = para[1].substring(subPageStart);
								}else{
									var page = para[1].substring(subPageStart, subPageEnd);
								}								
				                    function select_show(num) {				                    	
										console.log("#num: " + num);
				                    	sessionStorage.setItem("show", num);				                    	
				                    	clickPage(1);
				                    }
				                    function select_sort(type){
				                    	var sort = type;
				                    	sessionStorage.setItem("sort", sort);	
				                    	clickPage(1, sort);
				                    }
			                    </script>
                                <!-- End Select -->
                            </form>

                            <ul class="nav nav-tab ml-lg-4 justify-content-center justify-content-md-start ml-md-auto" id="pills-tab" role="tablist">
                                <li class="nav-item border">
                                    <a class="nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center active" id="pills-one-example1-tab" data-toggle="pill" href="#pills-one-example1" onclick="clickTab(true);" role="tab" aria-controls="pills-one-example1" aria-selected="true">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="17px" height="17px">
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,0.000 L3.000,0.000 L3.000,3.000 L-0.000,3.000 L-0.000,0.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,0.000 L10.000,0.000 L10.000,3.000 L7.000,3.000 L7.000,0.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M14.000,0.000 L17.000,0.000 L17.000,3.000 L14.000,3.000 L14.000,0.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,7.000 L3.000,7.000 L3.000,10.000 L-0.000,10.000 L-0.000,7.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,7.000 L10.000,7.000 L10.000,10.000 L7.000,10.000 L7.000,7.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M14.000,7.000 L17.000,7.000 L17.000,10.000 L14.000,10.000 L14.000,7.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,14.000 L3.000,14.000 L3.000,17.000 L-0.000,17.000 L-0.000,14.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,14.000 L10.000,14.000 L10.000,17.000 L7.000,17.000 L7.000,14.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M14.000,14.000 L17.000,14.000 L17.000,17.000 L14.000,17.000 L14.000,14.000 Z" />
                                        </svg>
                                    </a>
                                </li>
                                <li class="nav-item border">
                                    <a class="nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center" id="pills-two-example1-tab" data-toggle="pill" href="#pills-two-example1" onclick="clickTab(false);" role="tab" aria-controls="pills-two-example1" aria-selected="false">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="23px" height="17px">
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,0.000 L3.000,0.000 L3.000,3.000 L-0.000,3.000 L-0.000,0.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,0.000 L23.000,0.000 L23.000,3.000 L7.000,3.000 L7.000,0.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,7.000 L3.000,7.000 L3.000,10.000 L-0.000,10.000 L-0.000,7.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,7.000 L23.000,7.000 L23.000,10.000 L7.000,10.000 L7.000,7.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,14.000 L3.000,14.000 L3.000,17.000 L-0.000,17.000 L-0.000,14.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,14.000 L23.000,14.000 L23.000,17.000 L7.000,17.000 L7.000,14.000 Z" />
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>


                    <!-- Tab Content -->
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-one-example1" role="tabpanel" aria-labelledby="pills-one-example1-tab">
                            <!-- Mockup Block -->
                            <ul class="products list-unstyled row no-gutters row-cols-2 row-cols-lg-3 row-cols-wd-4 border-top border-left mb-6">
                                <c:forEach items="${listResult.items}" var="book">
                                <li class="product col">
                                    <div class="product__inner overflow-hidden p-3 p-md-4d875">
                                        <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
                                            <div class="woocommerce-loop-product__thumbnail">
                                                <a href="/detail/book?isbn=${book.isbn}" class="d-block"><img src="${book.img}" class="img-fluid d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid" alt="image-description"></a>
                                            </div>
                                            <div class="woocommerce-loop-product__body product__body pt-3 bg-white">
                                                <div class="text-uppercase font-size-1 mb-1 text-truncate"><a href="/detail/book?isbn=${book.isbn}">${book.publisher}</a></div>
                                                <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-height-2 crop-text-2 h-dark"><a href="/detail/book?isbn=${book.isbn}">${book.title}</a></h2>
                                                <div class="font-size-2  mb-1 text-truncate"><a href="/search/book?type=3&keyword=${book.writer}&page=1" class="text-gray-700">${book.writer}</a></div>
                                                <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                                    <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span>${book.catgo}</span>                                                   
                                                </div>
                                            </div>
                                            <div class="product__hover d-flex align-items-center" id="">
                                                <a href="javascript:openPop('${book.isbn}')" class="text-uppercase text-dark h-dark font-weight-medium mr-auto" data-toggle="tooltip" data-placement="right" title="" data-original-title="대출 예약">
                                                    <span class="product__add-to-cart">대출 예약</span>
                                                    <span class="product__add-to-cart-icon font-size-4"><i class="flaticon-icon-126515"></i></span>
                                                </a>                                                
                                                <c:set var="loop_flag" value="false" />  
                                                  <c:choose>
                                                  <c:when test="${not empty member}">
                                                  <c:choose>
                                                  <c:when test="${not empty member.bookFavorite}">
                                                     <c:forEach items="${member.bookFavorite}" var="list" varStatus="status">    
                                                     <c:if test="${not loop_flag }">      
                                                   <c:choose>
                                                           <c:when test="${list.libraryBook.book_isbn == book.isbn}">
                                                              <a href="javascript:addFav('${book.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">                                            
                                                                  <svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                        </svg>
                                                              </a>
                                                              <c:set var="loop_flag" value="true" />
                                                           </c:when>                                                  
                                                           <c:otherwise>
                                                              <c:if test="${status.last}">
                                                                 <a href="javascript:addFav('${book.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">                                            
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
                                                     <a href="javascript:addFav('${book.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">                                            
                                                         <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                 <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                               </svg>
                                                     </a>
                                                  </c:otherwise>
                                                  </c:choose>                                                                 
                                              </c:when>
                                             <c:otherwise>
                                                   <a href="javascript:login()" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">
                                                                <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                       <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                     </svg>
                                                            </a>   
                                             </c:otherwise>
                                           </c:choose> 
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                            <!-- End Mockup Block -->
                        </div>
                        <div class="tab-pane fade" id="pills-two-example1" role="tabpanel" aria-labelledby="pills-two-example1-tab">
                            <!-- Mockup Block -->
                            <ul class="products list-unstyled mb-6">
                            <c:forEach items="${listResult.items}" var="book">
                                <li class="product product__list">
                                    <div class="product__inner overflow-hidden p-3 p-md-4d875">
                                        <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link row position-relative">
                                            <div class="col-md-auto woocommerce-loop-product__thumbnail mb-3 mb-md-0">
                                                <a href="/detail/book?isbn=${book.isbn}" class="d-block"><img src="${book.img}" class="img-fluid d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid" alt="image-description"></a>
                                            </div>
                                            <div class="col-md woocommerce-loop-product__body product__body pt-3 bg-white mb-3 mb-md-0">
                                                <div class="text-uppercase font-size-1 mb-1 text-truncate"><a href="/detail/book?isbn=${book.isbn}">${book.publisher}</a></div>
                                                <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 crop-text-2 h-dark"><a href="/detail/book?isbn=${book.isbn}" tabindex="0">${book.title}</a></h2>
                                                <div class="font-size-2  mb-2 text-truncate"><a href="/search/book?type=3&keyword=${book.writer}&page=1" class="text-gray-700">${book.writer}</a></div>
                                                <p class="font-size-2 mb-2 crop-text-2">${book.description}</p>
                                                <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                                    <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span>${book.catgo}</span>
                                                </div>
                                            </div>
                                            <div class="col-md-auto d-flex align-items-center">
                                                <a href="javascript:openPop('${book.isbn}')" class="text-uppercase text-dark h-dark font-weight-medium mr-4" data-toggle="tooltip" data-placement="right" title="" data-original-title="대출 예약">
                                                    <span class="product__add-to-cart">대출 예약</span>
                                                    <span class="product__add-to-cart-icon font-size-4"><i class="flaticon-icon-126515"></i></span>
                                                </a>           
                                                <c:set var="loop_flag" value="false" />  
                                                  <c:choose>
                                                  <c:when test="${not empty member}">
                                                  <c:choose>
                                                  <c:when test="${not empty member.bookFavorite}">
                                                     <c:forEach items="${member.bookFavorite}" var="list" varStatus="status">    
                                                     <c:if test="${not loop_flag }">      
                                                   <c:choose>
                                                           <c:when test="${list.libraryBook.book_isbn == book.isbn}">
                                                              <a href="javascript:addFav('${book.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">                                            
                                                                  <svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                        </svg>
                                                              </a>
                                                              <c:set var="loop_flag" value="true" />
                                                           </c:when>                                                  
                                                           <c:otherwise>
                                                              <c:if test="${status.last}">
                                                                 <a href="javascript:addFav('${book.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">                                            
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
                                                     <a href="javascript:addFav('${book.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">                                            
                                                         <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                 <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                               </svg>
                                                     </a>
                                                  </c:otherwise>
                                                  </c:choose>                                                                 
                                              </c:when>
                                             <c:otherwise>
                                                   <a href="javascript:login()" class="h-p-bg btn btn-outline-primary border-0 ${book.isbn}" id="${book.isbn}" style="display: inline-flex;">
                                                                <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                       <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                     </svg>
                                                            </a>   
                                             </c:otherwise>
                                           </c:choose>                                                                                     
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                            <!-- End Mockup Block -->
                        </div>
                    </div>
                    <!-- End Tab Content -->
					<script>	
					//인기, 판매량, 별점 순  세션					
						function clickPage(page, sort){
							//현재 type, keyword 저장해서 링크로 만듦
						    var para = document.location.href.split("?");
							var subTypeStart = para[1].indexOf('=', para[1].indexOf('type'))+1;
							var subTypeEnd = para[1].indexOf('&', para[1].indexOf('type'));
							if(subTypeEnd==-1){
								var type = para[1].substring(subTypeStart);
							}else{
								var type = para[1].substring(subTypeStart, subTypeEnd);
							}
							var subKeywordStart = para[1].indexOf('=', para[1].indexOf('keyword'))+1;
							var subKeywordEnd = para[1].indexOf('&', para[1].indexOf('keyword'));
							if(subKeywordEnd==-1){
								var keyword = para[1].substring(subKeywordStart);
							}else{
								var keyword = para[1].substring(subKeywordStart, subKeywordEnd);
							}							
							var show = sessionStorage.getItem("show");							
							if(typeof sort=="undefined"){
								sort = sessionStorage.getItem("sort");							
							}
							$(location).attr('href', "/search/book?sorted="+sort+"&type="+type+"&keyword="+keyword+"&page="+page+"&show="+show);
						}
						//탭 박스클릭시 유지 로직
						function clickTab(click){
							sessionStorage.setItem("option", click);						
						}
						var option = sessionStorage.getItem("option");							
						if(option=="true"){
							$("#pills-one-example1-tab").attr("class", "nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center active");
							$("#pills-one-example1-tab").attr("aria-selected", "true");
							$("#pills-one-example1").attr("class", "tab-pane fade show active");
							$("#pills-two-example1-tab").attr("class", "nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center");
							$("#pills-two-example1-tab").attr("aria-selected", "false");
							$("#pills-two-example1").attr("class", "tab-pane fade");							
						}else{
							$("#pills-one-example1-tab").attr("class", "nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center");
							$("#pills-one-example1-tab").attr("aria-selected", "false");
							$("#pills-one-example1").attr("class", "tab-pane fade");
							$("#pills-two-example1-tab").attr("class", "nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center active");
							$("#pills-two-example1-tab").attr("aria-selected", "true");
							$("#pills-two-example1").attr("class", "tab-pane fade show active");
						}						
						$('#selected_show').val("${listResult.ps}").prop("selected", true);
						$('#sorted').val("${listResult.sorted}").prop("selected", true);
						sessionStorage.setItem("show", $("#selected_show option:selected").val());
						sessionStorage.setItem("sort", $("#sorted option:selected").val());
						var para = document.location.href.split("?");
						var subTypeStart = para[1].indexOf('=', para[1].indexOf('type'))+1;
						var subTypeEnd = para[1].indexOf('&', para[1].indexOf('type'));
						if(subTypeEnd==-1){
							var type = para[1].substring(subTypeStart);
						}else{
							var type = para[1].substring(subTypeStart, subTypeEnd);
						}
						if(type==1){
							$('#search').val('${listResult.keyword}');	
						}
					</script>
					
                    <nav aria-label="Page navigation example">
                        <ul class="pagination pagination__custom justify-content-md-center flex-nowrap flex-md-wrap overflow-auto overflow-md-visble">
                        	<c:if test="${listResult.startpaging != 1 }">
                        			<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${listResult.startpaging-1});">Previous</a></li>
							</c:if>
						    <c:forEach begin="${listResult.startpaging }" end="${listResult.endpaging }" var="i">
						        <a href="list.do?ps=${ps}&cp=${i}">
						   			<c:choose>
						   			    <c:when test="${i==listResult.cp}">
						   			    	<li class="flex-shrink-0 flex-md-shrink-1 page-item active" aria-current="page"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${i});">${i}</a></li>						                	
						                </c:when>
						                <c:otherwise>
						                    <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${i});">${i}</a></li>
						                </c:otherwise>
									</c:choose>				
						    </c:forEach>
						    <c:if test="${listResult.endpaging != listResult.totalPageCount}">						
									<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${listResult.endpaging+1});">Next</a></li>
							</c:if>
                        </ul>
                    </nav>
                </div>
                <script>
                	function clickcatgo(catgo, selected){
                		var show = sessionStorage.getItem("show");
                		if(catgo==1){//국내도서
                			//1소설, 2에세이, 3참고서, 4인문학, 5예술/대중문화                			
                			$(location).attr('href', "/category/book?catgo=kor&catgoId="+selected+"&page=1&show="+show);
                		}else if(catgo==2){//외국도서
                			//1소설, 2어린이, 3일본도서, 4중국도서, 5예술/대중문화
                			$(location).attr('href', "/category/book?catgo=for&catgoId="+selected+"&page=1&show="+show);
                		}
                	}
                </script>
                <div id="secondary" class="sidebar widget-area order-1" role="complementary">
                    <div id="widgetAccordion">
                        <div id="woocommerce_product_categories-2" class="widget p-4d875 border woocommerce widget_product_categories">
                            <div id="widgetHeadingOne" class="widget-head">
                                <a class="d-flex align-items-center justify-content-between text-dark" href="#"
                                    data-toggle="collapse"
                                    data-target="#widgetCollapseOne"
                                    aria-expanded="true"
                                    aria-controls="widgetCollapseOne">

                                    <h3 class="widget-title mb-0 font-weight-medium font-size-3">국내도서</h3>

                                    <svg class="mins" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="2px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z" />
                                    </svg>

                                    <svg class="plus" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="15px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z" />
                                    </svg>
                                </a>
                            </div>

                            <div id="widgetCollapseOne" class="mt-3 widget-content collapse show"
                                aria-labelledby="widgetHeadingOne"
                                data-parent="#widgetAccordion">
                                <ul class="product-categories">
                                    <li class="cat-item cat-item-9 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(1,1);">소설</a></li>
                                    <li class="cat-item cat-item-69 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(1,2);">에세이</a></li>
                                    <li class="cat-item cat-item-65 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(1,3);">과학</a></li>
                                    <li class="cat-item cat-item-11 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(1,4);">인문학</a></li>
                                    <li class="cat-item cat-item-12"><a href="javascript:void(0);" onclick="clickcatgo(1,5);">예술/대중문화</a></li>                                    
                                </ul>
                            </div>
                        </div>
                        
                        <div id="Format" class="widget p-4d875 border">
                            <div id="widgetHeading23" class="widget-head">
                                <a class="d-flex align-items-center justify-content-between text-dark collapsed" href="#" data-toggle="collapse" data-target="#widgetCollapse23" aria-expanded="false" aria-controls="widgetCollapse23">

                                    <h3 class="widget-title mb-0 font-weight-medium font-size-3">외국도서</h3>

                                    <svg class="mins" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="2px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z"></path>
                                    </svg>

                                    <svg class="plus" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="15px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z"></path>
                                    </svg>
                                </a>
                            </div>

                            <div id="widgetCollapse23" class="mt-3 widget-content collapse" aria-labelledby="widgetHeading23" data-parent="#widgetAccordion" style="">
                                <ul class="product-categories">
                                    <li class="cat-item cat-item-9 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(2,1);">소설</a></li>
                                    <li class="cat-item cat-item-69 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(2,2);">어린이</a></li>
                                    <li class="cat-item cat-item-65 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(2,3);">일본도서</a></li>
                                    <li class="cat-item cat-item-65 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(2,4);">중국도서</a></li>
                                    <li class="cat-item cat-item-11 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(2,5);">예술/대중문화</a></li>                                    
                                </ul>
                            </div>
                        </div>
                        
                        <script>
						jQuery(function($) {
							$("#author").keydown(function(e) {		// 메인 페이지 중간 검색어 입력박스 엔터-키 처리
								if (e.keyCode == 13) {
									$("#author_button").trigger( "click" );
								}
							});
							$("#author_button").click(function(e) {					// 메인 페이지 검색어 입력박스 옆 전송버튼 클릭시
								let terms = $("#author").val().trim();								
								if (terms == '') {
									alert("검색어를 입력하세요.");
									return false;
								}
								var show = sessionStorage.getItem("show");
								if(sessionStorage.getItem("show")==null){
									show = 12;
								}
								$(location).attr('href', "/search/book?&type=3&keyword="+terms+"&page=1");
								return false;
							});
						});
					</script>

                        <div id="Authors" class="widget widget_search widget_author p-4d875 border">
                            <div id="widgetHeading21" class="widget-head">
                                <a class="d-flex align-items-center justify-content-between text-dark" href="#"
                                    data-toggle="collapse"
                                    data-target="#widgetCollapse21"
                                    aria-expanded="true"
                                    aria-controls="widgetCollapse21">

                                    <h3 class="widget-title mb-0 font-weight-medium font-size-3">작가검색</h3>

                                    <svg class="mins" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="2px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z" />
                                    </svg>

                                    <svg class="plus" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="15px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z" />
                                    </svg>
                                </a>
                            </div>

                            <div id="widgetCollapse21" class="mt-4 widget-content collapse show"
                                aria-labelledby="widgetHeading21"
                                data-parent="#widgetAccordion">
                                <form class="form-inline my-2 overflow-hidden">
                                    <div class="input-group flex-nowrap w-100">
                                        <div class="input-group-prepend">
                                            <i class="glph-icon flaticon-loupe py-2d75 bg-white-100 border-white-100 text-dark pl-3 pr-0 rounded-0"></i>
                                        </div>
                                        <input id="author" class="form-control bg-white-100 py-2d75 height-4 border-white-100 rounded-0" type="search" placeholder="작가검색" aria-label="Search" autocomplete="off">
                                    </div>
                                    <button id="author_button" class="btn btn-outline-success my-2 my-sm-0 sr-only" type="submit">검색</button>
                                </form>                                
                            </div>
                        </div>                                                           

                        <div id="Featuredbooks" class="widget p-4d875 border">
                            <div id="widgetHeading25" class="widget-head">
                                <a class="d-flex align-items-center justify-content-between text-dark" href="#"
                                    data-toggle="collapse"
                                    data-target="#widgetCollapse25"
                                    aria-expanded="true"
                                    aria-controls="widgetCollapse25">

                                    <h3 class="widget-title mb-0 font-weight-medium font-size-3">연관 DVD</h3>

                                    <svg class="mins" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="2px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z" />
                                    </svg>

                                    <svg class="plus" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="15px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z" />
                                    </svg>
                                </a>
                            </div>

                            <div id="widgetCollapse25" class="mt-5 widget-content collapse show"
                                aria-labelledby="widgetHeading25"
                                data-parent="#widgetAccordion">
                                <c:forEach items="${listResult.dvd}" var="dvd">
                                <div class="mb-5">
                                    <div class="media d-md-flex">
                                        <a class="d-block" href="/detail/book?isbn=${dvd.isbn}">
                                            <img class="img-fluid" src="${dvd.img}" alt="Image-Description">
                                        </a>                                     
                                    </div>
                                    <div class="media-body ml-3 pl-1">
                                            <h6 class="font-size-2 text-lh-md font-weight-normal">
                                                <a href="/detail/book?isbn=${dvd.isbn}">${dvd.title}</a>
                                            </h6>
                                            <span class="font-weight-medium">${dvd.writer}</span>
                                        </div>
                                </div>   
                                </c:forEach>     
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
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
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/vendor/jquery/dist/jquery.min.js"></script>
    <script src="/vendor/jquery-migrate/dist/jquery-migrate.min.js"></script>
    <script src="/vendor/popper.js/dist/umd/popper.min.js"></script>
    <script src="/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/vendor/slick-carousel/slick/slick.min.js"></script>
    <script src="/vendor/multilevel-sliding-mobile-menu/dist/jquery.zeynep.js"></script>
    <script src="/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>


    <!-- JS HS Components -->
    <script src="/js/hs.core.js"></script>
    <script src="/js/components/hs.unfold.js"></script>
    <script src="/js/components/hs.malihu-scrollbar.js"></script>
    <script src="/js/components/hs.header.js"></script>
    <script src="/js/components/hs.slick-carousel.js"></script>
    <script src="/js/components/hs.selectpicker.js"></script>
    <script src="/js/components/hs.show-animation.js"></script>

    <!-- JS Bookworm -->
    <!-- <script src="/js/bookworm.js"></script> -->
    <script>
        $(document).on('ready', function () {
            // initialization of unfold component
            $.HSCore.components.HSUnfold.init($('[data-unfold-target]'));

            // initialization of slick carousel
            $.HSCore.components.HSSlickCarousel.init('.js-slick-carousel');

            // initialization of header
            $.HSCore.components.HSHeader.init($('#header'));

            // initialization of malihu scrollbar
            $.HSCore.components.HSMalihuScrollBar.init($('.js-scrollbar'));

            // initialization of show animations
            $.HSCore.components.HSShowAnimation.init('.js-animation-link');

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
</body>
<div class="popup_layer" id="popup_layer" style="display: none;">
    	<div id="popup_box" class="popup_box">
    		<div style="height: 10px; width: 375px; float: top;">
    			<a href="javascript:closePop();"><img src="/img/ic_close.svg" class="m_header-banner-close" width="60px" height="60px"></a>
    		</div>
    		<!--팝업 컨텐츠 영역-->
    		<div class="popup_cont">
    			<div id="popup_primary" class="popup_content-area">
    				<main id="main" class="site-main ">
    					<div class="product">
    						<div class="container"> 
    							<div class="row">
    								<div class="col-lg-5 woocommerce-product-gallery woocommerce-product-gallery--with-images images">
    									<figure id="figure_slick" class="woocommerce-product-gallery__wrapper mb-0">
    										
    									</figure>
    								</div>
    								<div class="col-lg-7 pl-lg-0 summary entry-summary">
    									<div class="px-lg-4 px-xl-6">
    										<h1 id="book_title" class="product_title entry-title font-size-7 mb-3"></h1>
    										<div class="font-size-2 mb-4">
    											<span class="ml-3 font-weight-medium">지은이</span>
    											<span id="book_author" class="ml-2 text-gray-600"></span>
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
    											<span class="mr-6 mb-4 mb-md-0" id="popupFav" style="display:content;">
			   											
												</span> 
    											
    											<!-- <div class="px-lg-4 px-xl-7 py-5 d-flex align-items-center">
			   										<ul class="list-unstyled nav">
			   											                                                                                   												         
			   										</ul>
			   									</div> -->    											
    										</div>    										
    										<div class="woocommerce-product-details__short-description font-size-2 mb-4">
    											<p id="book_desc" class=""></p>
    										</div>
    										
    										 <p class="price font-size-22 font-weight-medium mb-4">                                      
											     <span class="woocommerce-Price-amount amount">                                          
											         <span class="woocommerce-Price-currencySymbol"></span>카테고리                          
											     </span> <div></div>                                                                 
											     <span class="woocommerce-Price-amount amount">                                          
											         <span id="book_catgo" class="woocommerce-Price-currencySymbol"></span>
											     </span>       
											                                                                           
											   
											 
											 <div class="mb-4">                                                                 
    											<label class="form-label font-size-2 font-weight-medium mb-3">상태 &nbsp;</label>
    											<!-- 대출가능 도서 label -->
    											<label id="rental_book_count"></label>
    											<!--  도서위치 label -->
    											<br>
    											<label id="rental_book_fac"></label>
    										</div>
    										
    										<form action="/rental.ok" id="rental" name="rental" class="cart d-md-flex align-items-center" method="post">
    											    										
    										</form>							                                                                                  
    									</div>    									
    								</div>
    							</div>
    						</div>
    					</div> 
    				</main>
    			</div>
    		</div>
    		<div class="popup_btn" style="float: bottom; margin-top: 20px;">
	          <a href="javascript:closePop();">닫기</a>   
	      </div>
    	</div>
    </div>
    <div id="btn_script"></div>
    
    <!-- Popup -->
    <link rel="stylesheet" type="text/css" href="/css/popup.css">
    <script src="/js/popup.js" type="text/javascript"></script>    
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
</html>