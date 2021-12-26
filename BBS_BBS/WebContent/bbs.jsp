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
<title>HAMP</title>
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
               <li class="active"><a href="bbs.jsp">리소스 관리</a></li>
               <li class="active"><a href="bbs.jsp">성과 공유</a></li>
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
   		<th><h1><span style="color:#87CEFA; background-color: #EBFBFF; font-weight: bold;" >  리소스파일 목록 </span></h1></th>
   	</tr>
   	<tr>
   		<th><h5><span style="background-color: #eeeeee"; text-align: center;">  우측하단 첨부버튼을 이용하여 리소스들을 업로드하세요!</span></h5></th>
   	</tr>
   	
   	
   	
   	
   	</div>
   
   
   
         <div  class="container">
            <table class="table table-stried" style="text-align: center; border: 1px solid #dddddd">
               <thread>
               <tr>
                  <th style="background-color: #eeeeee"; text-align: center;">  번호</th>
                  <th style="background-color: #eeeeee"; text-align: center;">  리소스 이름</th>
                  <th style="background-color: #eeeeee"; text-align: center;">  작성자</th>
                  <th style="background-color: #eeeeee"; text-align: center;">  작성일</th>
               </tr>
               </thread>
               <tbody>
               <%
                  BbsDAO bbsDAO = new BbsDAO();
                  ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
                  for(int i = 0; i < list.size(); i++){
               %>
               <tr>
                  <td><%= list.get(i).getBbsID() %></td>
                  <td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle() %></a></td>
                  <td><%= list.get(i).getUserID() %></td>
                  <td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시 " + list.get(i).getBbsDate().substring(14, 16) + "분" %></td>
               </tr>
               <%
                  }
               %>
               
            </tbody>
            </table>
          
            <a href="write.jsp" class="btn btn-primary pull-right">첨부</a>
            
         </div>
         
   
   
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
</body>
</html> 
