//내용불러오기
function onActivities(){
	alert('start');
	$.ajax({
		url: '/nadri/activities/onActivities',
		type: 'get',
		data: 'activity_seq='+ $('#activity_seq').val(),
		success: function(data) {
			alert('확인');
			alert(JSON.stringify(data));
			$('#price').text(data.price);
			$('#salePrice').text(data.price / 5 * 100);
			$('#main_img').attr("src", "/nadri/repository/img/activities/" + data.main_img);
			$('#sub_img').attr("src", "/nadri/repository/img/activities/" + data.sub_img);

		},
		error: function(err) {
			alert('실패');
			console.log(err);
		}
		
	});
}

