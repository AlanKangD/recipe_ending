package com.care.root.common.util;

public class Paging {

    /**
     * <pre>페이징 처리 모듈</pre>
     * 현재 페이지와 총 페이지 수만 보여준다.
     * showListRow 를 1로 넘겨준다.
     *
     * @param totalCnt
     * @param showListRow
     * @param showPageNum
     * @param pageNo
     * @return String
     */
    public static String getPage(int totalCnt, int showListRow, int showPageNum, int pageNo){

        if (totalCnt > 0) {
            StringBuffer sb = new StringBuffer();
            int totalpage = (int) Math.ceil((double) totalCnt / showListRow);
            int totalScreen = (int) Math.ceil((double) totalpage / showPageNum);
            int nowScreen = (int) Math.ceil((double) pageNo / showPageNum);

            int prevScreenPage = 0;
            int nextScreenPage = 0;

            int startPage = 0;

            if (nowScreen == 1) {
                startPage = 1;
                prevScreenPage = startPage;
            } else {
                startPage = (nowScreen - 1) * showPageNum + 1;
                prevScreenPage = startPage - 1;
            }

            int endPage = 0;

            if (nowScreen == totalScreen) {
                endPage = nowScreen * showPageNum;
                nextScreenPage = endPage;
            } else {
                endPage = nowScreen * showPageNum;
                nextScreenPage = endPage + 1;

            }

            sb.append("<div class='pagination' aria-label='Page Navigation'>\n");
            sb.append("<a href='javascript:pageClick(" + prevScreenPage + ");' class='arr prev'><span>이전</span></a>");

            for (int i = startPage; i < endPage + 1; i++) {
                if (i == pageNo) {
                    sb.append("<a href='javascript:void(0);' class='page_link active'><span>"+i+"</span></a>");
                } else {
                    sb.append("<a href='javascript:pageClick(" + i + ");' class='page_link'><span>" + i + "</span></a>");
                }
                if (i == totalpage) {
                    nextScreenPage = totalpage;
                    break;
                }
            }

            sb.append("<a href='javascript:pageClick(" + nextScreenPage + ");' class='arr next'><span>다음</span></a>");
            //sb.append("<li><a href='javascript:pageClick(" + totalpage + ");'>&raquo;</a></li>");
            sb.append("</div>");

            return sb.toString();
        }else{
            return "";
        }
    }

    /**
     * <pre>페이징 처리 모듈</pre>
     * 현재 페이지와 총 페이지 수만 보여준다.
     *
     * @param totalCnt
     * @param showListRow
     * @param showPageNum
     * @param pageNo
     * @return String
     */
    public static String getPageForAdmin(int totalCnt, int showListRow, int showPageNum, int pageNo){

        if (totalCnt > 0) {
            StringBuffer sb = new StringBuffer();
            int totalpage = (int) Math.ceil((double) totalCnt / showListRow);
            int totalScreen = (int) Math.ceil((double) totalpage / showPageNum);
            int nowScreen = (int) Math.ceil((double) pageNo / showPageNum);

            int prevScreenPage = 0;
            int nextScreenPage = 0;

            int startPage = 0;

            if (nowScreen == 1) {
                startPage = 1;
                prevScreenPage = startPage;
            } else {
                startPage = (nowScreen - 1) * showPageNum + 1;
                prevScreenPage = startPage - 1;
            }

            int endPage = 0;

            if (nowScreen == totalScreen) {
                endPage = nowScreen * showPageNum;
                nextScreenPage = endPage;
            } else {
                endPage = nowScreen * showPageNum;
                nextScreenPage = endPage + 1;

            }

            sb.append("<a href='javascript:pageClick(1);'>FIRST</a>");
            sb.append("<a href='javascript:pageClick(" + prevScreenPage + ");'>PREV</a>");
            sb.append("<span>");
            for (int i = startPage; i < endPage + 1; i++) {
                if (i == pageNo) {
                    sb.append("<strong>"+i+"</strong>");
                } else {
                    sb.append("<a href='javascript:pageClick(" + i + ");'>" + i + "</a>");
                }
                if (i == totalpage) {
                    nextScreenPage = totalpage;
                    break;
                }
            }
            sb.append("</span>");
            sb.append("<a href='javascript:pageClick(" + nextScreenPage + ");'>NEXT</a>");
            sb.append("<a href='javascript:pageClick(" + totalpage + ");'>LAST</a>");

            return sb.toString();
        }else{
            return "";
        }
    }

}
