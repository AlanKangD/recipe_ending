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
        <jsp:include page="navigation.jsp"/>

        <jsp:include page="../recipe/recipeBoardWriteForm.jsp"/>

    </div>
    <script>

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
