<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/nadri/repository/css/area/area.css">
</head>
<body>
    <div id="areaWrap">
        <div id="areaHeader">
            <div id="areaPath">
                <div class="areaPathItem"><a href="#">홈</a></div>
                <div class="areaPathItem"><a href="#">트립 가이드</a></div>
                <div class="areaPathItem"><a href="#">아시아</a></div>
                <div class="areaPathItem"><a href="#">대한민국</a></div>
                <div class="areaPathItem"><a href="#">서울</a></div>
            </div><!--areaPath-->
            <div id="areaSearch">
                <div id="areaSearch_input">
                    <input type="text" placeholder="여행지, 명소, 호텔 등으로 검색">
                </div>
                <div id="areaSearch_button">
                    <div id="areaSearch_icon"></div>
                </div>
            </div><!--areaSearch-->
        </div><!--areaHeader-->
        <div id="areaDestination">
            <div id="areaDestination_name">서울</div>
            <div id="areaSuperDestination">
                <div class="areaSuperDestination_icon"><i class="bi bi-geo-alt-fill"></i></div>
                <div id="areaSuperDestination_name">대한민국</div>
                <div class="areaSuperDestination_icon"><i class="bi bi-chevron-right"></i></div>
            </div>
        </div><!--areaDestination-->
        <div id="areaNav">
            <a href="#">
                <div class="module">
                    <i class="bi bi-bank"></i>
                    <div><span>명소</span></div>
                </div>
            </a>
            <a href="#">
                <div class="module">
                    <i class="bi bi-building"></i>
                    <div><span>호텔</span></div>
                </div>
            </a>
            <a href="#">
                <div class="module">
                    <i class="bi bi-tsunami"></i>
                    <div><span>액티비티</span></div>
                </div>
            </a>
            <a href="#">
                <div class="module">
                    <i class="bi bi-camera"></i>
                    <div><span>트립모먼트</span></div>
                </div>
            </a>
        </div><!--areaNav-->
        <div id="areaMainImg">
            <img id="areaMainBig" alt="1.jpg" src="/nadri/repository/img/area/1.jpg"/>
            <div id="areaMainSmall">
                <img alt="2.jpg" src="/nadri/repository/img/area/2.jpg"/>
                <img alt="3.jpg" src="/nadri/repository/img/area/3.jpg"/>
            </div>
        </div><!--areaMainImg-->
        <div class="areaSlideTitle">
          <h2 style="font-weight: bold;">서울 인기 명소 <input type="button" id="addPopBtn" class="addButton" value="+"></h2>
          <!--divSlide-->
          <div class="areaSlide" style="background: rgba(40, 125, 250, .1);">
            <div id="areaPopularLocation_slide" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-inner" id="pop-carousel-inner">
                
              </div><!--carousel-inner-->
              <button class="carousel-control-prev" type="button" data-bs-target="#areaPopularLocation_slide" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#areaPopularLocation_slide" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
              </button>
            </div><!--areaPopularLocation_slide-->
          </div><!--areaSlide-->
        </div><!--areaSlideTitle-->
        <!--여기까지 인기명소-->
        <!--여기부터 인기호텔-->
        <div class="areaSlideTitle">
          <h2 style="font-weight: bold;">인기 호텔 <input type="button" id="addHotelBtn" class="addButton" value="+"></h2>
          <!--divSlide-->
          <div class="areaSlide">
            <div id="areaHotel_slide" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <div class="card-group">
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/hotel1.jpg" class="card-img-top" alt="hotel1.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">그랜드 워커힐 서울</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/hotel2.jpg" class="card-img-top" alt="hotel2.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">포시즌스호텔 서울</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/hotel3.jpg" class="card-img-top" alt="hotel3.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">인터컨티넨탈 서울 코엑스</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/hotel4.jpg" class="card-img-top" alt="hotel4.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">노보텔 앰배서더 서울 동대문 호텔 & 레지던스</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                  </div><!--card-group-->
                </div><!--carousel-item-->
                <div class="carousel-item">
                  <div class="card-group">
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/hotel1.jpg" class="card-img-top" alt="hotel1.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">명동</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/hotel2.jpg" class="card-img-top" alt="hotel2.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">명동</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/hotel3.jpg" class="card-img-top" alt="hotel3.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">명동</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/hotel4.jpg" class="card-img-top" alt="hotel4.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">명동</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                  </div><!--card-group-->
                </div><!--carousel-item-->
                <div class="carousel-item">
                  <div class="card-group">
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/pop1.jpg" class="card-img-top" alt="pop1.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">명동</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/pop1.jpg" class="card-img-top" alt="pop1.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">명동</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/pop1.jpg" class="card-img-top" alt="pop1.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">명동</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/pop1.jpg" class="card-img-top" alt="pop1.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">명동</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.5</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">5,808건의 리뷰</div>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                  </div><!--card-group-->
                </div><!--carousel-item-->
              </div><!--carousel-inner-->
              <button class="carousel-control-prev" type="button" data-bs-target="#areaHotel_slide" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#areaHotel_slide" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
              </button>
            </div><!--areaHotel_slide-->
          </div><!--areaPopularLocation_slide-->
        </div><!--areaPopularLocation-->
        <!--여기까지 인기호텔-->
        <!--여기부터 액티비티-->
        <div class="areaSlideTitle">
          <h2 style="font-weight: bold;">액티비티 <input type="button" id="addActivityBtn" class="addButton" value="+"></h2>
          <!--divSlide-->
          <div class="areaSlide">
            <div id="areaActivity_slide" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-inner" id="activity-carousel-inner">
                
              </div><!--carousel-inner-->
              <button class="carousel-control-prev" type="button" data-bs-target="#areaActivity_slide" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#areaActivity_slide" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
              </button>
            </div><!--areaHotel_slide-->
          </div><!--areaPopularLocation_slide-->
        </div><!--areaPopularLocation-->
        <!--여기까지 액티비티-->
        <div class="areaInfo">
          <h2>서울 여행 정보</h2>
          <div class="areaInfo-title">
            <div class="areaInfo-title-icon">
              <i class="bi bi-map"></i>
            </div>
            <div class="area-title-text">서울 소개</div>
            <div class="area-info-body">
              <div class="area-content">
                <div class="area-content-text">
                  <p>
                    서울은 대한민국의 수도입니다. 서울 안에 자리한 사원과 궁전이 이 도시의 길고 깊은 역사를 보여줍니다. 이곳에서는 아름다운 자연과 현대적인 고층 빌딩이 만나 과거와 현재가 융합된 도시를 형성합니다. 경복궁과 창덕궁은 오래된 고궁이며, 북촌한옥마을과 남산골 한옥마을은 한국의 전통이 잘 보존된 마을입니다. 서울은 쇼핑의 천국이기도 합니다. 명동, 동대문시장, 신사동, 삼청동으로 가서 의류, 보석, 화장품을 비롯한 온갖 종류의 최신 패션 상품을 만나보세요. 밤이 되면 서울은 더 화려해집니다. N 서울 타워 정상에 올라 눈부시게 빛나는 서울의 야경을 감상하며 눈 호강을 해보세요. 한강은 수많은 한국 드라마에서 배경으로 등장하는 단골손님입니다. 서울의 맛있는 음식 또한 놓쳐선 안 되겠죠. 비빔밥, 김치, 삼계탕(인삼을 넣은 한국식 치킨 수프) 등 저마다 개성을 뽐내는 음식은 모두 맛있습니다.
                  </p>
                </div>
                <div class="area-content-plus">
                  <span data-bs-toggle="modal" data-bs-target="#staticBackdrop">더 보기</span>
                  <i class="bi bi-chevron-right"></i>
                  <!-- Modal -->
					<div class="modal fade" id="staticBackdrop" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered">
					    <div class="modal-content">
					    <div class="modal-header">
					        <h5 class="modal-title" id="staticBackdropLabel">서울 소개</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      	</div>
					      <div class="modal-body">
                    		서울은 대한민국의 수도입니다. 서울 안에 자리한 사원과 궁전이 이 도시의 길고 깊은 역사를 보여줍니다. 이곳에서는 아름다운 자연과 현대적인 고층 빌딩이 만나 과거와 현재가 융합된 도시를 형성합니다. 경복궁과 창덕궁은 오래된 고궁이며, 북촌한옥마을과 남산골 한옥마을은 한국의 전통이 잘 보존된 마을입니다. 서울은 쇼핑의 천국이기도 합니다. 명동, 동대문시장, 신사동, 삼청동으로 가서 의류, 보석, 화장품을 비롯한 온갖 종류의 최신 패션 상품을 만나보세요. 밤이 되면 서울은 더 화려해집니다. N 서울 타워 정상에 올라 눈부시게 빛나는 서울의 야경을 감상하며 눈 호강을 해보세요. 한강은 수많은 한국 드라마에서 배경으로 등장하는 단골손님입니다. 서울의 맛있는 음식 또한 놓쳐선 안 되겠죠. 비빔밥, 김치, 삼계탕(인삼을 넣은 한국식 치킨 수프) 등 저마다 개성을 뽐내는 음식은 모두 맛있습니다.
					      </div>
					    </div>
					  </div>
					</div>
                </div>
              </div>
              <div class="map-box">
                <img src="/nadri/repository/img/area/seoul.jpg" alt="seoul">
              </div>
            </div>
          </div>
        </div>
        <div class="area-weather">
          <h2>서울 날씨</h2>
          <div class="area-weather-Info">
            <div class="weather">
              <div class="weather-text">오늘</div>
              <div class="weather-day">2021년 12월 3일</div>
              <div class="weather-num-con">
                <div class="weather-num">-5</div>
                <div class="weather-tem-log">
                  <div class="log">º</div>
                  <i></i>
                </div>
              </div>
              <div class="weather-weather">구름많음</div>
              <div class="weather-tem">-5~3ºC</div>
            </div>
            <div class="weather">
              <div class="weather-text">내일</div>
              <div class="weather-day">2021년 12월 3일</div>
              <div class="weather-num-con">
                <div class="weather-num">-5</div>
                <div class="weather-tem-log">
                  <div class="log">º</div>
                  <i></i>
                </div>
              </div>
              <div class="weather-weather">구름많음</div>
              <div class="weather-tem">-5~3ºC</div>
            </div>
            <div class="weather">
              <div class="weather-text">모레</div>
              <div class="weather-day">2021년 12월 3일</div>
              <div class="weather-num-con">
                <div class="weather-num">-5</div>
                <div class="weather-tem-log">
                  <div class="log">º</div>
                  <i></i>
                </div>
              </div>
              <div class="weather-weather">구름많음</div>
              <div class="weather-tem">-5~3ºC</div>
            </div>
          </div><!-- area-weather-Info -->          
        </div>
    </div><!--areaWrap-->
    <div id="wrap_foot">
		<footer>
			<jsp:include page="../main/main_footer.jsp">
				<jsp:param value="param1" name="param1" />
			</jsp:include>
		</footer>
	</div>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript" src="/nadri/repository/js/area/area.js"></script>
