<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.model1_cgv.vo.CgvNoticeVO"  %>
<%@ page import="com.model1_cgv.dao.CgvNoticeDAO"  %>
<%
	String nid = request.getParameter("nid");
	CgvNoticeDAO dao = new CgvNoticeDAO();
	CgvNoticeVO vo = dao.select(nid);
%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지관리 - 공지사항 수정하기</title>
<link rel="stylesheet" href="http://localhost:9000/model1_cgv/css/cgv.css">
<script src="http://localhost:9000/model1_cgv/js/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	$("#btnNoticeUpdate").click(()=>{
		if($("#ntitle").val() == ""){
			alert("제목을 입력해주세요");
			$("#ntitle").focus();
			return false;
		}else{
			//서버전송
			boardUpdateForm.submit();
		}
	});
});
</script>
</head>
<body>
	<!-------------------->
	<!-- header Include -->
	<!-------------------->
	<iframe src="http://localhost:9000/model1_cgv/header.jsp" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	<!-------------------->
	<!----- content ------>
	<!-------------------->
	<div class="content">
		<h1>공지사항-수정하기</h1>
		<form name="boardUpdateForm" action="adminNoticeUpdateController.jsp" method="post">
			<input type="hidden" name="nid" value="<%=vo.getNid()%>">
			<ul>
				<li>
					<label>제목</label>
					<input type="text" name="ntitle" id="ntitle" value="<%=vo.getNtitle()%>">
				</li>
				<li>
					<label>내용</label>
					<textarea name="ncontent"><%= vo.getNcontent() %></textarea>
				</li>
				<li>
					<label>파일첨부</label>
					<input type="file" name="file1">
				</li>
				<li>
					<button type="button" class="btn_style" id="btnNoticeUpdate">수정완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="admin_notice_content.jsp?nid=<%= vo.getNid()%>"><button type="button" class="btn_style">이전페이지</button></a>
					<a href="admin_notice_list.jsp"><button type="button" class="btn_style">리스트</button></a>
				</li>
			</ul>
		</form>
	</div>
	
	<!-------------------->
	<!-- footer Include -->
	<!-------------------->
	<iframe src="http://localhost:9000/model1_cgv/footer.jsp" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>