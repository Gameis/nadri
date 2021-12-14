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
		},
		error: function(err) {
			alert('실패');
			console.log(err);
		}
		
	});
}

