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
        
                
        
       
    </div>
   </session>
</body>
</html>