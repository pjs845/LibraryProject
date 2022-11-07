function requestClickPage(cp, ps, catgo, mem_num){    	    		    						
	$.ajax({
		url: "/bookManage/ajax/library/request.json", 
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
			$('#requesttab').empty();
			html = "";
			html += '<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3">';
			var item = data.requestList.items;
			var size = data.requestList.items.length;			
			var startPaging = data.requestList.startpaging;
			var endPaging = data.requestList.endpaging;
			var totalpage = data.requestList.totalPageCount;			
			for(var i=0; i<size; i++){
				html += '<div class="col"><div><a class="d-block mb-3" >';
				html += '<img class="img-fluid" src="/img/books_img.png" alt="Image-Description" style="width:200px; height: 250px;"></a><div class="mb-2">';
				html += '<a class="font-size-2" >도서 ISBN : '+item[i].br_isbn+'</a></div><h6 class="font-size-26 crop-text-2 font-weight-medium text-lh-1dot4">';
				html += '<a>'+item[i].br_title+'</a></h6>';
				html += '<p class="font-size-2 text-secondary-gray-700">작가 : '+item[i].br_writer+'</p>';
				html += '<div class="font-size-2 text-secondary-gray-700">';				
				if(item[i].br_stat == 0){
					html += '<span>신청상태 : <span style="color:red;">신청대기중</span></span>';
				}else if(item[i].br_stat == 1){
					html += '<span>신청상태 : <span style="color:green;">신청승인</span></span>';
				}
				html += '</div></div></div>';
			}
			html += '</div><br>';
			html += '<nav aria-label="Page navigation example">';
			html += '<ul class="pagination pagination__custom justify-content-md-center flex-nowrap flex-md-wrap overflow-auto overflow-md-visble">';
			if(startPaging != 1){
				html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="requestClickPage('+(startPaging-1)+',6, 2, '+mem_num+')">이전</a></li>';
			}
			for(var i=startPaging; i<=endPaging; i++){
				html += '<a href="list.do?ps'+ps+'&cp='+i+'">';
				if(i == cp){
					html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item active" aria-current="page"><a class="page-link" href="javascript:void(0);" onclick="requestClickPage('+i+',6, 2, '+mem_num+')">'+i+'</a></li>';
				}else{
					html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="requestClickPage('+i+',6, 2, '+mem_num+')">'+i+'</a></li>';
				}
			}
			if(endPaging != totalpage){
				html += '<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="requestClickPage('+(endPaging+1)+',6, 2, '+mem_num+')">다음</a></li>';
			}
			html += '</ul></nav>';	
			$('#requesttab').append(html);
		}
	});	
}