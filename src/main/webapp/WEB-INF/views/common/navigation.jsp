<%--
  Created by IntelliJ IDEA.
  User: alankang
  Date: 2023/12/31
  Time: 1:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
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
              <i class="ico_24 reci_modi"></i>
              <span>레시피 목록</span>
            </a>
          </li>
          <li>
            <a href="#" target="iframe">
              <i class="ico_24 reci_upload"></i>
              <span>레시피 등록</span>
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
