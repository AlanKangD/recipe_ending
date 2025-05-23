<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>글쓰기창</title>
</head>
<body>

    <div id="wrap">
        <main id="container" class="recipe_write">
            <form method="post" action="${contextPath }/recipe/recipeBoardWrite" enctype="multipart/form-data">
            <h2>레시피 등록</h2>
            <div class="sub_card">
                <div class="sub_card_inner">
                    <ul class="reci_cont">
                        <li>
                            <p class="cont_tit">레시피 제목</p>
                            <div class="input_group input_area">
                                  <input type="text" name="recipeName" class="input_text" placeholder="내용을 입력해 주세요.">
                            </div>
                        </li>
                        <li>
                            <p class="cont_tit">요리 소개</p>
                            <div class="input_writing_group input_area">
                                  <textarea name="recipeExplanation" placeholder="내용을 입력해주세요."></textarea>
                            </div>
                        </li>
                        <li>
                            <p class="cont_tit">카테고리</p>
                            <div class="select_wrap">
                                <div class="select_box tbl_select_box">
                                      <span class="select_box_arr"></span>
                                      <select class="select_box_value" name="recipeType">
                                          <c:forEach items="${categoryList}" var="categoryList">
                                              <option value="${categoryList.category_code}">${categoryList.category_code_nm}</option>
                                          </c:forEach>
                                            <%--<option value="null">종류별</option>
                                            <option value="0">한식</option>
                                            <option value="1">중식</option>
                                            <option value="2">양식</option>
                                            <option value="3">일식</option>
                                            <option value="4">NEW</option>--%>
                                      </select>
                                </div>
                                <%--<div class="select_box tbl_select_box">
                                      <span class="select_box_arr"></span>
                                      <select class="select_box_value" name="">
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
                                      <select class="select_box_value" name="">
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
                                </div>--%>
                                <%--<div class="select_box tbl_select_box">
                                      <span class="select_box_arr"></span>
                                      <select class="select_box_value" name="">
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
                                </div>--%>
                            </div>
                        </li>
                        <li>
                            <p class="cont_tit">요리정보</p>
                            <div class="select_wrap cook_inf">
                                <%--<div class="cook_inf_wrap">
                                    <span class="select_box_label">인원</span>
                                    <div class="select_box tbl_select_box">
                                          <span class="select_box_arr"></span>
                                          <select class="select_box_value" name="recipePerson">
                                                <option value="null">인원</option>
                                                <option value="1">1인분</option>
                                                <option value="2">2인분</option>
                                                <option value="3">3인분</option>
                                                <option value="4">4인분</option>
                                                <option value="5">5인분</option>
                                                <option value="6">6인분 이상</option>
                                          </select>
                                    </div>
                                </div>--%>
                                <div class="cook_inf_wrap">
                                    <div class="select_box tbl_select_box">
                                          <span class="select_box_arr"></span>
                                          <select class="select_box_value" name="recipeTime">
                                              <c:forEach items="${timeList}" var="timeList">
                                                  <option value="${timeList.category_code}">${timeList.category_code_nm}</option>
                                              </c:forEach>
                                                <%--<option value=null">시간</option>
                                                <option value="5">5분이내</option>
                                                <option value="10">10분이내</option>
                                                <option value="15">15분이내</option>
                                                <option value="20">20분이내</option>
                                                <option value="30">30분이내</option>
                                                <option value="60">60분이내</option>
                                                <option value="90">90분이내</option>
                                                <option value="">2시간이상</option>--%>

                                          </select>
                                    </div>
                                </div>
                                <%--<div class="cook_inf_wrap">
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
                                </div>--%>
                            </div>
                        </li>
                    </ul>
                    <div id="divMainPhotoUpload" class="">
                        <div id="divMainPhotoBox" class="img_upload_wrap" is_over="0">
                            <input type="file" id="imageFile" name="imageFile" style="display:none;">
                            <img id="preview" src="${contextPath}/assets/images/pic_upload.gif" style="cursor: pointer;" alt="이미지 업로드 사진" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="sub_card">
                <div class="card_desc"><i class="ico_info_circle ico_24"></i><p>재료가 남거나 부족하지 않도록 정확한 계량정보를 적어주세요.</p></div>
                <div id="test">
                <ul class="material_wrap" id="material_wrap">
                    <li class="material_inner">
                        <div class="input_group input_area material_tit">
                              <input type="text" name="recipeEtc" class="input_text" value="" placeholder="재료 묶음 이름">
                              <button type="button" class="btn btn_sm btn_secondary mat_innr_minus" onclick="deleteListWrap(this)"><i class="ico_del white ico_24"></i>재료/양념 묶음 삭제</button>
                        </div>
                        <div class="material_lst_wrap">
                            <ul id="material_lst" class="material_lst" name="material_lst">
                                <li>
                                    <input type="text" name="recipeEtcIngredient" class="input_text" placeholder="예) 돼지고기">
                                    <input type="text" name="recipeEtcQuantity" class="input_text" placeholder="예) 300g">
                                    <button class="btn btn_md btn_secondary btn_radius btn_icon material_lst_del" onclick="deleteList(this)"><i class="ico_del white ico_24"></i></button>
                                </li>
                                <li>
                                    <input type="text" name="recipeEtcIngredient" class="input_text" placeholder="예) 양배추">
                                    <input type="text" name="recipeEtcQuantity" class="input_text" placeholder="예) 1/2개">
                                    <button class="btn btn_md btn_secondary btn_radius btn_icon material_lst_del" onclick="deleteList(this)"><i class="ico_del white ico_24"></i></button>
                                </li>
                                <li>
                                    <input type="text" name="recipeEtcIngredient" class="input_text" placeholder="예) 소금">
                                    <input type="text" name="recipeEtcQuantity" class="input_text" placeholder="예) 1T">
                                    <button class="btn btn_md btn_secondary btn_radius btn_icon material_lst_del" onclick="deleteList(this)"><i class="ico_del white ico_24"></i></button>
                                </li>
                            </ul>
                            <div class="lst_plus_wrap">
                                <button type="button" id="addItemButton" class="btn btn_md btn_border btn_icon mat_lst_plus" onclick="addList(this)"><i class="ico_add black ico_24"></i></button>
                            </div>
                        </div>
                    </li>
                </ul>
                </div>
                <div class="material_inner_plus">
                    <button type="button" id="etc_reg" class="btn btn_md btn_border mat_innr_plus"><i class="ico_add black ico_24"></i>재료/양념 묶음 추가</button>
                </div>
            </div>
            <div class="sub_card order_card">
                <h3>요리순서</h3>
                <div class="card_desc mt_16"><i class="ico_info_circle ico_24"></i><p>요리의 맛이 좌우될 수 있는 중요한 부분은 빠짐없이 적어주세요.</p></div>
                <ul class="step_lst">
                    <li>
                        <p>Step<span class="stepTitNum">1</span></p>
                        <div class="input_writing_group input_area step_txt">
                            <textarea name="recipeContent" placeholder="내용을 입력해주세요."></textarea>
                        </div>
                        <div class="step_pic_wrap">
                            <input type="file" name="stepFile" class="step_upload" accept="image/* multiple">
                            <img class="step_pic_add" onclick="clickImage(this)" src="${contextPath}/assets/images/add_pic.gif" alt="step 이미지 추가">
                        </div>
                        <div class="del_btn_wrap">
                            <button class="btn btn_md btn_secondary btn_radius btn_icon material_lst_del" onclick="deleteList(this);"><i class="ico_del white ico_24"></i></button>
                        </div>
                    </li>
                </ul>
                <div class="step_plus_wrap">
                    <button type="button" class="btn btn_md btn_border step_plus" onclick="addStep(this)"><i class="ico_add black ico_24"></i>순서 추가</button>
                </div>
            </div>
            <div class="sub_card">
                <div class="sub_card_inner">
                    <ul class="reci_cont">
                        <li>
                            <p class="cont_tit">요리팁</p>
                            <div class="input_writing_group input_area">
                                <textarea name="recipeTip" placeholder="내용을 입력해주세요."></textarea>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="btn_group">
                    <button type="submit" class="btn btn_md btn_primary">레시피 저장</button>
                    <button type="button" class="btn피 btn_md btn_normal">취소</button>
                </div>
            </div>
            </form>
        </main>
    </div>
</body>
</html>
