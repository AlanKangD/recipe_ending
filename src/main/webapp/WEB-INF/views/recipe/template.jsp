<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>글쓰기창</title>
<link rel="stylesheet" href="${contextPath}/assets/css/reset.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/style.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/common.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/nav_style.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/jquery-ui.min.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/swiper.min.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/swiper.min.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/recipe_write.css" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="${contextPath}/assets/js/variable_func.js"></script>
</head>
<body>
    <div id="wrap">
        <nav class="menu_lst" style="z-index:1;">
            <h1>
                <a href="#" target="iframe">ALAN 레시피 </a>
            </h1>
            <dl>
                <dt class="depth1">레시피 관리</dt>
                <dd class="depth2">
                    <ul class="depth2_lst">
                        <li>
                            <a href="#" target="iframe">
                                <i class="ico_24 reci_upload"></i>
                                <span>레시피 등록</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" target="iframe">
                                <i class="ico_24 reci_modi"></i>
                                <span>레시피 수정</span>
                            </a>
                        </li>
                    </ul>
                </dd>
                <!--
                <dt class="depth1">Singer Group</dt>
                <dd class="depth2">
                  <ul class="depth2_lst">
                    <li>
                      <a href="#">Why Don't We</a>
                    </li>
                    <li>
                      <a href="#">IZ*ONE</a>
                    </li>
                  </ul>
                </dd>
                -->
            </dl>
            <div class="menubar_toggle_wrap">
                <button class="menubar_toggle">
                    <img src="${contextPath}/assets/images/ico_lnb_small.svg" alt="접기/펴기">
                </button>
            </div>
            <footer>
                © ChefAlan.&nbsp;<span class="uppercase">All Right Reserved</span>
            </footer>
        </nav>
        <main id="container" class="recipe_write">
            <form>
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
                            <img id="preview" src="${contextPath}/assets/images/pic_upload.gif" style="cursor: pointer;" alt="이미지 업로드 사진" />
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
                              <button type="button" class="btn btn_sm btn_secondary mat_innr_minus" onclick="deleteListWrap(this)"><i class="ico_del white ico_24"></i>재료/양념 묶음 삭제</button>
                        </div>
                        <div class="material_lst_wrap">
                            <ul id="material_lst" class="material_lst" name="material_lst">
                                <li>
                                    <input type="text" class="input_text" placeholder="예) 돼지고기">
                                    <input type="text" class="input_text" placeholder="예) 300g">
                                    <button class="btn btn_md btn_secondary btn_radius btn_icon material_lst_del" onclick="deleteList(this)"><i class="ico_del white ico_24"></i></button>
                                </li>
                                <li>
                                    <input type="text" class="input_text" placeholder="예) 양배추">
                                    <input type="text" class="input_text" placeholder="예) 1/2개">
                                    <button class="btn btn_md btn_secondary btn_radius btn_icon material_lst_del" onclick="deleteList(this)"><i class="ico_del white ico_24"></i></button>
                                </li>
                                <li>
                                    <input type="text" class="input_text" placeholder="예) 소금">
                                    <input type="text" class="input_text" placeholder="예) 1T">
                                    <button class="btn btn_md btn_secondary btn_radius btn_icon material_lst_del" onclick="deleteList(this)"><i class="ico_del white ico_24"></i></button>
                                </li>
                            </ul>
                            <div class="lst_plus_wrap">
                                <button type="button" id="addItemButton" class="btn btn_md btn_border btn_icon mat_lst_plus" onclick="addList(this)"><i class="ico_add black ico_24"></i></button>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="material_inner_plus">
                    <button type="button" class="btn btn_md btn_border mat_innr_plus"><i class="ico_add black ico_24"></i>재료/양념 묶음 추가</button>
                </div>
            </div>
            <div class="sub_card order_card">
                <h3>요리순서</h3>
                <div class="card_desc mt_16"><i class="ico_info_circle ico_24"></i><p>요리의 맛이 좌우될 수 있는 중요한 부분은 빠짐없이 적어주세요.</p></div>
                <ul class="step_lst">
                    <li>
                        <p>Step<span class="stepTitNum">1</span></p>
                        <div class="input_writing_group input_area step_txt">
                            <textarea name="" id="" placeholder="내용을 입력해주세요."></textarea>
                        </div>
                        <div class="step_pic_wrap">
                            <input type="file" class="step_upload" accept="image/* multiple">
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
                                <textarea name="" id="" placeholder="내용을 입력해주세요."></textarea>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="btn_group">
                    <button type="submit" class="btn btn_md btn_primary">레시피 저장</button>
                    <button type="button" class="btn btn_md btn_normal">취소</button>
                </div>
            </div>
            </form>
        </main>
    </div>
    <script>


        /*
        $("#filelist").on("change", function(event) {

            var file = event.target.files[0];

            var reader = new FileReader();
            reader.onload = function(e) {

                $(".step_pic_add").attr("src", e.target.result);
            }

            reader.readAsDataURL(file);
        });
        */
        /*
        function getStepImage(e) {
            const files = e.currentTarget.files;

            //파일 유형 검사
            [...files].forEach(file => {
                if (!file.type.match("image/.*")){
                    alert('이미지 파일만 업로드가 가능합니다.');
                    return;
                }
            })

            //파일 갯수 검사
            if([...files].length >= 2){
                alert('이미지는 한 장만 업로드가 가능합니다.');
                return;
            }
        }

        const stepUpload = document.querySelector('.step_upload');
        const picUpload = document.querySelector('.step_pic_wrap');

        picUpload.addEventListener('click', () => stepUpload.click());
        stepUpload.addEventListener('change', getStepImage);
        */
        /*
        function readURL{
            if(input.files && input.files[0]) {
                var reader = new fileReader();
                reader.onload = function(e){
                    $('.step_pic_add').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        $('.step_upload').change(function(){
            readURL(this);
        });
        */

    $(function(){
        $('.menu_lst h1 a').click(function(){
            $('.depth2_lst li').siblings().removeClass('active');
            sessionStorage.setItem('currentPage', $(this).attr('href'));
        });

        $('.depth2_lst li').click(function(){
            $('.depth2_lst li').siblings().removeClass('active');
            $(this).addClass('active')
            sessionStorage.setItem('currentPage', $(this).find('a').attr('href'));
        });

        $('.menubar_toggle').click(function(){
            $('.menu_lst').toggleClass('collapsed');
            $('#container').toggleClass('collapsed');
        });
    });
    </script>
</body>
</html>
