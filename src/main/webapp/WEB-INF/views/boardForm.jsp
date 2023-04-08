<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <link rel="stylesheet" href="resources/css/boardForm.css">
    <title></title>
   
</head>
<c:if test="${sessionId eq null}">
<script type="text/javascript">
alert("로그인을 해주세요");
history.go(-1);
</script>
</c:if>
<body>
    <header>
    </header>
   <session>
    <div class="board_container">
        <form action="insertBoard" method="post">
            <div class="board_top">
                <div class="nickname_pass_box">
                    <input type="text" name="writer" class="id" placeholder="작성자" required>
                    <input type="password" name="pass" class="pass" placeholder="비밀번호" required>
                </div>

                <div class="bp_title_box">
                    <input type="text" name="title" class="bp_title" placeholder="제목" required>
                </div>
            </div>
        
            <div class="board_middle_box">
                <div class="context">
                    <textarea type="text" name="content" cols="100" rows="20" maxlength="300" id="bp_title" autocomplete="off" placeholder="내용" required></textarea>
                </div>
            </div>
            <div class="board_bottom_box">
                 <div class="submit">
                   
                    <button type="submit" id="submit" style="width:85px; height:40px" >등록</button>
                </div>
                <div class="cancel">
                    <button type="button" onclick="location.href='boardList'" id="cancel" style="width:85px; height:40px" >취소</button>
                </div>
            </div>
        </form> 
    </div>
   </session>
</body>
</html>