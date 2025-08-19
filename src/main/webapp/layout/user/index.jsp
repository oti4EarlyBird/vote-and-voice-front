<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <title>vote&voice</title>

  <jsp:include page="/layout/common/cssConf.jsp"></jsp:include>
  <style type="text/css">
  	img {
	  width: 100%;      /* 부모 요소 가로에 꽉 차게 */
	  height: 100%;     /* 부모 요소 세로에 꽉 차게 */
	  object-fit: cover; /* 이미지 비율 유지하며 잘림 없이 꽉 채움 */
	  display: block;    /* inline 특성 제거해서 공간 생기는 문제 방지 */
	}
  </style>
</head>


<body>


    <!-- header section strats -->
    <jsp:include page="/layout/common/header.jsp"></jsp:include>
    
    
    

  <!-- slider section -->
    <section class="slider_section mb-4" style="background-color: #191970; ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active" style="background-image: url('/vote-and-voice-front/images/carousel_welcomWebSite.png');background-size: cover; background-position: center; background-repeat: no-repeat;">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      GRAND OPEN!
                    </h1>
                    <p>
                     Vote & Voice 홈페이지가 새롭게 오픈했습니다!<br>
                     대한민국의 정책과아 의안에 대한 여러분의 의견을 자유롭게 나누세요~
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn1">
                        확인하기
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Fast Food Restaurant
                    </h1>
                    <p>
                      Doloremque, itaque aperiam facilis rerum, commodi, temporibus sapiente ad mollitia laborum quam quisquam esse error unde. Tempora ex doloremque, labore, sunt repellat dolore, iste magni quos nihil ducimus libero ipsam.
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Fast Food Restaurant
                    </h1>
                    <p>
                      Doloremque, itaque aperiam facilis rerum, commodi, temporibus sapiente ad mollitia laborum quam quisquam esse error unde. Tempora ex doloremque, labore, sunt repellat dolore, iste magni quos nihil ducimus libero ipsam.
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <ol class="carousel-indicators">
            <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
            <li data-target="#customCarousel1" data-slide-to="1"></li>
            <li data-target="#customCarousel1" data-slide-to="2"></li>
          </ol>
        </div>
      </div>

    </section>
    <!-- end slider section -->
  
  	   
	  <!-- start : 최신 의안 카드형식으로 보여줄 부분 -->
	
	  <section class="food_section layout_padding-bottom">
	    <div class="container">
	      <div class="heading_container heading_center">
	        <h2>
				Category
	        </h2>
	      </div>
	
	      <ul class="filters_menu">
	        <li class="active" data-filter="*">전체 보기</li>
	        <li data-filter=".burger">취업</li>
	        <li data-filter=".pizza">복지</li>
	        <li data-filter=".pasta">결혼</li>
	        <!-- 
	        <li data-filter=".fries">Fries</li>
	         -->
	      </ul>
	
	      <div class="filters-content">
	        <div class="row grid">
	          <div class="col-sm-6 col-lg-4 all pizza">
	            <div class="box">
	              <div>
	                <div class="img-box">
	                  <img src="/vote-and-voice-front/images/image02-1.jpg" alt="">
	                </div>
	                <div class="detail-box">
	                  <h5>
	                    청년 월세 지원
	                  </h5>
	                  <p>
	                    일정 소득 이하 청년에게 월 최대 20만원의 월세를 지원하는 제도
	                  </p>
	                  <div class="options">
	                    <h6>
	                      신청기간 : 2025.01.01 ~ 2025.12.31
	                    </h6>
	                    <a href="">
	                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
	                        <g>
	                          <g>
	                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
	                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
	                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
	                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
	                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
	                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
	                          </g>
	                        </g>
	                       
	                      </svg>
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          <div class="col-sm-6 col-lg-4 all burger">
	            <div class="box">
	              <div>
	                <div class="img-box">
	                  <img src="/vote-and-voice-front/images/image01.jpg" alt="">
	                </div>
	                <div class="detail-box">
	                  <h5>
	                    청년 도전 지원 사업
	                  </h5>
	                  <p>
	                    구직 의지가 있는 미취업 청년에게 취업 준비 프로그램 및 수당 지원
	                  </p>
	                  <div class="options">
	                    <h6>
	                      신청기간 : 2025.01.01 ~ 2025.12.31
	                    </h6>
	                    <a href="">
	                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
	                        <g>
	                          <g>
	                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
	                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
	                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
	                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
	                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
	                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
	                          </g>
	                        </g>
	                      </svg>
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          <div class="col-sm-6 col-lg-4 all pizza">
	            <div class="box">
	              <div>
	                <div class="img-box">
	                  <img src="/vote-and-voice-front/images/image02-2.jpg" alt="">
	                </div>
	                <div class="detail-box">
	                  <h5>
	                    청년 기본 소득
	                  </h5>
	                  <p>
	                    거주 요건 충족 시 분기별 일정 금액을 현금 또는 지역 화폐로 지급
	                  </p>
	                  <div class="options">
	                    <h6>
	                      상시 모집 중
	                    </h6>
	                    <a href="">
	                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
	                        <g>
	                          <g>
	                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
	                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
	                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
	                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
	                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
	                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
	                          </g>
	                        </g>
	                      </svg>
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          <!-- 
	          <div class="col-sm-6 col-lg-4 all pasta">
	            <div class="box">
	              <div>
	                <div class="img-box">
	                  <img src="images/f4.png" alt="">
	                </div>
	                <div class="detail-box">
	                  <h5>
	                    Delicious Pasta
	                  </h5>
	                  <p>
	                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
	                  </p>
	                  <div class="options">
	                    <h6>
	                      $18
	                    </h6>
	                    <a href="">
	                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
	                        <g>
	                          <g>
	                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
	                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
	                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
	                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
	                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
	                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
	                          </g>
	                        </g>

	                      </svg>
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>

	          <div class="col-sm-6 col-lg-4 all fries">
	            <div class="box">
	              <div>
	                <div class="img-box">
	                  <img src="images/f5.png" alt="">
	                </div>
	                <div class="detail-box">
	                  <h5>
	                    French Fries
	                  </h5>
	                  <p>
	                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
	                  </p>
	                  <div class="options">
	                    <h6>
	                      $10
	                    </h6>
	                    <a href="">
	                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
	                        <g>
	                          <g>
	                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
	                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
	                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
	                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
	                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
	                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
	                          </g>
	                        </g>
	                      </svg>
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          <div class="col-sm-6 col-lg-4 all pizza">
	            <div class="box">
	              <div>
	                <div class="img-box">
	                  <img src="images/f6.png" alt="">
	                </div>
	                <div class="detail-box">
	                  <h5>
	                    Delicious Pizza
	                  </h5>
	                  <p>
	                    Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
	                  </p>
	                  <div class="options">
	                    <h6>
	                      $15
	                    </h6>
	                    <a href="">
	                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
	                        <g>
	                          <g>
	                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
	                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
	                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
	                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
	                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
	                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
	                          </g>
	                        </g>
	                      </svg>
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          -->
	          <div class="col-sm-6 col-lg-4 all burger">
	            <div class="box">
	              <div>
	                <div class="img-box">
	                  <img src="/vote-and-voice-front/images/image01-2.jpg"alt="">
	                </div>
	                <div class="detail-box">
	                  <h5>
	                    청년내일채움공제
	                  </h5>
	                  <p>
	                    중소기업에 2년이상 근무 시 목돈 마련을 지원하는 저축형 공제 제도
	                  </p>
	                  <div class="options">
	                    <h6>
	                      신청기간 : ~ 2025.08.31
	                    </h6>
	                    <a href="">
	                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
	                        <g>
	                          <g>
	                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
	                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
	                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
	                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
	                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
	                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
	                          </g>
	                        </g>
	                      </svg>
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          <div class="col-sm-6 col-lg-4 all burger">
	            <div class="box">
	              <div>
	                <div class="img-box">
	                  <img src="/vote-and-voice-front/images/image01-3.jpg" alt="">
	                </div>
	                <div class="detail-box">
	                  <h5>
	                    K-Digital Training
	                  </h5>
	                  <p>
	                  	IT, 디지털 분야 취업을 위한 국비 무료 직무 교육 제공
	                  </p>
	                  <div class="options">
	                    <h6>
	                      K-대한민국
	                    </h6>
	                    <a href="">
	                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
	                        <g>
	                          <g>
	                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
	                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
	                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
	                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
	                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
	                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
	                          </g>
	                        </g>
	                      </svg>
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          <div class="col-sm-6 col-lg-4 all pasta">
	            <div class="box">
	              <div>
	                <div class="img-box">
	                  <img src="/vote-and-voice-front/images/image03-1.jpg" alt="">
	                </div>
	                <div class="detail-box">
	                  <h5>
	                    신혼희망타운 분양
	                  </h5>
	                  <p>
	                    청년 신혼부부에게 저렴한 가격으로 공공주택 우선 공급
	                  </p>
	                  <div class="options">
	                    <h6>
	                      결혼하세요~
	                    </h6>
	                    <a href="">
	                      <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
	                        <g>
	                          <g>
	                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
	                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
	                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
	                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
	                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
	                          </g>
	                        </g>
	                        <g>
	                          <g>
	                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
	                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
	                          </g>
	                        </g>
	                      </svg>
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	      <div class="btn-box">
	        <a href="">
	          View More
	        </a>
	      </div>
	    </div>
	  </section>
	
	  <!-- end : 최신 의안 카드형식으로 보여줄 부분 -->
  
	  <!-- start : 관리자에게 하고 싶은 말 (QA&A) -->
	  <section class="book_section layout_padding">
	    <div class="container">
	      <div class="heading_container">
	        <h2>
	          Q & A
	        </h2>
	      </div>
	      <div class="row">
	        <div class="col-md-6">
	          <div class="form_container">
	            <form action="">
	              <div>
	                <input type="text" class="form-control" placeholder="이름 또는 별명 입력" />
	              </div>
	              <div>
	                <input type="email" class="form-control" placeholder="이메일 입력" />
	              </div>
	              <div>
	                <input type="text" class="form-control" placeholder="제목 입력" />
	              </div>
	              <div>
	                <textarea class="form-control" rows="5"  style="height: 120px;" placeholder="내용 입력"></textarea>
	              </div>	              
	              <!-- 
	              <div>
	                <select class="form-control nice-select wide">
	                  <option value="" disabled selected>
	                    How many persons?
	                  </option>
	                  <option value="">
	                    2
	                  </option>
	                  <option value="">
	                    3
	                  </option>
	                  <option value="">
	                    4
	                  </option>
	                  <option value="">
	                    5
	                  </option>
	                </select>
	              </div>
	              <div>
	                <input type="date" class="form-control">
	              </div>
	               -->
	              <div class="btn_box">
	                <button>
	                  제출하기
	                </button>
	              </div>
	            </form>
	          </div>
	        </div>
	        <div class="col-md-6">
	          <div class="map_container ">
	            <div id="googleMap"></div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </section>
	  <!-- start : 관리자에게 하고 싶은 말 (QA&A) -->
  
  

 
 
 
 

  <!-- footer section -->
  <jsp:include page="/layout/common/footer.jsp"></jsp:include>
  <!-- footer section -->


  <jsp:include page="/layout/common/jsConf.jsp"></jsp:include>
</body>

</html>