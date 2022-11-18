<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.model1_cgv.dao.CgvMemberDAO" %>  
<%@ page import="com.model1_cgv.vo.CgvMemberVO" %>  
<%
	String id = request.getParameter("id");
	CgvMemberDAO dao = new CgvMemberDAO();
	CgvMemberVO vo = dao.selectContent(id);
	String address = vo.getZonecode()+" "+vo.getAddr1()+" "+ vo.getAddr2();
%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 - 회원 상세보기</title>
<link rel="stylesheet"  href="http://localhost:9000/model1_cgv/css/cgv.css">
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/model1_cgv/header.jsp" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>회원정보-상세보기</h1>
		<table class="boardContent">	
			<tr>				
				<th>아이디</th>
				<td><%= vo.getId() %></td>
				<th>성명</th>
				<td><%= vo.getName() %></td>
				<th>가입날짜</th>
				<td><%= vo.getMdate() %></td>
			</tr>		
			<tr>				
				<th>주소</th>
				<td colspan="5"><%= address %></td>
			</tr>
			<tr>				
				<th>연락처</th>
				<td colspan="5"><%= vo.getPnumber() %></td>
			</tr>
			<tr>				
				<th>취미</th>
				<td colspan="5"><%= vo.getHobbylist() %></td>
			</tr>
			<tr>				
				<th>자기소개</th>
				<td colspan="5"><%= vo.getIntro() %></td>
			</tr>
			<tr>
				<td colspan="6">					
					<a href="admin_member_list.jsp"><button type="button" class="btn_style">리스트</button></a>
					<a href="../admin.jsp"><button type="button" class="btn_style">관리자홈</button></a>
				</td>
			</tr>			
		</table>	
	</div>
		
	<!-- footer Include -->
	<iframe src="http://localhost:9000/model1_cgv/footer.jsp" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>