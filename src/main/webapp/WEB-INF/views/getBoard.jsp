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
    <link rel="stylesheet" href="resources/css/getBoard.css">
    
</head>
<body>
<c:if test="${passCheck eq -1 }">
 <script >
	alert("비밀번호가 맞지 않습니다.")
</script>
</c:if>
    <header>
      
    </header>
   <session>
    <div class="board_container">
    	<form action="updateBoard" method="get">
        <div class="board_top">
            <div class="bp_title_box">
                <div class="bp_title">${board.title }</div>
            </div>
            <div class="id"> ${board.writer }
            </div>
            <div class="regdate">
                ${board.simpleTime  }
            </div>
            <div class="pass_box">
                <input type="password" name="pass" class="pass" placeholder="비밀번호"  required> 
            </div>
            <div class="cnt">조회수: ${board.cnt }</div>
            
        </div>
        <div class="board_middle_box">
            <div class="context">
                <textarea type="text" name="bp_context" cols="100" rows="20" maxlength="300" id="bp_title" autocomplete="off" disabled required>${board.content }</textarea>
            </div>
        </div>
        
       

        <div class="board_bottom_box">
            <div class="cancel">
            	<input type="hidden" name="num" value="${board.num}">
                <input type="submit" id="cancel" style="width:85px; height:40px" value="글수정">
            </div>
            <div class="post">
                <button type="button" onclick="location.href='boardList'" id="cancel" style="width:85px; height:40px" >돌아가기</button>
            </div>
        </div>
        </form>
        
                 
        <div class="comment_box">
        <c:if test="${totalNum-1 >= 0 }">
        <c:if test="${fn:length(boardCommentList) > 0 }">
        <c:if test="${firtstBoardNum >=0 }"> 
        <c:forEach var="i" begin="0" end="${totalNum-1}" step="1"  >
        
        	<table class="board_table" >
		        <colgroup>
		                 <col style="width: 150px">
		                 <col style="width: 900px">
		                 <col style="width: 150px">
		        </colgroup>
		        <thead>
		            <tr>
		           </tr>
		        </thead>
		        <tbody>
		               <tr>
		                   <td>${boardCommentList[(lastNum-pageNum)*totalNum+i].comment_id }</td>    
		                   <td>${boardCommentList[(lastNum-pageNum)*totalNum+i].comment_content } </td>
		                   <td>${boardCommentList[(lastNum-pageNum)*totalNum+i].simpleTime } </td>
		                      
		               </tr>
		         </tbody>
		         <hr>
        </c:forEach>
        </c:if>
        </c:if>
        </c:if>
         
        <c:if test="${totalNum-1 >= 0 }">
        <c:if test="${fn:length(boardCommentList) > 0 }">
         <c:if test="${firtstBoardNum <0 }">
       
        <c:forEach var="i" begin="0" end="${fn:length(boardCommentList)-(lastNum-pageNum)*totalNum}" step="1"  >
        
        	<table class="board_table" >
		        <colgroup>
		                 <col style="width: 150px">
		                 <col style="width: 900px">
		                 <col style="width: 150px">
		        </colgroup>
		        <thead>
		            <tr>
		           </tr>
		        </thead>
		        <tbody>
		               <tr>
		                   <td>${boardCommentList[(lastNum-pageNum)*totalNum+i].comment_id }</td>    
		                   <td>${boardCommentList[(lastNum-pageNum)*totalNum+i].comment_content } </td>
		                   <td>${boardCommentList[(lastNum-pageNum)*totalNum+i].simpleTime } </td>
		                      
		               </tr>
		         </tbody>
		         <hr>
        </c:forEach>
        </c:if>
        </c:if>
        </c:if>
        
        
        
        
        
        
        </table>
        </div>
        <c:if test="${maxNum-1 >= 0 }">
        <div class="page" > 
        <c:if test="${(forPaging)<lastNum}">
	   <a href="getBoard?pageNum=${forPaging+maxNum}&num=${board.num }">[이전]</a>
	   </c:if>
	   <c:forEach var="i" begin="0" end="${maxNum-1}" step="1"  >
	   	<a href="getBoard?pageNum=${forPaging-i}&num=${board.num }">[${forPaging-i}]</a>
	   </c:forEach>
	   <c:if test="${(pageNum-maxNum)>0 }">
	   <a href="getBoard?pageNum=${forPaging-maxNum}&num=${board.num }">[다음]</a>
	   </c:if>
	  
	   </div>
	    </c:if>
	   
        <div class="comment_write">
            <form action="insertBoardComment?num=${board.num }" method="post">
                <div class="comment_id_pass_box">
                    <p class="comment_id"><input type="text" name = comment_id  placeholder="아이디" maxlength="10" style="width:140px; height:25px;"></p>
                    <p class="comment_pass" > <input type="password" name = comment_pass placeholder="비밀번호" style="width:140px; height:25px"></p>
                </div>
                <div class="comment_content">
                    <textarea type="text" name="comment_content" cols="103" rows="4" id="comment_content" maxlength="100" placeholder="내용을 입력해 주세요" autocomplete="off" required></textarea>
                </div>
                <div class="comment_submit">
                    <input type="submit" id="comment_submit" style="width:85px; height:40px" value="등록">
                </div>
            </form>
        </div>
    </div>
   </session>
</body>
</html>