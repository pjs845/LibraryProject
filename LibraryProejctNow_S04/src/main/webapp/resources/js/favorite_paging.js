function favClickPage(cp, ps, catgo, mem_num){    	    								
	$.ajax({
		url: "/bookManage/ajax/library/favorite.json", 
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
			$('#favoritetab').empty();
			html = "";
			html += '<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3">';			
			var item = data.favoriteList.items;
			var size = data.favoriteList.items.length;			
			var startPaging = data.favoriteList.startpaging;
			var endPaging = data.favoriteList.endpaging;
			var totalpage = data.favoriteList.totalPageCount;			
			for(var i=0; i<size; i++){
				html += '<div class="col"><div><a class="d-block mb-3" >';
				html += '<img class="img-fluid" src="'+item[i].libraryBook.book_img+'" alt="Image-Description" style="width:200px; height: 250px;"></a><div class="mb-2">';
				html += '<a class="font-size-2" href="../blog/blog-single.html">'+item[i].libraryBook.book_publisher+'</a></div><h6 class="font-size-26 crop-text-2 font-weight-medium text-lh-1dot4">';
				html += '<a>'+item[i].libraryBook.book_title+'</a></h6>';
				html += '<p class="font-size-2 text-secondary-gray-700">작가 : '+item[i].libraryBook.book_writer+'</p>';
				html += '<div class="font-size-2 text-secondary-gray-700">';				
				html += '<a class="btn btn-primary-red btn-sm-wide transition-3d-hover" style="color:white;" href="javascript:favDel('+item[i].libraryBook.book_isbn+', '+mem_num+', '+cp+')">찜 도서 삭제</a>';
				html += '</div></div></div>';
			}
			html += '</div><br>';
			html += '<nav aria-label="Page navigation example">';
			html += '<ul class="pagination pagination__custom justify-content-md-center flex-nowrap flex-md-wrap overflow-auto overflow-md-visble">';
			if(startPaging != 1){
				html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="favClickPage('+(startPaging-1)+',6, 3, '+mem_num+')">이전</a></li>';
			}
			for(var i=startPaging; i<=endPaging; i++){
				html += '<a href="list.do?ps'+ps+'&cp='+i+'">';
				if(i == cp){
					html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item active" aria-current="page"><a class="page-link" href="javascript:void(0);" onclick="favClickPage('+i+',6, 3, '+mem_num+')">'+i+'</a></li>';
				}else{
					html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="favClickPage('+i+',6, 3, '+mem_num+')">'+i+'</a></li>';
				}
			}
			if(endPaging != totalpage){
				html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="favClickPage('+(endPaging+1)+',6, 3, '+mem_num+')">다음</a></li>';
			}
			html += '</ul></nav>';	
			$('#favoritetab').append(html);
		}
	});	
}