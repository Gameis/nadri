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
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <div class="card-group">
                    <div class="card">
                      <div class="card_rank">TOP 1</div>
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
                      <div class="card_rank">TOP 2</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/pop2.jpg" class="card-img-top" alt="pop2.jpg">
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
                      <div class="card_rank">TOP 3</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/pop3.jpg" class="card-img-top" alt="pop3.jpg">
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
                      <div class="card_rank">TOP 4</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/pop4.jpg" class="card-img-top" alt="pop4.jpg">
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
                      <div class="card_rank">TOP 5</div>
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
                      <div class="card_rank">TOP 6</div>
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
                      <div class="card_rank">TOP 7</div>
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
                      <div class="card_rank">TOP 8</div>
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
                <div class="carousel-item">
                  <div class="card-group">
                    <div class="card_rank">TOP 9</div>
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
                      <div class="card_rank">TOP 10</div>
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
                      <div class="card_rank">TOP 11</div>
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
                      <div class="card_rank">TOP 12</div>
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
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <div class="card-group">
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity1.jpg" class="card-img-top" alt="activity1.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">서울 N서울타워 전망대 입장권</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">3.3</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">3건의 리뷰</div>
                        </div>
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity2.jpg" class="card-img-top" alt="activity2.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">서울 플라워바이네이키드 입장권</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">5.0</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">1건의 리뷰</div>
                        </div>
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity3.jpg" class="card-img-top" alt="activity3.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">용인 한국민속촌 자유이용권</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.9</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">24건의 리뷰</div>
                        </div>
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity4.jpg" class="card-img-top" alt="activity4.jpg">
                      </div>
                      <div class="card-body">
                        <div class="pop-title"><a href="#">단독 특가, 전용게이트 입장</a></div>
                        <div class="pop-review">
                            <div class="pop-review-score">
                                <span class="pop-review-score-current">4.8</span>
                                <span class="pop-review-score-total">/5</span>
                            </div>
                            <div class="pop-review-text">35건의 리뷰</div>
                        </div>
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                  </div><!--card-group-->
                </div><!--carousel-item-->
                <div class="carousel-item">
                  <div class="card-group">
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity1.jpg" class="card-img-top" alt="activity1.jpg">
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
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity2.jpg" class="card-img-top" alt="activity2.jpg">
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
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity3.jpg" class="card-img-top" alt="activity3.jpg">
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
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity4.jpg" class="card-img-top" alt="activity4.jpg">
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
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                  </div><!--card-group-->
                </div><!--carousel-item-->
                <div class="carousel-item">
                  <div class="card-group">
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity1.jpg" class="card-img-top" alt="activity1.jpg">
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
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity1.jpg" class="card-img-top" alt="activity1.jpg">
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
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity1.jpg" class="card-img-top" alt="activity1.jpg">
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
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                    <div class="card">
                      <div class="card_saleRate">20% 할인</div>
                      <div class="slide_img">
                        <img src="/nadri/repository/img/area/activity1.jpg" class="card-img-top" alt="activity1.jpg">
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
                        <div class="areaActivity_use">
                          <span>오늘부터 바로사용</span>
                        </div>
                        <div class="price">
                          <span class="price-text">최저가</span>
                          <span class="price-num">8,800원</span>
                        </div>
                      </div><!--card-body-->
                    </div><!--card-->
                  </div><!--card-group-->
                </div><!--carousel-item-->
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
        </div>
    </div><!--areaWrap-->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript" src="/nadri/repository/js/area/area.js"></script>
</body>
</html>