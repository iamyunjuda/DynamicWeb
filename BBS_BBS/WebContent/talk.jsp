<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css"> <!-- 참조  -->
<title>JSP 게시판 웹사이트</title>
</head>
<body>
   <%
      String userID = null;
      if (session.getAttribute("userID") != null) {
         userID = (String) session.getAttribute("userID");
      }
      int pageNumber = 1;
      if(request.getParameter("PageNumber") != null){
         pageNumber = Integer.parseInt(request.getParameter("PageNumber"));
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
               <li><a href="main.jsp">메인</a></li>
               <li><a href="bbs.jsp">리소스 관리</a></li>
             <li class="active"><a href="talk.jsp">성과 공유</a></li>
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
   	<tr>
   		<th><h1><span style="color:#87CEFA; background-color: #EBFBFF; font-weight: bold;" >  HAMP 이용후기를 올려주세요!</span></h1></th>
   	</tr>
   	<tr>
   		<th><h5><span style="background-color: #eeeeee"; text-align: center;">  이용후기는 웹페이지 개발에 큰 도움이 됩니다 :)</span></h5></th>
   	</tr>
   	
   	
   	
   	
   	</div>
   
   
         <div  class="container">
            <table class="table table-stried" style="text-align: center; border: 1px solid #dddddd">
               <thread>
               <tr>
                  <th style="background-color: #eeeeee"; text-align: center;">  번호</th>
                  <th style="background-color: #eeeeee"; text-align: center;">  제목</th>
                  <th style="background-color: #eeeeee"; text-align: center;">  작성자</th>
                  <th style="background-color: #eeeeee"; text-align: center;">  작성일</th>
               </tr>
               </thread>
               <tbody>
                 <tr>
                 <td> 2 </td>
                 <td> HAMP를 이용하여 어플 업데이트 후기</td>
                 <td> 내이름은게발자가아닌개발자</td>
                 <td> 2020.08.13 오후 11시 23분 </td>
               </tr>
               
               <tr>
                 <td> 1 </td>
                 <td> 쇼핑몰 앱 push 알림기능 사용 후기</td>
                 <td> abbly</td>
                 <td> 2020.08.10 오후 3시 48분 </td>
               </tr>
              
               
            </tbody>
            </table>
            
            
            <a href="write.jsp" class="btn btn-primary pull-right">글 작성</a>
            
         </div>
         
   
   
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
</body>
</html> 
