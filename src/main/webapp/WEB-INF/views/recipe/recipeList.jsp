<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피 목록</title>
<link rel="stylesheet" href="${contextPath}/assets/css/reset.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/style.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/common.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/sub.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/jquery-ui.min.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/swiper.min.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/swiper.min.css" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="${contextPath}/assets/js/variable_func.js"></script>
</head>
<body>
    <div id="wrap" class="wrapper_bo recipe_lst"> <!-- .wrapper_bo = BO레이아웃 관련, .recipe_lst = 레시피 목록 -->
        <h2>레시피 목록</h2>
        <main id="container">
            <div class="cont_card">
                <div class="tbl_utill">
                    <p class="tbl_info">검색결과 <span>10</span>건</p>
                    <div class="tbl_srch">
                        <div class="select_box tbl_select_box">
                              <span class="select_box_arr"></span>
                              <select class="select_box_value" name="" id="">
                                    <option value="">카테고리</option>
                                    <option value="">Option 1</option>
                                    <option value="">Option 2</option>
                                    <option value="">Option 3</option>
                                    <option value="">Option 4</option>
                              </select>
                        </div>
                        <div class="input_group">
                              <input type="text" id="" class="input_text" value="" placeholder="내용을 입력해 주세요.">
                              <button class="btn btn_sm btn_secondary btn_icon"><i class="ico_zoom white ico_24"></i></button>
                        </div>
                    </div>
                </div>
                <table class="tbl tbl_line reci_lst_tbl">
                    <caption></caption>
                    <colgroup>
                        <col width="5%">
                        <col>
                        <col width="10%">
                        <col width="10%">
                        <col width="15%">
                        <col width="10%">
                        <col width="5%">
                    </colgroup>
                    <thead>
                        <tr class="tbl_primary">
                            <th>No</th>
                            <th>제목</th>
                            <th>카테고리</th>
                            <th>등록일</th>
                            <th>조회수</th>
                            <th>좋아요</th>
                            <th>삭제</th>
                        </tr>
                    </thead>
                    <tbody class="tbl_divider">
                        <tr>
                            <td>1</td>
                            <td><a class="title" href="${contextPath}/recipe/index.do">둘이 먹다 셋이 죽어도 모를 정도의 기절초풍 김치전 레시피</a></td>
                            <td>밑반찬</td>
                            <td>2023.08.24</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td class="lst_del"><button type="button" class="btn btn_sm btn_white btn_icon"><i class="ico_close primary ico_24"></i></button></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><a href="#" class="title">네이버 레시피</a></td>
                            <td>국/탕</td>
                            <td>2023.12.28</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td><button type="button" class="btn btn_sm btn_white btn_icon"><i class="ico_close primary ico_24"></i></button></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><a href="#" class="title">대하 소금구이</a></td>
                            <td>양념/소스/잼</td>
                            <td>2023.12.28</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td><button type="button" class="btn btn_sm btn_white btn_icon"><i class="ico_close primary ico_24"></i></button></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td><a href="#" class="title">브로콜리 리조토</a></td>
                            <td>양식</td>
                            <td>2023.12.28</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td><button type="button" class="btn btn_sm btn_white btn_icon"><i class="ico_close primary ico_24"></i></button></td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td><a href="#" class="title">기분 좋은 커피 향이 솔솔 피어난다 - 장인의 루왁 커피</a></td>
                            <td>샐러드</td>
                            <td>2023.12.28</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td><button type="button" class="btn btn_sm btn_white btn_icon"><i class="ico_close primary ico_24"></i></button></td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td><a href="#" class="title">XC-000-23</a></td>
                            <td>스프</td>
                            <td>2023.12.28</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td><button type="button" class="btn btn_sm btn_white btn_icon"><i class="ico_close primary ico_24"></i></button></td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td><a href="#" class="title">(레드)불's 원샷</a></td>
                            <td>김치/젓갈/장류</td>
                            <td>2023.12.28</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td><button type="button" class="btn btn_sm btn_white btn_icon"><i class="ico_close primary ico_24"></i></button></td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td><a href="#" class="title">맛있는 스팸구이</a></td>
                            <td>차/음료/술</td>
                            <td>2023.12.28</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td><button type="button" class="btn btn_sm btn_white btn_icon"><i class="ico_close primary ico_24"></i></button></td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td><a href="#" class="title">우롱사태 보쌈</a></td>
                            <td>면/만두</td>
                            <td>2023.12.28</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td><button type="button" class="btn btn_sm btn_white btn_icon"><i class="ico_close primary ico_24"></i></button></td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td><a href="${contextPath}/recipe/index.do" class="title">냉동돼지 앞다리살 소금구이</a></td>
                            <td>메인반찬</td>
                            <td>2023.12.28</td>
                            <td>1,257,894,445,258</td>
                            <td>158,250</td>
                            <td><button type="button" class="btn btn_sm btn_white btn_icon"><i class="ico_close primary ico_24"></i></button></td>
                        </tr>
                    </tbody>
                </table>
                <div class="page_wrapper">
                    <div class="pagination" aria-label="Page Navigation">
                        <a href="javascript:void(0);" class="arr prev"><span>이전</span></a>
                        <a href="javascript:void(0);" class="page_link active"><span>1</span></a>
                        <a href="javascript:void(0);" class="page_link"><span>2</span></a>
                        <a href="javascript:void(0);" class="page_link"><span>3</span></a>
                        <a href="javascript:void(0);" class="page_link"><span>4</span></a>
                        <a href="javascript:void(0);" class="page_link"><span>5</span></a>
                        <a href="javascript:void(0);" class="arr next"><span>다음</span></a>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <script>
        $('table tr td').on('click', function(e){
            location.href= $(this).siblings('.title').children('a').attr('href');
        });
    </script>
</body>
</html>