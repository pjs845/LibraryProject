function rental_del(ren_num){ //도서대출 거절
	var result = confirm("반납완료 도서를 삭제하시겠습니까?");
	if(result){
		$.ajax({
			url: "/admin/rental/del",
			type: "GET",
			data: {ren_num: ren_num},
			success: function(data){            						
			}            				
		});
		redraw();
	}	
}