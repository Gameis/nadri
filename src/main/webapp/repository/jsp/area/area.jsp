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
    <link rel="stylesheet" href="area.css">
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
            <img id="areaMainBig" alt="1.jpg" src="1.jpg"/>
            <div id="areaMainSmall">
                <img alt="2.jpg" src="2.jpg"/>
                <img alt="3.jpg" src="3.jpg"/>
            </div>
        </div><!--areaMainImg-->
        <div id="areaPopularLocation">
            <h2 style="font-weight: bold;">서울 인기 명소</h2>
            <!--divSlide-->
            <div id="areaPopularLocation_slide">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="card-group">
                            <div class="card">
                              <img src="pop1.jpg" class="card-img-top" alt="pop1.jpg">
                              <div class="card-body">
                                <div class="pop-title"><a href="#">명동</a></div>
                                <div class="pop-review">
                                    <div class="pop-review-score">
                                        <span class="pop-review-score-current">4.5</span>
                                        <span class="pop-review-score-total">/5</span>
                                    </div>
                                    <div class="pop-review-text">5,808건의 리뷰</div>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <img src="pop2.jpg" class="card-img-top" alt="pop2.jpg">
                              <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                              </div>
                            </div>
                            <div class="card">
                              <img src="pop3.jpg" class="card-img-top" alt="pop3.jpg">
                              <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                              </div>
                            </div>
                            <div class="card">
                                <img src="pop4.jpg" class="card-img-top" alt="pop4.jpg">
                                <div class="card-body">
                                  <h5 class="card-title">Card title</h5>
                                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="card-group">
                            <div class="card">
                              <img src="pop1.jpg" class="card-img-top" alt="pop1.jpg">
                              <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                              </div>
                            </div>
                            <div class="card">
                              <img src="pop2.jpg" class="card-img-top" alt="pop2.jpg">
                              <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                              </div>
                            </div>
                            <div class="card">
                              <img src="pop3.jpg" class="card-img-top" alt="pop3.jpg">
                              <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                              </div>
                            </div>
                            <div class="card">
                                <img src="pop4.jpg" class="card-img-top" alt="pop4.jpg">
                                <div class="card-body">
                                  <h5 class="card-title">Card title</h5>
                                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="card-group">
                            <div class="card">
                              <img src="pop1.jpg" class="card-img-top" alt="pop1.jpg">
                              <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                              </div>
                            </div>
                            <div class="card">
                              <img src="pop2.jpg" class="card-img-top" alt="pop2.jpg">
                              <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                              </div>
                            </div>
                            <div class="card">
                              <img src="pop3.jpg" class="card-img-top" alt="pop3.jpg">
                              <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                              </div>
                            </div>
                            <div class="card">
                                <img src="pop4.jpg" class="card-img-top" alt="pop4.jpg">
                                <div class="card-body">
                                  <h5 class="card-title">Card title</h5>
                                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div><!--areaWrap-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>