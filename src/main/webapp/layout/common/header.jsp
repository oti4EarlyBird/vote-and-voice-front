<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
    <div class="bg-box">
      <img src="../images/logo.png" alt="">  
    </div>
 -->
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
              Vote&Voice
            </span>
          </a>
			
			<!-- searchBar starts-->
			<form class="form-inline d-flex ml-auto mr-3">
				<div class="input-group">
					<input class="form-control" type="search" placeholder="검색어 입력"  aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-outline-light" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</form>
			<!-- searchBar end -->

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
       <%-- 
       	DB에서 user테이블의 role이 관리자/사용자에 따라서 보여주는 header nav가 다르게 보임 
        --%>
        <% 
        	String role = "사용자";
        %>
        <% if(role.equals("사용자")){ %>
          	<!-- 사용자 로그인 -->
            <ul class="navbar-nav  mx-auto ">
              <li class="nav-item">
                <a class="nav-link" href="menu.html">의안</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="index.html">공지사항<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html">법안발의통계</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="book.html">커뮤니티</a>
              </li>
            </ul>
           <%} %>
           <% if(role.equals("관리자")) {
           %> 
            <!-- 관리자 로그인 -->
            <ul class="navbar-nav  mx-auto ">
              <li class="nav-item">
                <a class="nav-link" href="menu.html">회원조회</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="index.html">의안관리<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html">신고관리</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="book.html">공지사항관리</a>
              </li>
            </ul>
          <%} %>
            
            
            
            
            <div class="user_option">
            <%
            	String loginCheck = "123445";
           		
            	if(loginCheck == null) {
            		
           	%>
            <!-- 로그인 안했을 때 -->
              <a href="" class="order_online">
              	로그인
              </a>		
			<%
            }else {		
			%>
            <!-- 로그인 했을 때-->
            <% if(role.equals("사용자")){ %>
              <a href="" class="user_link">
                <i class="fa fa-user" aria-hidden="true"></i>
              </a>
             <%} %>
              <a href="" class="order_online">
              	로그아웃
              </a>
			<%	
				}
			%>    
            
          </div>
        </nav>
      </div>
    </header>


 

