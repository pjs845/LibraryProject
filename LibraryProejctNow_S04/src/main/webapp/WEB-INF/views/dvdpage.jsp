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
                            <h1 class="page-title font-size-3 font-weight-medium m-0 text-lh-lg">DVD관리 리스트</h1>
                            <nav class="woocommerce-breadcrumb font-size-2">
                                <a class="btn btn-blue btn-sm-wide transition-3d-hover" href="/admin/dvd/add">DVD추가</a>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row mb-lg-5 mb-xl-0">
                    <div class="col-lg-4 col-xl-3">
                        <div id="SidebarAccordion">
                            <div id="Search" class="widget p-4 border">
                                <div id="Heading21">
                                    <a class="d-flex align-items-center justify-content-between collapse-link text-dark" href="#"
                                        data-toggle="collapse"
                                        data-target="#Collapse21"
                                        aria-expanded="true"
                                        aria-controls="Collapse21">

                                        <h3 class="title mb-0 font-weight-medium font-size-3">검색</h3>

                                        <svg class="minus" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="2px">
                                            <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z" />
                                        </svg>

                                        <svg class="plus" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="15px">
                                            <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z" />
                                        </svg>
                                    </a>
                                </div>
                                
                                <script>
									jQuery(function($) {
										$("#admin_search").keydown(function(e) {		// 메인 페이지 중간 검색어 입력박스 엔터-키 처리
											if (e.keyCode == 13) {												
												$("#admin_search_button").trigger( "click" );
											}
										});
										$("#admin_search_button").click(function(e) {					// 메인 페이지 검색어 입력박스 옆 전송버튼 클릭시
											let keyword = $("#admin_search").val().trim();								
											if (keyword == '') {
												alert("검색어를 입력하세요.");
												return false;
											}																						
											$(location).attr('href', "/admin/dvd/search?keyword="+keyword+"&cp=1&ps=10&searchModeStr=T");
											return false;
										});
									});
								</script>

                                <div id="Collapse21" class="mt-4 collapse show"
                                    aria-labelledby="Heading21"
                                    data-parent="#SidebarAccordion">
                                    <form class="form-inline my-2 my-xl-0 overflow-hidden">
                                        <div class="input-group flex-nowrap w-100">
                                            <div class="input-group-prepend">
                                                <i class="glph-icon flaticon-loupe py-2d75 bg-white-100 border-white-100 text-dark pl-3 pr-0 rounded-0"></i>
                                            </div>
                                            <input id="admin_search" class="form-control bg-white-100 py-2d75 height-4 border-white-100 rounded-0" type="search" placeholder="통합검색" aria-label="Search" autocomplete="off">
                                        </div>
                                        <button id="admin_search_button" class="btn btn-outline-success my-2 my-sm-0 sr-only" type="submit">검색</button>
                                    </form>
                                </div>
                            </div>                           
                        </div>
                    </div>
                    <div class="col-lg-8 col-xl-9">
                    <c:forEach items="${listResult.dvdListResult.items}" var="dvd">
                        <div class="d-md-flex align-items-center mb-5">
                            <span class="d-block mb-3 mb-md-0">
                                <img class="img-fluid" src="${dvd.dvd_img}" alt="Image-Description" width=150px; height=150px;>
                            </span>
                            <div class="ml-md-8">
                                <div class="mb-2">
                                    <span class="font-size-2">${dvd.dvd_director}</span>
                                </div>
                                <h6 class="font-size-7 crop-text-2 font-weight-medium text-lh-1dot4" style="width:400px;">
                                    <span>${dvd.dvd_title}</span>
                                </h6>
                                <p class="font-size-2 text-secondary-gray-700">감독 : ${dvd.dvd_director}</p>                                
                                <div class="font-size-2 text-secondary-gray-700">                                                                        
                                    <span class="ml-3">DVD위치 : ${listResult.facilityList[dvd.f_num-1]}</span>                                    
                                </div>                                
                            </div>
                            <a class="btn btn-primary btn-sm-wide transition-3d-hover" href="/admin/dvd/update?dvd_num=${dvd.dvd_num}">수정</a>
                            &nbsp;                            
                            <a class="btn btn-primary-red btn-sm-wide transition-3d-hover" href="javascript:deleteDvd(${dvd.dvd_num});"">삭제</a>
                        </div>  
                        <hr>
                      </c:forEach>             
                    </div>
                </div>
                <script>
	                function clickPage(cp, ps){
						var search = getKeyword("searchModeStr");											
						if(search!=""){ //검색했을 때
							var catgo = getKeyword("catgo");
							var keyword = getKeyword("keyword");	
							$(location).attr('href', "/admin/dvd/search?catgo="+catgo+"&cp="+cp+"&ps="+ps+"&keyword="+keyword+"&searchModeStr="+search);
						}else{ //검색 안했을 때							
							$(location).attr('href', "/admin/dvd/search?cp="+cp+"&ps="+ps);							
						}
						
					}
	                function getKeyword(keyword){
	                	var para = document.location.href.split("?");	                	           
	                	var data;	           
	                	var subKeywordStart;
	                	var subKeywordEnd;
						if(para.length==2){
							var index = para[1].indexOf(keyword);
		                	if(index!=-1){
		                		subKeywordStart = para[1].indexOf('=', para[1].indexOf(keyword))+1;
								subKeywordEnd = para[1].indexOf('&', para[1].indexOf(keyword));	
								if(subKeywordEnd==-1){
									data = para[1].substring(subKeywordStart);
								}else{
									data = para[1].substring(subKeywordStart, subKeywordEnd);
								}	
		                	}else{
		                		data = "";
		                	}	
	                	}else{
	                		data = "";	
	                	}	                	               																						
						return data;
	                }
                </script>
                <nav aria-label="Page navigation example">
                    <ul class="pagination pagination__custom justify-content-md-center flex-nowrap flex-md-wrap overflow-auto overflow-md-visble">
                        	<c:if test="${listResult.dvdListResult.startpaging != 1 }">
                        			<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${listResult.dvdListResult.startpaging-1}, 10);">이전</a></li>
							</c:if>
						    <c:forEach begin="${listResult.dvdListResult.startpaging }" end="${listResult.dvdListResult.endpaging }" var="i">
						        <a href="list.do?ps=${ps}&cp=${i}">
						   			<c:choose>
						   			    <c:when test="${i==listResult.dvdListResult.cp}">
						   			    	<li class="flex-shrink-0 flex-md-shrink-1 page-item active" aria-current="page"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${i}, 10);">${i}</a></li>						                	
						                </c:when>
						                <c:otherwise>
						                    <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${i}, 10);">${i}</a></li>
						                </c:otherwise>
									</c:choose>				
						    </c:forEach>
						    <c:if test="${listResult.dvdListResult.endpaging != listResult.dvdListResult.totalPageCount}">						
									<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${listResult.dvdListResult.endpaging+1}, 10);">다음</a></li>
							</c:if>
                        </ul>
                </nav>
            </div>
        </div>
    </main>
    <!-- ====== END MAIN CONTENT ===== -->
	<script>
		function deleteDvd(dvd_num){			
			var result = confirm("정말로 삭제하시겠습니까?");
			if(result){
				$(location).attr('href', "/admin/dvd/del?dvd_num="+dvd_num);
			}else{
				
			}
		}
	</script>
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
