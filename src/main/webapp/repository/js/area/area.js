$(function() {
    $('#addPopBtn').click(function() {
        alert('addPopBtn');
        window.open("/nadri/area/popWriteForm", "popWriteForm", "width=800, height=1200");
    });

    $('#addHotelBtn').click(function() {
        alert('addHotelBtn');
        //window.open("/nadri/area/WriteForm");
    })

    $('#addActivityBtn').click(function() {
        alert('addActivityBtn');
        window.open("/nadri/area/activityWriteForm");
    })

    $('#popWriteBtn').click(function() {
        var formData = new FormData($('#popWriteForm')[0]);
        $.ajax({
            url: '/nadri/area/popWrite',
            type: 'post',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            data: formData,
            success: function() {
                alert('데이터 등록 완료');
            },
            error: function(err) {
                console.log(err);
            }
             
        });
    });
});