<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Title -->
    <title>Blog-v3 | Bookworm</title>

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
<body>
    <!--===== HEADER CONTENT =====-->
    <%@ include file="/WEB-INF/views/subheader.jsp" %>
    <!--===== END HEADER CONTENT =====-->

    <!-- ====== MAIN CONTENT ===== -->
    <main id="content">
        <div class="mb-5 mb-lg-8 pb-xl-1">
            <div class="mb-5 mb-lg-8 pb-xl-1">
                <div class="page-header border-bottom">
                    <div class="container">
                        <div class="d-md-flex justify-content-between align-items-center py-4">
                            <h1 class="page-title font-size-3 font-weight-medium m-0 text-lh-lg">추천도서 리스트</h1>
                            <nav class="woocommerce-breadcrumb font-size-2">
                                
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row mb-lg-5 mb-xl-0">                    
                    <div class="col-lg-8 col-xl-9">
                    <c:forEach items="${blr.bookList}" var="list">
                        <div class="d-md-flex align-items-center mb-5">
                            <span class="d-block mb-3 mb-md-0">
                                <img class="img-fluid" src="${list.book_img}" alt="Image-Description" width=150px; height=150px;>
                            </span>
                            <div class="ml-md-8">
                                <div class="mb-2">
                                </div>
                                <h6 class="font-size-7 crop-text-2 font-weight-medium text-lh-1dot4" style="width:400px;">
                                    <span><a href="/detail/book?isbn=${list.book_isbn}">${list.book_title}</a></span>
                                </h6>
                                <p class="font-size-2 text-secondary-gray-700">저자 : ${list.book_writer}</p>
                                <p class="font-size-2 text-secondary-gray-700">출판사 : ${list.book_publisher}</p>
                                <div class="font-size-2 text-secondary-gray-700">                                                                                                     
                                </div>                                
                            </div>                           
                        </div>  
                        <hr>
                     </c:forEach>
                    </div>
                </div>
                <script>                
	                function clickPage(cp, ps){																	
						$(location).attr('href', "/recommend/more?cp="+cp+"&ps="+ps);
						
					}	                
                </script>
                <nav aria-label="Page navigation example">
                    <ul class="pagination pagination__custom justify-content-md-center flex-nowrap flex-md-wrap overflow-auto overflow-md-visble">
                        	<c:if test="${blr.startpaging != 1}">
                        			<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${blr.startpaging-1},10)">이전</a></li>
							</c:if>
						    <c:forEach begin="${blr.startpaging}" end="${blr.endpaging}" var="i">
						        <a href="list.do?ps=${ps}&cp=${i}">
						   			<c:choose>
						   			    <c:when test="${i==blr.cp}">
						   			    	<li class="flex-shrink-0 flex-md-shrink-1 page-item active" aria-current="page"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${i},10)">${i}</a></li>						                	
						                </c:when>
						                <c:otherwise>
						                    <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${i},10)">${i}</a></li>
						                </c:otherwise>
									</c:choose>				
						    </c:forEach>
						    <c:if test="${blr.endpaging != blr.totalPageCount}">						
									<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${endpaging+1},10)">다음</a></li>
							</c:if>
                        </ul>
                </nav>
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
