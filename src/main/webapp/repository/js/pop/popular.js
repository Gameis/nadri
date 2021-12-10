$('.pop-review-reviewIcon #goReview').click(function(){
    // 이동 버튼을 클릭시 pre 태그로 스크롤의 위치가 이동되도록 한다.
 
    // 1. pre태그의 위치를 가지고 있는 객체를 얻어온다. => offset 객체
    var target = $("#reviewContainer").offset();

    // offset은 절대 위치를 가져온다. offset.top을 통해 상단의 좌표를 가져온다.
    // position은 부모를 기준으로한 상대위치를 가져온다.
    $("html").animate({scrollTop:target.top},400);
});