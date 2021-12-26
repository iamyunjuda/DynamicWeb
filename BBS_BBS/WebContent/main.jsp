<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css"> <!-- 참조  -->
<title>Hybrid Application Management Platform</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
   <nav class="navbar navbar-default"> 
      <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href=main.jsp> HAMP</a>      
         </div> 
         <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
               <li class="active"><a href="main.jsp">메인</a></li>
               <li><a href="bbs.jsp">리소스 관리</a></li>
               <li><a href="talk.jsp">성과 공유</a></li>
                <li><a href="bbs.jsp">push 알림 관리</a></li>
            </ul>
            <%
            	if(userID == null) {
            		
            %>	
            <ul class="nav navbar-nav navbar-right">
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle"
                     data-toggle="dropdown" role="button" aria-haspopup="true"
                     aria-expanded="false">접속하기<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                     <li><a href="login.jsp">로그인</a></li>
                     <li><a href="join.jsp">회원가입</a></li>
                  </ul>               
                  </li>
            </ul>
            <%
            	} else {
            %>
            <ul class="nav navbar-nav navbar-right">
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle"
                     data-toggle="dropdown" role="button" aria-haspopup="true"
                     aria-expanded="false">회원관리<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                     <li><a href="logoutAction.jsp">로그아웃</a></li>
                  </ul>               
                  </li>
            </ul>
            <% 
            	}
            %>
            
         </div>
   </nav>
    <div class="container">
        <div class="jumbotron">
            <div class="container">
                <h1>"HAMP"</h1>
                <p>다양한 앱을 보다 쉽게 관리하고 싶나요?</p>
                <p>저희가 도와드리겠습니다.
 
                <p><a class="btn btn-primary btn-pull"href="#"role="button">기능 살펴보기</a></p>
            </div>
        </div>
    </div>
    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="0"></li>
                <li data-target="#myCarousel" data-slide-to="0"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img src="image/0.JPG">
                </div>
                <div class="item">
                    <img src="image/2.jpg">
                </div>
                <div class="item">
                    <img src="image/3.jpg">
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
             
        </div>
    </div>
   
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
</body>
</html> 