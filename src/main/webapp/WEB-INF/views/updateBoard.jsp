<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <link rel="stylesheet" href="resources/css/boardForm.css">
    <title></title>
   
</head>
<body>
    <header>
    </header>
   <session>
    <div class="board_container">
        <form action="updateBoardProc" method="post">
            <div class="board_top">
                <div class="nickname_pass_box">
                    <input type="text" name="writer" class="id" value="${board.writer }" required>
                    <input type="password" name="pass" class="pass" placeholder="비밀번호"  required>
                    <input type="hidden" name="num" value="${board.num }">
                </div>

                <div class="bp_title_box">
                    <input type="text" name="title" class="bp_title" value=${board.title } required>
                </div>
            </div>
        
            <div class="board_middle_box">
                <div class="context">
                    <textarea type="text" name="content" cols="90" rows="20" maxlength="300" id="bp_title" autocomplete="off" placeholder="" required>${board.content }</textarea>
                </div>
            </div>
            <div class="board_bottom_box">
                <div class="cancel">
                    <button type="button" id="cancel" onclick="location.href='deleteBoard?num=${board.num}'"  style="width:85px; height:40px" >글삭제</button>
                </div>
                <div class="post">
                <button type="submit" id="post" style="width:85px; height:40px" >등록</button>
                </div>
            </div>
        </form> 
    </div>
   </session>
</body>
</html>