<script type="text/javascript">
  $(function() {
    $.ajax({
      url: '/nadri/area/onAreaPop',
      type: 'get',
      success: function(data) {
        var count = -1;
        var popCount = 1;
        $.each(data, function(index, items){
          if(index % 4 == 0) {

            if(index == 0) {
              $('<div/>', {
                class: 'carousel-item active'
              }).append($('<div/>', {
                class: 'card-group'
              })).appendTo($('#pop-carousel-inner'));
            }else {
              $('<div/>', {
                class: 'carousel-item'
              }).append($('<div/>', {
                class: 'card-group'
              })).appendTo($('#pop-carousel-inner'));
            }
            
            count++;
          }

          $('<div/>', {
            class: 'card'
          }).append($('<div/>', {
              class: 'card_rank',
              text: 'TOP ' + popCount++
            })).append($('<div/>', {
              class: 'slide_img'
            }).append($('<img/>', {
              src: '/nadri/repository/img/' + items.img_path + '/popmain/' + items.img_name,
              class: 'card-img-top',
              alt: 'top1'
            }))).append($('<div/>', {
              class: 'card-body'
            }).append($('<div/>', {
              class: 'pop-title'
            }).append($('<a/>', {
              href: '/nadri/area/popular?pop_seq=' + items.pop_seq,
              text: items.pop_name
            }))).append($('<div/>', {
              class: 'pop-review'
            }).append($('<div/>', {
              class: 'pop-review-score'
            }).append($('<span/>', {
              class: 'pop-review-score-current',
              text: '4.5'
            })).append($('<span/>', {
              class: 'pop-review-score-total',
              text: '/5'
            }))).append($('<div/>', {
              class: 'pop-review-text',
              text: '5,808건의 리뷰'
            })))).appendTo($('#pop-carousel-inner .card-group:eq(' + count + ')'));
        });//for each문
      },
      error: function(err) {
        console.log(err);
        alert('실패');
      }
    });
    
     $.ajax({
    	url: '/nadri/area/onAreaActivity',
    	type: 'get',
    	success: function(data) {
    		var count = -1;
            var activityCount = 1;
            $.each(data, function(index, items){
              if(index % 4 == 0) {

                if(index == 0) {
                  $('<div/>', {
                    class: 'carousel-item active'
                  }).append($('<div/>', {
                    class: 'card-group'
                  })).appendTo($('#activity-carousel-inner'));
                }else {
                  $('<div/>', {
                    class: 'carousel-item'
                  }).append($('<div/>', {
                    class: 'card-group'
                  })).appendTo($('#activity-carousel-inner'));
                }
                
                count++;
              }
              
              $('<div/>', {
            	  class: 'card'
              }).append($('<div/>', {
            	  class: 'card_saleRate',
            	  text: items.activity_saleRate + '% 할인'
              })).append($('<div/>', {
            	  class: 'slide_img'
              }).append($('<img/>', {
            	  src: '/nadri/repository/img/activies/' + items.img_name
              }))).append($('<div/>', {
            	  class: 'card-body'
              }).append($('<div/>', {
            	  class: 'pop-title'
              }).append($('<a/>', {
            	  href: '#',
            	  text: items.activity_name
              }))).append($('<div/>', {
            	  class: 'pop-review'
              }).append($('<div/>', {
            	  class: 'pop-review-score'
              }).append($('<span/>', {
            	  class: 'pop-review-score-current',
            	  text: '3.3'
              })).append($('<span/>', {
            	  class: 'pop-review-score-toral',
            	  text: '/5'
              }))).append($('<div/>', {
            	  class: 'pop-review-text',
            	  text: '3건의 리뷰'
              }))).append($('<div/>', {
            	  class: 'areaActivity_use'
              }).append($('<span/>', {
            	  text: '오늘부터 바로 사용'
              }))).append($('<div/>', {
            	 class: 'price' 
              }).append($('<span/>', {
            	  class: 'price-text',
            	  text: '최저가'
              })).append($('<span/>', {
            	  class: 'price-num',
            	  text: items.price
              })))).appendTo($('#activity-carousel-inner .card-group:eq(' + count + ')'));
              
            });//each
    	},
    	error: function(err) {
    		console.log(err);
    		alert('실패');
    	}
    }); 
    
     function numberPad(n, width) {
        n = n + '';
        return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
    }

    var today = new Date();
    today = "" + today.getFullYear() + (today.getMonth() + 1) + numberPad(today.getDate(), 2);

    var serviceKey = 'es31tYgHZ%2BTkuWpOLXBsbxse3oMSoHkjqzhMd0SpKZ4EHParX3%2B0uQq2qhvJMizTi84Ifj1PWHXfIOSLtRhzaA%3D%3D';
    var dataType = 'JSON';
    var numOfRows = '773';
    var pageNo = '1';
    var base_date = today;
    var base_time = '0200';
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
            var temp = new Date();
    		$('.weather:eq(0) .weather-day').text(temp.getFullYear() + "년 " + (temp.getMonth() + 1) + "월 " + numberPad(temp.getDate(), 2) + "일");
    		$('.weather:eq(1) .weather-day').text(temp.getFullYear() + "년 " + (temp.getMonth() + 1) + "월 " + numberPad(temp.getDate() + 1, 2) + "일");
    		$('.weather:eq(2) .weather-day').text(temp.getFullYear() + "년 " + (temp.getMonth() + 1) + "월 " + numberPad(temp.getDate() + 2, 2) + "일");
    		
    		var tmn;
    		var tmx;
    		var num;
            $.each(data.response.body.items.item, function(index, item){
            	if(item.fcstDate == today) {num = 0;}
            	else if(item.fcstDate == (eval(today) + 1) + '') { num = 1;}
            	else if(item.fcstDate == (eval(today) + 2) + '') { num = 2;}
            	
            	
            	if((item.fcstDate == today || item.fcstDate == (eval(today) + 1) || item.fcstDate == (eval(today) + 2) || item.fcstDate == (eval(today) + 3))) {
            		if(item.category == "TMN") {
            			tmn = item.fcstValue;
            			$('.weather:eq('+num+') .weather-num').text(item.fcstValue);
            		}else if(item.category == "TMX") {
            			tmx = item.fcstValue;
            		}else if(item.category == "SKY" && item.fcstTime == '1400') {
            			if(item.fcstValue == 1) {
            				$('.weather:eq('+num+') .weather-weather').text("맑음");
            				$('.weather:eq('+num+') .weather-tem-log i').removeClass();
            				$('.weather:eq('+num+') .weather-tem-log i').addClass('bi bi-sun');
            			}else if(item.fcstValue == 3) {
            				$('.weather:eq('+num+') .weather-weather').text("구름많음");
            				$('.weather:eq('+num+') .weather-tem-log i').removeClass();
            				$('.weather:eq('+num+') .weather-tem-log i').addClass('bi bi-cloud');
            			}else if(item.fcstValue == 4) {
            				$('.weather:eq('+num+') .weather-weather').text("흐림");
            				$('.weather:eq('+num+') .weather-tem-log i').removeClass();
            				$('.weather:eq('+num+') .weather-tem-log i').addClass('bi bi-cloud-sun');
            			}
            		}
            		
            		$('.weather:eq('+num+') .weather-tem').text(tmn + "~" + tmx + "ºC");
            	}
            }); //each
            
            
        },
        error: function(err) {
            alert('실패');
            console.log(err);
        }
    });
  }); 
</script>
</body>
</html>