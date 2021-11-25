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
});