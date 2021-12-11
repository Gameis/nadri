$(function() {
    $('#addPopBtn').click(function() {
        alert('addPopBtn');
        window.open("/nadri/area/popWriteForm?main_seq=" + $('#main_seq').val(), "popWriteForm", "width=800, height=1200");
    });

    $('#addHotelBtn').click(function() {
        alert('addHotelBtn');
        //window.open("/nadri/area/WriteForm");
    });

    $('#addActivityBtn').click(function() {
        alert('addActivityBtn');
        window.open("/nadri/area/activityWriteForm", "activityWriteForm", "width=800, height=1200");
    });

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

    $('#activityWriteBtn').click(function() {
        var formData = new FormData($('#activityWriteForm')[0]);
        $.ajax({
            url: '/nadri/area/activityWrite',
            type: 'post',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            data: formData,
            success: function() {
                alert('데이터 등록 완료');
            },
            error: function() {
                console.log(err);
            }
        });
    });

    
});