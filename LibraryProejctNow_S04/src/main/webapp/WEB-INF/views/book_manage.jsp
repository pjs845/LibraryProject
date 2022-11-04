<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Title -->
    <title>Blog-v2 | Bookworm</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="shortcut icon" href="../../assets/img/favicon.png">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="../../assets/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="../../assets/vendor/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="../../assets/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="../../assets/vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="../../assets/vendor/slick-carousel/slick/slick.css"/>
    <link rel="stylesheet" href="../../assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">

    <!-- CSS Bookworm Template -->
    <link rel="stylesheet" href="../../assets/css/theme.css">
</head>
<body>
    <!--===== HEADER CONTENT =====-->
    <%@ include file="/WEB-INF/views/subheader.jsp" %>
    <!-- ====== END HEADER CONTENT ===== -->

    <!-- ====== MAIN CONTENT ===== -->
    <main id="content">
        <div class="mb-5 mb-lg-8">
            <div class="mb-5">
                <div class="mb-5 mb-lg-7 pb-xl-1">
                    <div class="page-header border-bottom">
                        <div class="container">
                            <div class="d-md-flex justify-content-between align-items-center py-4">
                                <h1 class="page-title font-size-3 font-weight-medium m-0 text-lh-lg">Blog List</h1>
                                <nav class="woocommerce-breadcrumb font-size-2">
                                    <a href="../home/index.html" class="h-primary">Home</a>
                                    <span class="breadcrumb-separator mx-1"><i class="fas fa-angle-right"></i></span>
                                    <span>Blog List</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <ul class="nav justify-content-md-center nav-gray-700 mb-5 flex-nowrap flex-md-wrap overflow-auto overflow-md-visible" id="featuredBooks" role="tablist">
                        <li class="nav-item mx-5 mb-1 flex-shrink-0 flex-md-shrink-1">
                            <a class="nav-link px-0 active" id="rental-tab" data-toggle="tab" href="#rentaltab" role="tab" aria-controls="rentaltab" aria-selected="true">대출도서
                            </a>
                        </li>
                        <li class="nav-item mx-5 mb-1 flex-shrink-0 flex-md-shrink-1">
                            <a class="nav-link px-0" id="request-tab" data-toggle="tab" href="#requesttab" role="tab" aria-controls="requesttab" aria-selected="false">신청도서</a>
                        </li>
                        <li class="nav-item mx-5 mb-1 flex-shrink-0 flex-md-shrink-1">
                            <a class="nav-link px-0" id="favorite-tab" data-toggle="tab" href="#favoritetab" role="tab" aria-controls="favoritetab" aria-selected="false">찜목록</a>
                        </li>                        
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="rentaltab" role="tabpanel" aria-labelledby="rental-tab">
                            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3">
                                <c:forEach items="${map.rentalList.items}" var="list">
                                <div class="col">
                                    <div>
                                        <a class="d-block mb-3">
                                            <img class="img-fluid" src="${list.book.book_img}" alt="Image-Description" style="width:200px; height: 250px;">
                                        </a>
                                        <div class="mb-2">
                                            <a class="font-size-2">${list.book.book_publisher}</a>
                                        </div>
                                        <h6 class="font-size-26 crop-text-2 font-weight-medium text-lh-1dot4">
                                            <a>${list.book.book_title }</a>
                                        </h6>
                                        <p class="font-size-2 text-secondary-gray-700">작가 : ${list.book.book_writer}</p>
                                        <div class="font-size-2 text-secondary-gray-700">
                                            <span>대여일 : ${list.ren_borrow} &nbsp; 반납예정일 : ${list.ren_return }</span>
                                            <br>
                                            <c:choose>
                                            	<c:when test="${list.ren_stat==0}">
                                            		<span>대출상태 : <span style="color:red;">예약중</span></span>
                                            	</c:when>    
                                            	<c:when test="${list.ren_stat==1}">
                                            		<span>대출상태 : <span style="color:orange;">대출중</span></span>
                                            	</c:when>                                  
                                            	<c:otherwise>
                                            		<span>대출상태 : <span style="color:green;">반납완료</span></span>
                                            	</c:otherwise>    
                                            </c:choose>                                            
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                            <br>                            
				            <nav aria-label="Page navigation example">
			                    <ul class="pagination pagination__custom justify-content-md-center flex-nowrap flex-md-wrap overflow-auto overflow-md-visble">
			                        	<c:if test="${map.rentalList.startpaging != 1}">
			                        			<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="rentalClickPage(${map.rentalList.startpaging-1}, 6, 1, ${member.mem_num})">이전</a></li>
										</c:if>
									    <c:forEach begin="${map.rentalList.startpaging}" end="${map.rentalList.endpaging}" var="i">
									        <a href="list.do?ps=${ps}&cp=${i}">
									   			<c:choose>
									   			    <c:when test="${i==map.rentalList.cp}">
									   			    	<li class="flex-shrink-0 flex-md-shrink-1 page-item active" aria-current="page"><a class="page-link" href="javascript:void(0);" onclick="rentalClickPage(${i},6, 1, ${member.mem_num})">${i}</a></li>						                	
									                </c:when>
									                <c:otherwise>
									                    <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="rentalClickPage(${i},6, 1, ${member.mem_num})">${i}</a></li>
									                </c:otherwise>
												</c:choose>				
									    </c:forEach>
									    <c:if test="${map.rentalList.endpaging != map.rentalList.totalPageCount}">						
												<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="rentalClickPage(${endpaging+1},6, 1, ${member.mem_num})">다음</a></li>
										</c:if>
			                        </ul>
			                </nav>
                        </div>
                        <div class="tab-pane fade" id="requesttab" role="tabpanel" aria-labelledby="request-tab">
                            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3">
                                <c:forEach items="${map.requestList.items}" var="list">
                                <div class="col">
                                    <div>
                                        <a class="d-block mb-3" >
                                            <img class="img-fluid" src="/img/books_img.png" alt="Image-Description" style="width:200px; height: 250px;"> 
                                        </a>
                                        <div class="mb-2">
                                            <a class="font-size-2" >도서 ISBN : ${list.br_isbn}</a>
                                        </div>
                                        <h6 class="font-size-26 crop-text-2 font-weight-medium text-lh-1dot4">
                                            <a>${list.br_title }</a>
                                        </h6>
                                        <p class="font-size-2 text-secondary-gray-700">작가 : ${list.br_writer}</p>
                                        <div class="font-size-2 text-secondary-gray-700">
                                            <c:choose>
                                            	<c:when test="${list.br_stat==0}">
                                            		<span>신청상태 : <span style="color:red;">신청대기중</span></span>
                                            	</c:when>    
                                            	<c:when test="${list.br_stat==1}">
                                            		<span>신청상태 : <span style="color:green;">신청승인</span></span>
                                            	</c:when>                                                                              	
                                            </c:choose>                                       
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                            <br>                            
				            <nav aria-label="Page navigation example">
			                    <ul class="pagination pagination__custom justify-content-md-center flex-nowrap flex-md-wrap overflow-auto overflow-md-visble">
			                        	<c:if test="${map.requestList.startpaging != 1}">
			                        			<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="requestClickPage(${map.requestList.startpaging-1},6 ,2 , ${member.mem_num})">이전</a></li>
										</c:if>
									    <c:forEach begin="${map.requestList.startpaging}" end="${map.requestList.endpaging}" var="i">
									        <a href="list.do?ps=${ps}&cp=${i}">
									   			<c:choose>
									   			    <c:when test="${i==map.requestList.cp}">
									   			    	<li class="flex-shrink-0 flex-md-shrink-1 page-item active" aria-current="page"><a class="page-link" href="javascript:void(0);" onclick="requestClickPage(${i},6, 2, ${member.mem_num})">${i}</a></li>						                	
									                </c:when>
									                <c:otherwise>
									                    <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="requestClickPage(${i},6, 2, ${member.mem_num})">${i}</a></li>
									                </c:otherwise>
												</c:choose>				
									    </c:forEach>
									    <c:if test="${map.requestList.endpaging != map.requestList.totalPageCount}">						
												<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="requestClickPage(${endpaging+1},6, 2, ${member.mem_num})">다음</a></li>
										</c:if>
			                        </ul>
			                </nav>
                        </div>
                        <div class="tab-pane fade" id="favoritetab" role="tabpanel" aria-labelledby="favorite-tab">
                            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3">
                                <c:forEach items="${map.favoriteList.items}" var="list">                                
                                <div class="col">
                                    <div>
                                        <a class="d-block mb-3"">
                                            <img class="img-fluid" src="${list.libraryBook.book_img}" alt="Image-Description" style="width:200px; height:250px;">
                                        </a>
                                        <div class="mb-2">
                                            <a class="font-size-2" href="../blog/blog-single.html">${list.libraryBook.book_publisher}</a>
                                        </div>
                                        <h6 class="font-size-26 crop-text-2 font-weight-medium text-lh-1dot4">
                                            <a>${list.libraryBook.book_title}</a>
                                        </h6>
                                        <p class="font-size-2 text-secondary-gray-700">${list.libraryBook.book_writer}</p>
                                        <div class="font-size-2 text-secondary-gray-700">
                                        	<a class="btn btn-primary-red btn-sm-wide transition-3d-hover" style="color:white;" href="javascript:favDel(${list.libraryBook.book_isbn}, ${member.mem_num}, ${map.favoriteList.cp})">찜 도서  삭제</a>                                            
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                            <br>                            
				            <nav aria-label="Page navigation example">
			                    <ul class="pagination pagination__custom justify-content-md-center flex-nowrap flex-md-wrap overflow-auto overflow-md-visble">
			                        	<c:if test="${map.favoriteList.startpaging != 1}">
			                        			<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="favClickPage(${map.favoriteList.startpaging-1},6, 3, ${member.mem_num})">이전</a></li>
										</c:if>
									    <c:forEach begin="${map.favoriteList.startpaging}" end="${map.favoriteList.endpaging}" var="i">
									        <a href="list.do?ps=${ps}&cp=${i}">
									   			<c:choose>
									   			    <c:when test="${i==map.favoriteList.cp}">
									   			    	<li class="flex-shrink-0 flex-md-shrink-1 page-item active" aria-current="page"><a class="page-link" href="javascript:void(0);" onclick="favClickPage(${i},6, 3, ${member.mem_num})">${i}</a></li>						                	
									                </c:when>
									                <c:otherwise>
									                    <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="favClickPage(${i},6, 3, ${member.mem_num})">${i}</a></li>
									                </c:otherwise>
												</c:choose>				
									    </c:forEach>
									    <c:if test="${map.favoriteList.endpaging != map.favoriteList.totalPageCount}">						
												<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="favClickPage(${endpaging+1},6, 3, ${member.mem_num})">다음</a></li>
										</c:if>
			                        </ul>
			                </nav>
                        </div>
                        
                    </div>
                </div>
            </div>            
        </div>
    </main>
    <!-- ====== END MAIN CONTENT ===== -->
    <script>
	    var para = document.location.href.split("?");
		var subTypeStart = para[1].indexOf('=', para[1].indexOf('category'))+1;
		var subTypeEnd = para[1].indexOf('&', para[1].indexOf('category'));
		if(subTypeEnd==-1){
			var catgo = para[1].substring(subTypeStart);
		}else{
			var catgo = para[1].substring(subTypeStart, subTypeEnd);
		}
		 if(catgo == 1) { //대출도서
			console.log("1");
			$("#rental-tab").attr("class", "nav-link px-0 active");
	    	$("#request-tab").attr("class", "nav-link px-0");
	    	$("#favorite-tab").attr("class", "nav-link px-0");
	    	$("#rentaltab").attr("class", "tab-pane fade active show");
	    	$("#requesttab").attr("class", "tab-pane fade");
	    	$("#favoritetab").attr("class", "tab-pane fade");
		}else if(catgo == 2) { //신청도서 
			console.log("2");
			$("#rental-tab").attr("class", "nav-link px-0 ");
	    	$("#request-tab").attr("class", "nav-link px-0 active");
	    	$("#favorite-tab").attr("class", "nav-link px-0");
	    	$("#rentaltab").attr("class", "tab-pane fade");
	    	$("#requesttab").attr("class", "tab-pane fade active show");
	    	$("#favoritetab").attr("class", "tab-pane fade");
		}else { //찜 목록
			console.log("3");
			$("#rental-tab").attr("class", "nav-link px-0 ");
	    	$("#request-tab").attr("class", "nav-link px-0");
	    	$("#favorite-tab").attr("class", "nav-link px-0 active");
	    	$("#rentaltab").attr("class", "tab-pane fade");
	    	$("#requesttab").attr("class", "tab-pane fade");
	    	$("#favoritetab").attr("class", "tab-pane fade active show");
		}    	
    </script>
    <script src="/js/rental_paging.js"></script>
    <script src="/js/request_paging.js"></script>    
    <script src="/js/favorite_paging.js"></script>    
    <script>
    	function favDel(isbn, memnum, cp){
    		var result = confirm("찜 도서를 삭제하시겠습니까?");
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
    				favClickPage(cp, 6, 3, memnum);
    			}
    		});
    	}
    </script>

    <!-- ========== FOOTER ========== -->
    	<%@ include file="/WEB-INF/views/footer.jsp" %>
    <!-- ========== END FOOTER ========== -->

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../../assets/vendor/jquery/dist/jquery.min.js"></script>
    <script src="../../assets/vendor/jquery-migrate/dist/jquery-migrate.min.js"></script>
    <script src="../../assets/vendor/popper.js/dist/umd/popper.min.js"></script>
    <script src="../../assets/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="../../assets/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="../../assets/vendor/slick-carousel/slick/slick.min.js"></script>
    <script src="../../assets/vendor/multilevel-sliding-mobile-menu/dist/jquery.zeynep.js"></script>
    <script src="../../assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>


    <!-- JS HS Components -->
    <script src="../../assets/js/hs.core.js"></script>
    <script src="../../assets/js/components/hs.unfold.js"></script>
    <script src="../../assets/js/components/hs.malihu-scrollbar.js"></script>
    <script src="../../assets/js/components/hs.header.js"></script>
    <script src="../../assets/js/components/hs.slick-carousel.js"></script>
    <script src="../../assets/js/components/hs.selectpicker.js"></script>
    <script src="../../assets/js/components/hs.show-animation.js"></script>

    <!-- JS Bookworm -->
    <!-- <script src="../../assets/js/bookworm.js"></script> -->
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
