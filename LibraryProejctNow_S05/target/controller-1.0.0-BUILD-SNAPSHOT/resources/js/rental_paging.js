function rentalClickPage(cp, ps, catgo, mem_num){    	    		
	$.ajax({
		url: "/bookManage/ajax/library/rental.json", 
		type: "GET", 
		data: {cp: cp,
			ps: ps,
			category : catgo,
			mem_num : mem_num}, 
		success: function(data){
			if(!data){
				alert("존재하지않는 data");
				return false;
			}
			console.log("success");
			$('#rentaltab').empty();
			html = "";
			html += '<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3">';
			var item = data.rentalList.items;
			var size = data.rentalList.items.length;
			var img = data.rentalList.items.book_img;
			var publisher = data.rentalList.items.book_publisher; 
			var title = data.rentalList.items.book_title;
			var writer = data.rentalList.items.book_writer;
			var ren_borrow = data.rentalList.items.ren_borrow;
			var ren_return = data.rentalList.items.ren_return;
			var ren_stat = data.rentalList.items.ren_stat;
			var startPaging = data.rentalList.startpaging;
			var endPaging = data.rentalList.endpaging;
			var totalpage = data.rentalList.totalPageCount;
			console.log("startPaging " + startPaging);
			console.log("endPaging " + endPaging);
			console.log("totalpage " + totalpage);
			for(var i=0; i<size; i++){
				html += '<div class="col"><div><a class="d-block mb-3">';
				html += '<img class="img-fluid" src="'+item[i].book.book_img+'" alt="Image-Description" style="width:200px; height: 250px;"></a><div class="mb-2">';
				html += '<a class="font-size-2">'+item[i].book.book_publisher+'</a></div><h6 class="font-size-26 crop-text-2 font-weight-medium text-lh-1dot4">';
				html += '<a>'+item[i].book.book_title+'</a></h6>';
				html += '<p class="font-size-2 text-secondary-gray-700">작가 : '+item[i].book.book_writer+'</p>';
				html += '<div class="font-size-2 text-secondary-gray-700">';
				html += '<span>대여일 : '+item[i].ren_borrow+' &nbsp; 반납예정일 : '+item[i].ren_return+'</span><br>';
				if(item[i].ren_stat == 0){
					html += '<span>대출상태 : <span style="color:red;">예약중</span></span>';
				}else if(item[i].ren_stat == 1){
					html += '<span>대출상태 : <span style="color:orange;">대출중</span></span>';
				}else{
					html += '<span>대출상태 : <span style="color:green;">반납완료</span></span>';
				}	
				html += '</div></div></div>';
			}
			html += '</div><br>';
			html += '<nav aria-label="Page navigation example">';
			html += '<ul class="pagination pagination__custom justify-content-md-center flex-nowrap flex-md-wrap overflow-auto overflow-md-visble">';
			if(startPaging != 1){
				html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="rentalClickPage('+(startPaging-1)+', 6, 1, '+mem_num+')">이전</a></li>';
			}
			for(var i=startPaging; i<=endPaging; i++){
				html += '<a href="list.do?ps'+ps+'&cp='+i+'">';
				if(i == cp){
					html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item active" aria-current="page"><a class="page-link" href="javascript:void(0);" onclick="rentalClickPage('+i+',6, 1, '+mem_num+')">'+i+'</a></li>';
				}else{
					html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="rentalClickPage('+i+',6, 1, '+mem_num+')">'+i+'</a></li>';
				}
			}
			if(endPaging != totalpage){
				html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="rentalClickPage('+(endPaging+1)+',6, 1, '+mem_num+')">다음</a></li>';
			}
			html += '</ul></nav>';	
			$('#rentaltab').append(html);
		}
	});	
}