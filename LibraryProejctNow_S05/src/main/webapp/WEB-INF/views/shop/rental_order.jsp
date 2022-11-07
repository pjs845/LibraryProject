<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Title -->
    <title>예약도서</title>

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
</head>
<body>
    <!--===== HEADER CONTENT =====-->
    <%@ include file="/WEB-INF/views/subheader.jsp" %>
    <!--===== END HEADER CONTENT =====-->

    <!-- ====== MAIN CONTENT ===== -->
    <main id="content">
        <div class="bg-gray-200 space-bottom-3">
            <div class="container">
                <div class="py-5 py-lg-7">
                    <h6 class="font-weight-medium font-size-7 text-center mt-lg-1">예약도서</h6>
                </div>
                <div class="max-width-890 mx-auto">
                    <div class="bg-white pt-6 border">
                        <h6 class="font-size-3 font-weight-medium text-center mb-4 pb-xl-1">저희 도서관을 이용해주셔서 감사합니다.</h6>
                        <div class="border-bottom mb-5 pb-5 overflow-auto overflow-md-visible">
                            <div class="pl-3">
                                <table class="table table-borderless mb-0 ml-1">
                                    <thead>
                                        <tr>
                                          <th scope="col" class="font-size-2 font-weight-normal py-0">예약번호:</th>
                                          <th scope="col" class="font-size-2 font-weight-normal py-0">예약날짜:</th>
                                          <th scope="col" class="font-size-2 font-weight-normal py-0 text-md-center">반납날짜: </th>
                                          <th scope="col" class="font-size-2 font-weight-normal py-0 text-md-right pr-md-9">    회원번호:</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                          <th scope="row" class="pr-0 py-0 font-weight-medium">${rental.rbook.ren_num} 번</th>
                                          <td class="pr-0 py-0 font-weight-medium">${rental.rbook.ren_borrow}</td>
                                          <td class="pr-0 py-0 font-weight-medium text-md-center">${rental.rbook.ren_return}</td>
                                          <td class="pr-md-4 py-0 font-weight-medium text-md-right">${rental.rbook.mem_num} 번</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="border-bottom mb-5 pb-6">
                            <div class="px-3 px-md-4">
                                <div class="ml-md-2">
                                    <h6 class="font-size-3 on-weight-medium mb-4 pb-1">도서 상세정보</h6>
                                    <div class="d-flex justify-content-between mb-4">
                                        <div class="d-flex align-items-baseline">
                                            <div>
                                                <h6 class="font-size-2 font-weight-normal mb-1">도서제목: </h6>
                                                <span class="font-size-2 text-gray-600"></span>
                                            </div>
                                            <span class="font-size-2 ml-4 ml-md-8"></span>
                                        </div>
                                        <span class="font-weight-medium font-size-2">${rental.book.book_title}</span>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                        <div class="d-flex align-items-baseline">
                                            <div>
                                                <h6 class="font-size-2 font-weight-normal mb-1">저자:</h6>
                                                <span class="font-size-2 text-gray-600"></span>
                                            </div>
                                            <span class="font-size-2 ml-2 ml-md-6"></span>
                                        </div>
                                        <span class="font-weight-medium font-size-2">${rental.book.book_writer}</span>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                        <div class="d-flex align-items-baseline">
                                            <div>
                                                <h6 class="font-size-2 font-weight-normal mb-1">출판사:</h6>
                                                <span class="font-size-2 text-gray-600"></span>
                                            </div>
                                            <span class="font-size-2 ml-2 ml-md-6"></span>
                                        </div>
                                        <span class="font-weight-medium font-size-2">${rental.book.book_publisher}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="px-3 pl-md-5 pr-md-4 mb-6 pb-xl-1">
                            <div class="row row-cols-1 row-cols-md-2">
                                <div class="col">
                                    <div class="mb-6 mb-md-0">
                                        <h6 class="font-weight-medium font-size-22 mb-3">
                                        </h6>
                                        <address class="d-flex flex-column mb-0">도서위치
                                            <span class="text-gray-600 font-size-2">파스텔 도서관</span>
                                            <span class="text-gray-600 font-size-2">${rental.floor}층 ${rental.loc}</span>                                            
                                        </address>
                                    </div>
                                </div>
                                <div class="col">
                                    <h6 class="font-weight-medium font-size-22 mb-3">도서관 오시는 길
                                    </h6>
                                    <address class="d-flex flex-column mb-0">
                                        <span class="text-gray-600 font-size-2">가산디지털단지역 6번출구</span>
                                        <span class="text-gray-600 font-size-2">좌측횡단보도 건너 좌측으로 10m 가시면 삼거리가 나옵니다.</span>
                                        <span class="text-gray-600 font-size-2"> 삼거리에서 우측 방향으로 직진 </span>
                                        <span class="text-gray-600 font-size-2">사거리 대각선방향에 우리은행 건물입니다.</span>                                        
                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- ====== END MAIN CONTENT ===== -->

    <!-- ========== FOOTER ========== -->
    <%@ include file="/WEB-INF/views/footer.jsp" %>
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
</html>
