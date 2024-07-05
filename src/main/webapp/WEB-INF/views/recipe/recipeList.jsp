<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피 목록</title>
</head>
<body>
    <div id="wrap"> <!-- .wrapper_bo = BO레이아웃 관련, .recipe_lst = 레시피 목록 -->

        <main id="container" class="recipe_write">
            <h2>레시피 목록</h2>
            <div class="cont_card">
                <div class="tbl_utill">
                    <p class="tbl_info">검색결과 <span>10</span>건</p>
                    <div class="tbl_srch">
                        <div class="select_box tbl_select_box">
                              <span class="select_box_arr"></span>
                              <select class="select_box_value" name="" id="test1">
                                    <option value="">카테고리</option>
                                    <option value="">Option 1</option>
                                    <option value="">Option 2</option>
                                    <option value="">Option 3</option>
                                    <option value="">Option 4</option>
                              </select>
                        </div>
                        <div class="input_group">
                              <input type="text" id="test3" class="input_text" value="" placeholder="내용을 입력해 주세요.">
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
                            <th>요리명</th>
                            <th>카테고리</th>
                            <th>등록일</th>
                            <th>조회수</th>
                            <th>좋아요</th>
                            <th>삭제</th>
                        </tr>
                    </thead>
                    <tbody class="tbl_divider">
                    <c:choose>
                        <c:when test="${list != null}">
                            <c:forEach items="${list }" var="list">
                                <c:set var="listTotalCnt" value="${listTotalCnt -1 }"/>

                                <tr>
                                    <td>${listTotalCnt}</td>
                                    <td><a class="title" href="${contextPath}/recipe/recipeBoardWrite.do">${list.recipeName}</a></td>
                                    <td>${list.recipeType}</td>
                                    <td>${list.recipeRegDt}</td>
                                    <td>${list.recipeLike}</td>
                                    <td>${list.recipeViewCnt}</td>
                                    <td class="lst_del"><button type="button" class="btn btn_sm btn_white btn_icon"><i class="ico_close primary ico_24"></i></button></td>
                                </tr>
                            </c:forEach>


                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="7"><strong>등록된 글이 없습니다.</strong></td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
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
      /*  $('table tr td').on('click', function(e){
            location.href= $(this).siblings('.title').children('a').attr('href');
        });*/
    </script>
</body>
</html>