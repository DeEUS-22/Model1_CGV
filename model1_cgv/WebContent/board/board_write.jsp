<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<link rel="stylesheet"  href="http://localhost:9000/model1_cgv/css/cgv.css">
<script src="http://localhost:9000/model1_cgv/js/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	/*********************
		게시판 등록폼 유효성 체크
	**********************/
	$("#btnBoardWrite").click(()=>{
		if($("#btitle").val() == ""){
			alert("제목을 입력해주세요");
			$("#btitle").focus();
			return false;
		}else{
			//서버전송
			boardWriteForm.submit();
		}
	}); //click-end
});//ready-end
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
	<h1 class="h1">게시판-글쓰기</h1>
	<form name="boardWriteForm" action="boardWriteController.jsp" method="post">
		<ul>
			<li>
				<label>제목</label>
				<input type="text" name="btitle" id="btitle">
			</li>
			<li>
				<label>내용</label>
				<textarea name="bcontent"></textarea>
			</li>
			<li>
				<label>파일첨부</label>
				<input type="file" name="file1">
			</li>
			<li>
				<button type="button" class="btn_style" id="btnBoardWrite">등록완료</button>
				<button type="reset" class="btn_style">다시쓰기</button>
				<a href="board_list.jsp">
					<button type="button" class="btn_style">리스트</button>
				</a>
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