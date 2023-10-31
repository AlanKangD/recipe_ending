<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>글쓰기창</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${contextPath}/assets/css/reset.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/style.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/jquery-ui.min.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/swiper.min.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/swiper.min.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/recipe_write.css" />
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
        <main id="container" class="recipe_write">
            <h2>레시피 등록</h2>
            <div class="sub_card">
                <div class="sub_card_inner">
                    <ul class="reci_cont">
                        <li>
                            <p class="cont_tit">레시피 제목</p>
                            <div class="input_group input_area">
                                  <input type="text" id="" class="input_text" value="" placeholder="내용을 입력해 주세요.">
                            </div>
                        </li>
                        <li>
                            <p class="cont_tit">요리 소개</p>
                            <div class="input_writing_group input_area">
                                  <textarea name="" id="" placeholder="내용을 입력해주세요."></textarea>
                            </div>
                        </li>
                        <li>
                            <p class="cont_tit">카테고리</p>
                            <div class="select_wrap">
                                <div class="select_box tbl_select_box">
                                      <span class="select_box_arr"></span>
                                      <select class="select_box_value" name="" id="">
                                            <option value="">종류별</option>
                                            <option value="">밑반찬</option>
                                            <option value="">메인반찬</option>
                                            <option value="">국/탕</option>
                                            <option value="">찌개</option>
                                            <option value="">디저트</option>
                                            <option value="">면/만두</option>
                                            <option value="">밥/죽/떡</option>
                                            <option value="">퓨전</option>
                                            <option value="">김치/젓갈/장류</option>
                                            <option value="">양념/소스/잼</option>
                                            <option value="">양식</option>
                                            <option value="">샐러드</option>
                                            <option value="">스프</option>
                                            <option value="">빵</option>
                                            <option value="">과자</option>
                                            <option value="">차/음료/술</option>
                                            <option value="">기타</option>
                                      </select>
                                </div>
                                <div class="select_box tbl_select_box">
                                      <span class="select_box_arr"></span>
                                      <select class="select_box_value" name="" id="">
                                            <option value="">상황별</option>
                                            <option value="">일상</option>
                                            <option value="">초스피드</option>
                                            <option value="">손님접대</option>
                                            <option value="">술안주</option>
                                            <option value="">다이어트</option>
                                            <option value="">도시락</option>
                                            <option value="">영양식</option>
                                            <option value="">간식</option>
                                            <option value="">야식</option>
                                            <option value="">푸드스타일링</option>
                                            <option value="">해장</option>
                                            <option value="">명절</option>
                                            <option value="">이유식</option>
                                            <option value="">기타</option>
                                      </select>
                                </div>
                                <div class="select_box tbl_select_box">
                                      <span class="select_box_arr"></span>
                                      <select class="select_box_value" name="" id="">
                                            <option value="">방법별</option>
                                            <option value="">볶음</option>
                                            <option value="">끓이기</option>
                                            <option value="">부침</option>
                                            <option value="">조림</option>
                                            <option value="">무침</option>
                                            <option value="">비빔</option>
                                            <option value="">찜</option>
                                            <option value="">절임</option>
                                            <option value="">튀김</option>
                                            <option value="">삶기</option>
                                            <option value="">굽기</option>
                                            <option value="">데치기</option>
                                            <option value="">회</option>
                                            <option value="">기타</option>
                                      </select>
                                </div>
                                <div class="select_box tbl_select_box">
                                      <span class="select_box_arr"></span>
                                      <select class="select_box_value" name="" id="">
                                            <option value="">재료별</option>
                                            <option value="">소고기</option>
                                            <option value="">돼지고기</option>
                                            <option value="">닭고기</option>
                                            <option value="">육류</option>
                                            <option value="">채소류</option>
                                            <option value="">해물류</option>
                                            <option value="">달걀/유제품</option>
                                            <option value="">가공식품류</option>
                                            <option value="">쌀</option>
                                            <option value="">밀가루</option>
                                            <option value="">건어물류</option>
                                            <option value="">버섯류</option>
                                            <option value="">과일류</option>
                                            <option value="">콩/견과류</option>
                                            <option value="">곡류</option>
                                            <option value="">기타</option>
                                      </select>
                                </div>
                            </div>
                        </li>
                        <li>
                            <p class="cont_tit">요리정보</p>
                            <div class="select_wrap cook_inf">
                                <div class="cook_inf_wrap">
                                    <span class="select_box_label">인원</span>
                                    <div class="select_box tbl_select_box">
                                          <span class="select_box_arr"></span>
                                          <select class="select_box_value" name="" id="">
                                                <option value="">인원</option>
                                                <option value="">1인분</option>
                                                <option value="">2인분</option>
                                                <option value="">3인분</option>
                                                <option value="">4인분</option>
                                                <option value="">5인분</option>
                                                <option value="">6인분 이상</option>
                                          </select>
                                    </div>
                                </div>
                                <div class="cook_inf_wrap">
                                    <span class="select_box_label">시간</span>
                                    <div class="select_box tbl_select_box">
                                          <span class="select_box_arr"></span>
                                          <select class="select_box_value" name="" id="">
                                                <option value="">시간</option>
                                                <option value="">5분이내</option>
                                                <option value="">10분이내</option>
                                                <option value="">15분이내</option>
                                                <option value="">20분이내</option>
                                                <option value="">30분이내</option>
                                                <option value="">60분이내</option>
                                                <option value="">90분이내</option>
                                                <option value="">2시간이내</option>
                                                <option value="">2시간이상</option>
                                          </select>
                                    </div>
                                </div>
                                <div class="cook_inf_wrap">
                                    <span class="select_box_label">난이도</span>
                                    <div class="select_box tbl_select_box">
                                          <span class="select_box_arr"></span>
                                          <select class="select_box_value" name="" id="">
                                                <option value="">난이도</option>
                                                <option value="">아무나</option>
                                                <option value="">초급</option>
                                                <option value="">중급</option>
                                                <option value="">고급</option>
                                                <option value="">신의 경지</option>
                                          </select>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div id="divMainPhotoUpload" class="">
                        <div id="divMainPhotoBox" class="img_upload_wrap" is_over="0">
                            <input type="file" id="imageFile" style="display:none;">
                            <img id="preview" src="${contextPath}/assets/images/pic_upload.gif" alt="이미지 업로드 사진" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="sub_card">
                <div class="card_desc"><i class="ico_info_circle ico_24"></i><p>재료가 남거나 부족하지 않도록 정확한 계량정보를 적어주세요.</p></div>
                <ul class="material_wrap">
                    <li class="material_inner">
                        <div class="input_group input_area material_tit">
                              <input type="text" id="" class="input_text" value="" placeholder="재료 묶음 이름">
                              <button class="btn btn_sm btn_secondary mat_innr_minus"><i class="ico_del white ico_24"></i>재료/양념 묶음 삭제</button>
                        </div>
                        <ul class="material_lst">
                            <li>
                                <input type="text" class="input_text" placeholder="예) 돼지고기">
                                <input type="text" class="input_text" placeholder="예) 300g">
                                <button id="material_lst_del" class="btn btn_md btn_secondary btn_radius btn_icon material_lst_del"><i class="ico_del white ico_24"></i></button>
                            </li>
                            <li>
                                <input type="text" class="input_text" placeholder="예) 양배추">
                                <input type="text" class="input_text" placeholder="예) 1/2개">
                                <button id="material_lst_del" class="btn btn_md btn_secondary btn_radius btn_icon material_lst_del"><i class="ico_del white ico_24"></i></button>
                            </li>
                            <li>
                                <input type="text" class="input_text" placeholder="예) 참기름">
                                <input type="text" class="input_text" placeholder="예) 1T">
                                <button id="material_lst_del" class="btn btn_md btn_secondary btn_radius btn_icon material_lst_del"><i class="ico_del white ico_24"></i></button>
                            </li>
                            <li class="lst_plus_wrap">
                                <button class="btn btn_md btn_border btn_icon mat_lst_plus"><i class="ico_add black ico_24"></i></button>
                            </li>
                        </ul>
                    </li>
                    <li class="material_inner_plus">
                        <button class="btn btn_md btn_border mat_innr_plus"><i class="ico_add black ico_24"></i>재료/양념 묶음 추가</button>
                    </li>
                </ul>
            </div>
        </main>
    </div>
</body>
<script>
$(function(){
    $("#preview").on("click", function() {
        $('#imageFile').trigger('click');
    });
    $("#imageFile").on("change", function(event) {

        var file = event.target.files[0];

        var reader = new FileReader();
        reader.onload = function(e) {

            $("#preview").attr("src", e.target.result);
        }

        reader.readAsDataURL(file);
    });
});


// 확장자가 이미지 파일인지 확인
function isImageFile(file) {

    var ext = file.name.split(".").pop().toLowerCase(); // 파일명에서 확장자를 가져온다.

    return ($.inArray(ext, ["jpg", "jpeg", "gif", "png"]) === -1) ? false : true;
}

// 파일의 최대 사이즈 확인
function isOverSize(file) {

    var maxSize = 3 * 1024 * 1024; // 3MB로 제한

    return (file.size > maxSize) ? true : false;
}

//재료 추가 삭제
</script>
</html>
