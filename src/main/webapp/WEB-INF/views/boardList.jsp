<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
       
    <link href="resources/css/tripLovers.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/boardList.css">
    <title></title>
   
</head>

<body>
    <header>
    </header>
   
   
                
    <div class="top_container">
            
            <div class="top_title">
                <h1 class="title"><a href="/project" style="color:#38CCFB"><img src="resources/img/title_img.jpg"></a></h1>
            </div>

            <div class="navi_bar">
                <div class="navi_bar_choice">
                <a href="weather" style="color:white">
                    <span>여행지 선택</span>
                </a>
                </div>
                <div class="navi_bar_choice" >
                    <a href="/project" style="color:white">
                    <span>식도락</span>
                </a>
                </div>
                <div class="navi_bar_choice">
                <a href="boardList" style="color:white">
                    <span >커뮤니티</span>
                </a>
                </div>
                

            </div>

        </div>

            <div class="board_container">
                
                <div class="board_box">
                    <div class="write">
                        <button type="button" id="write" onclick="location.href='boardForm';">글쓰기</button>
                    </div>
                    <table class="board_table" >
                        <colgroup>
                            <col style="width: 100px">
                            <col style="width: 750px">
                            <col style="width: 100px">
                            <col style="width: 100px">
                            <col style="width: 100px">
                        </colgroup>
                        <thead>
                            <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>글쓴이</th>
                            <th>작성일</th>
                            <th>조회</th>
                            </tr>
                        </thead>
                <!--페이징 처리 할 부분-->
                <c:if test="${totalNum-1 >= 0 }">
       			<c:if test="${fn:length(boardList) > 0 }">
                <c:if test="${firtstBoardNum >=0 }">
                <c:forEach var="i" begin="0" end="${totalNum-1}" step="1"  >
                <tbody>
                    <tr>
                        <td>${boardList[(lastNum-pageNum)*totalNum+i].num}</td>         
                        <td><a href="getBoard?num=${boardList[(lastNum-pageNum)*totalNum+i].num}"> ${boardList[(lastNum-pageNum)*totalNum+i].title}</a></td>
                        <td>${boardList[(lastNum-pageNum)*totalNum+i].writer}</td>
                        <td>${boardList[(lastNum-pageNum)*totalNum+i].simpleTime}</td>
                        <td>${boardList[(lastNum-pageNum)*totalNum+i].cnt}</td>
                    </tr>
                </tbody>
                </c:forEach>
                </c:if>
                </c:if>
                </c:if>
                
                <c:if test="${totalNum-1 >= 0 }">
        		<c:if test="${fn:length(boardList) > 0 }">
                <c:if test="${firtstBoardNum <0 }">
                <c:forEach var="i" begin="0" end="${lastBoardNum-1}" step="1"  >
                <tbody>
                    <tr>
                        <td>${boardList[boardNum-lastBoardNum+i].num}</td>         
                        <td><a href="getBoard?num=${boardList[boardNum-lastBoardNum+i].num}"> ${boardList[boardNum-lastBoardNum+i].title}</a></td>
                        <td>${boardList[boardNum-lastBoardNum+i].writer}</td>
                        <td>${boardList[boardNum-lastBoardNum+i].simpleTime}</td>
                        <td>${boardList[boardNum-lastBoardNum+i].cnt}</td>
                    </tr>
                </tbody>
                </c:forEach>
                </c:if>
                 </c:if>
        		</c:if>
            </table>
        </div>
        <div class="board_box2">

        </div>
    </div>
   </session>
   <!--페이징 처리 할 부분-->
   <c:if test="${maxNum-1 >= 0 }">
   <div class="page" >
   <c:if test="${(forPaging)<lastNum}">
   <a href="boardList?pageNum=${forPaging+maxNum}">[이전]</a>
   </c:if>
   <c:forEach var="i" begin="0" end="${maxNum-1}" step="1"  >
   	<a href="boardList?pageNum=${forPaging-i}">[${forPaging-i}]</a>
   </c:forEach>
   <c:if test="${(pageNum-maxNum)>0 }">
   <a href="boardList?pageNum=${forPaging-maxNum}">[다음]</a>
   </c:if>
   
   <%-- <c:forEach var="i" begin="0" end="${lastNum-1}" step="1"  >
   	<a href="boardList?pageNum=${lastNum-i}">[${lastNum-i}]</a>
   </c:forEach> --%>
   </div>
   </c:if>
</body>
</html>