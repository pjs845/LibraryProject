//팝업 띄우기
function openPop(info) {
    document.getElementById("popup_layer").style.display = "block";	
    $.ajax({
		url: "/popup/read.json", 
		type: "GET", 
		data: {isbn: info}, 
		success: function(data){
			if(!data){
				alert("존재하지않는 SEQ");
				return false;
			}			
			//검색 API 책
			var book_title = data.book.title;
			var book_author = data.book.writer;
			var book_desc = data.book.description;
			var book_catgo = data.book.catgo;
			var book_img = data.book.img;
			var book_isbn = data.book.isbn;
			
			// DB에 있는 책
			var book_lbook = data.book.lbook;
			var lbook_count = 0;
			var lbook_num = 0; 
			var lbook_loc = data.rbook_loc;		
			var member = data.member;
			var mem_num = 0;
			if(member != null){
				mem_num = member.mem_num;
			}
			if(book_lbook == null){
				lbook_count = 0;
				lbook_num = 0;
			}else{
				lbook_count = book_lbook.book_count;
				lbook_num = book_lbook.book_num;
			}			
			var rbook_count = data.rbook_count;	
			
			$('#popupFav').empty();
	         var popFavHeart = "";         
	         if(mem_num != 0){ //로그인 했을때
	            if(member.bookFavorite.length>0){
	               for(var i=0; i<member.bookFavorite.length; i++){               
	                  if(member.bookFavorite[i].libraryBook.book_isbn == book_isbn){
	                     popFavHeart += '<a href="javascript:addFav('+book_isbn+')" class="h-p-bg btn btn-outline-primary border-0 '+book_isbn+'-" id="'+book_isbn+'" style="display: inline-flex;"">                                            <svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg></a>';
	                     break;
	                  }
	                  if(i==member.bookFavorite.length-1){
	                     popFavHeart += '<a href="javascript:addFav('+book_isbn+')" class="h-p-bg btn btn-outline-primary border-0 '+book_isbn+'-" id="'+book_isbn+'" style="display: inline-flex;"">                                            <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg></a>';
	                     break;
	                  }
	               }
	            }else{
	               popFavHeart += '<a href="javascript:addFav('+book_isbn+')" class="h-p-bg btn btn-outline-primary border-0 '+book_isbn+'-" id="'+book_isbn+'" style="display: inline-flex;"">                                            <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg></a>';
	            }             
	         }else{// 로그인 안했을때
	            popFavHeart += '<a href="javascript:login()" class="h-p-bg btn btn-outline-primary border-0 '+book_isbn+'-" id="'+book_isbn+'" style="display: inline-flex;""><svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg></a>';
	         }
	         $('#popupFav').append(popFavHeart);
			
        //$('#popup_cont').empty();
        //$('#popup_cont').append(insertUI);       
        $('#book_title').empty()
        $('#book_title').append(book_title);
        
        $('#book_author').empty()
        $('#book_author').append(book_author);
        $('#book_desc').empty()
        $('#book_desc').append(book_desc);
        $('#book_catgo').empty()
        $('#book_catgo').append(book_catgo);
          
        
        var figure = ""; 
        figure += '<div class="js-slick-carousel u-slick slick-initialized slick-slider slick-dotted" data-pagi-classes="text-center u-slick__pagination my-4">';
        figure += '<div class="slick-list draggable"><div class="slick-track" style="opacity: 1; display:grid; transform: translate3d(0px, 0px, 0px);"><div id="book_img" class="js-slide slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style=" height: auto;" tabindex="0" role="tabpanel" id="slick-slide00" aria-describedby="slick-slide-control00">';
        figure += '<img src="'+book_img+'" alt="Image Description" class="mx-auto img-fluid">' ;
        figure += '</div></div></div>';
        figure += '</div>';
        $('#figure_slick').empty();   
        $('#figure_slick').append(figure);
        
        var rental_book_count = "";
        if(book_lbook!= null){ //null이 아니면 같은 책이 존재
        	if((lbook_count-rbook_count) != 0){
        		rental_book_count += '대출가능(재고 : '+(book_lbook.book_count-rbook_count)+'권)';
        		$('#rental_book_count').css("color", "blue");
        	}else{
        		rental_book_count += '대출불가능(재고 : '+(book_lbook.book_count-rbook_count)+'권)';
        		$('#rental_book_count').css("color", "red");
        	}
        }
        else {
        	rental_book_count += '대출불가능 (도서관에 없는 도서입니다.)';
        	$('#rental_book_count').css("color", "red");
        }
        $('#rental_book_count').empty();   
        $('#rental_book_count').append(rental_book_count);
        
        var rental_book_fac = "";
        if(book_lbook!= null){ //null이 아니면 같은 책이 존재
        	rental_book_fac += "도서위치 : " + lbook_loc;
        }
        $('#rental_book_fac').empty();
        $('#rental_book_fac').append(rental_book_fac);
     
        var return_book_date = "";
        if((lbook_count-rbook_count) != 0){
        	return_book_date += '<label for="date" id="return_book_date">반납예정일&nbsp;';
        	return_book_date += '<input type="date" id="ren_return" name="ren_return" onkeydown="return false">';
        	return_book_date += '</label>';
        }
           
        $('#return_book_date').append(return_book_date);
        
        var rental_btn = "";
        if(book_lbook!= null){ //null이 아니면 같은 책이 존재
        	if((book_lbook.book_count-rbook_count) != 0){
        		rental_btn += '<button type="button" id="btn_rental" name="btn_rental" class="btn btn-blue border-0 rounded-0 p-3 btn-block ml-md-4 single_add_to_cart_button button alt">대출예약</button>';
        	}else{
        		rental_btn += '<button type="button" id="btn_no_rental"  name="btn_no_rental"  class="btn btn-red border-0 rounded-0 p-3 btn-block ml-md-4 single_add_to_cart_button button alt">대출예약불가</button>';
        	}
        }
        else {
        	rental_btn += '<button type="button" id="btn_request" name="btn_request" class="btn btn-green border-0 rounded-0 p-3 btn-block ml-md-4 single_add_to_cart_button button alt">도서신청</button>';
        }
          
        $('#rental_btn').append(rental_btn);
        
        var hiddentag = "";   
        hiddentag += '<input type="hidden" id="mem_num" name="mem_num" value="'+mem_num+'">';
		hiddentag += '<input type="hidden" id="book_num" name="book_num" value="'+lbook_num+'">';
		
		$('#rental').empty();
		$('#rental').append(return_book_date);
		$('#rental').append(rental_btn);
		$('#rental').append(hiddentag);
         
        if((lbook_count-rbook_count) != 0){
	        var now = new Date();
	        var tomorrow = new Date(now.setDate(now.getDate() + 1));	
	        var month = new Date(now.setDate(now.getDate() + 30));
	        var timeOff = new Date().getTimezoneOffset()*60000;
	        var nextday = new Date(tomorrow-timeOff).toISOString().split("T")[0];
	        var monthday = new Date(month-timeOff).toISOString().split("T")[0];
	        document.getElementById("ren_return").setAttribute("min", nextday);
	        document.getElementById("ren_return").setAttribute("max", monthday);
        	}
        var script = "";
        script += '<script>';                                     
        script += '$(document).ready(function (e){'    ;        
        script += '$(\'#btn_rental\').on("click", function(){'  ; 
        script += 'var date = $(\'#ren_return\').val();'  ;        
        script += 'if(date.length>0){  '              ;           
        script += '$(\'#rental\').submit();   '    ;              
        script += '}else{     '                   ;             
        script += ' alert(\"반납예정일을 선택해주세요.\");   '  ;             
        script += '}    '                            ;           
        script += '});'                                   ;   
        script += '$(\'#btn_no_rental\').on("click", function(){';
        script += 'alert("대출이 불가능한 도서입니다.");'   ;               
        script += '});'                              ;            
        script += '$(\'#btn_request\').on("click", function(){' ; 
        script += 'alert("도서신청 페이지로 이동");'  ;
        script += '$(location).attr(\'href\', "/detail/book?isbn='+book_isbn+'");'  ; 
        script += '});'             ;                             
        script += '});';       
        script += '</script>';        
        $('#btn_script').empty();
        $('#btn_script').append(script);
        $('#popup_box').scrollTop(0);
		}		 
	});
    
}

//팝업 닫기
function closePop() {
    document.getElementById("popup_layer").style.display = "none";
}
