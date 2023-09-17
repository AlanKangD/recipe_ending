<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ChefKang_recipe_BO</title>
    <link rel="stylesheet" href="${contextPath}/assets/css/reset.css" />
    <link rel="stylesheet" href="${contextPath}/assets/css/nav_style.css" />
</head>
<body class="menu">
<div id="wrap">
    <nav class="menu_lst">
        <h1>
            <a href="#" target="iframe">오만팔만개의 레시피</a>
        </h1>
        <dl>
            <dt class="depth1">레시피 관리</dt>
            <dd class="depth2">
                <ul class="depth2_lst">
                    <li>
                        <a href="#" target="iframe">
                            <i class="ico_24 reci_upload"></i>
                            레시피 등록
                        </a>
                    </li>
                    <li>
                        <a href="#" target="iframe">
                            <i class="ico_24 reci_modi"></i>
                            레시피 수정
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
        <footer>
            © ChefKang.&nbsp;<span class="uppercase">All Right Reserved</span>
        </footer>
    </nav>
    <iframe src="/index" frameborder="0" class="iframe" name="iframe"></iframe>
</div>
<script src="${contextPath}/assets/js/jquery-3.6.0.min.js"></script>
<script>
    $(window).on('load',function(){
        var sessionCurrent = sessionStorage.getItem('currentPage');
        if(!sessionCurrent){
            $('.iframe').attr('src', './html/main.html');
        }else if(sessionCurrent == './html/main.html'){
            $('.iframe').attr('src', './html/main.html');
        }
    });

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
    });
</script>
</body>
</html>