<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기창</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${contextPath}/assets/css/reset.css" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">


	//미리보기 시작-----------
	$("#multiFile").change(function(){
		//alert(this.value); //선택한 이미지 경로 표시
		readURL(this);
	});
	
	function readURL(input) {
		var file = input.files[0] //파일에 대한 정보
		console.log(file)
		if (file != '') {
			var reader = new FileReader();
			reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고
			reader.onload = function(e) { // 파일 로드한 값을 표현한다
			//e : 이벤트 안에 result값이 파일의 정보를 가지고 있다.
				console.log(e.target.result)
				$('#preview').attr('src', e.target.result);
			}
		}
	}
	function readURL1(input) {
		var file = input.files[0] //파일에 대한 정보
		console.log(file)
		if (file != '') {
			var reader = new FileReader();
			reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고
			reader.onload = function(e) { // 파일 로드한 값을 표현한다
			//e : 이벤트 안에 result값이 파일의 정보를 가지고 있다.
				console.log(e.target.result)
				$('#preview1').attr('src', e.target.result);
			}
		}
	}
	function readURL2(input) {
		const files = input.files //파일에 대한 정보
		console.log(files);

		/*if (file != '') {
			var reader = new FileReader();
			reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고
			reader.onload = function(e) { // 파일 로드한 값을 표현한다
			//e : 이벤트 안에 result값이 파일의 정보를 가지고 있다.
				console.log(e.target.result)
				$('#preview2').attr('src', e.target.result);
			}
		}*/
	}
	
	
</script>
</head>
<body>
    <!--
	<div id="wrap" style="width: 400px; margin: 0 auto;">
		<h1 style="text-align: center">레시피 등록 페이지</h1>
		<form method="post" action="${contextPath }/recipe/recipeBoardWrite" enctype="multipart/form-data">

			<br>
			<b>레시피 제목</b> <br>
			<input type="text" name="title" placeholder="레시피 제목"/>
			<br>
			<br>
			<b>레시피 설명</b> <br>
			<textarea name="recipeExplanation" rows="10" cols="50" placeholder="레시피에 대한 설명이 들어있는 영역"></textarea>
			<br>
			<b>완성된 요리 사진</b><br>
				<input type="file" name="image_file_name" onchange="readURL1(this);" />
				<img id="preview1" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" />
			<br>
			<b>레시피 팁</b> <br>
			<textarea name="recipeTip" rows="10" cols="50" placeholder="레시피에 대한 설명이 들어있는 영역"></textarea>
			<hr>

				<P>*상단 input 영역 까지는 고정된 입력 창*</P>
			<hr>
			<b>재료</b> <br>
			<input type="text" name="ingredient" placeholder="재료 요소1"/>
			<input type="text" name="ingredientAmount" placeholder="재료 수량1"/>
			<hr>

			<b>레시피 순서</b> <br>
			<textarea name="content" rows="10" cols="50" placeholder="레시피 내용"></textarea>
			<br>
			<br>
			<b>이미지파일 첨부</b><br>
			<input type="file" name="multiFile" onchange="readURL(this);" multiple />
			<img id="preview" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" />
			<input type="file" name="multiFile" onchange="readURL(this);" multiple />
			<img id="preview" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" />
			<hr><br>



			<%--<div>
				<b>이미지파일 첨부</b><br>
				<input type="file" name="image_file_name" onchange="readURL(this);" />
				<img id="preview" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" />
				<hr>
				<b>이미지파일 첨부</b><br>
				<input type="file" name="image_file_name2" onchange="readURL1(this);" />
				<img id="preview1" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" />
				<hr>
				<b>이미지파일 첨부</b><br>
				<input type="file" name="image_file_name3" onchange="readURL2(this);" />
				<img id="preview2" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" />
				<hr>
			</div>--%>
			<input type="submit" value="글쓰기" />
		</form>
	</div>
    -->
    <div id="wrap">
        <main id="container">
            <h2>레시피 등록</h2>
            <div class="sub_card"></div>
        </main>
    </div>
</body>
</html>
</html>