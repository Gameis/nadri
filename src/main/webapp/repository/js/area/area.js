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

    function numberPad(n, width) {
        n = n + '';
        return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
    }

    var today = new Date();
    today = "" + today.getFullYear() + (today.getMonth() + 1) + numberPad(today.getDate(), 2);
    alert(today);

    var serviceKey = 'es31tYgHZ%2BTkuWpOLXBsbxse3oMSoHkjqzhMd0SpKZ4EHParX3%2B0uQq2qhvJMizTi84Ifj1PWHXfIOSLtRhzaA%3D%3D';
    var dataType = 'JSON';
    var numOfRows = '10';
    var pageNo = '1';
    var base_date = today;
    var base_time = '0800';
    var nx = '60';
    var ny = '127';

    $.ajax({
        url: 'http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst'
                + '?serviceKey=' + serviceKey
                + '&dataType=' + dataType
                + '&numOfRows=' + numOfRows
                + '&pageNo=' + pageNo
                + '&base_date=' + base_date
                + '&base_time=' + base_time
                + '&nx=' + nx
                + '&ny=' + ny,
        type: 'GET',
        async: 'false',
        success: function(data) {
            alert('성공');
        },
        error: function(err) {
            alert('실패');
            console.log(err);
        }
    });
});