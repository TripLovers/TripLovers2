<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="resources/css/loginForm.css" rel="stylesheet">  
</head>

<c:if test="${login_id eq -1 }">
<script type="text/javascript">
alert("등록된 아이디가 아닙니다");
</script>
</c:if>

<c:if test="${login_pass eq -1 }">
<script type="text/javascript">
alert("비밀번호가 다릅니다");
</script>
</c:if>
<body>
   <div class="img_box">
        <a href="/project"><img src="resources/img/title_img.jpg"></a>
   </div>
    <div class = "login">
        <h2 class = "title"></h2>
      
        <form action="login" method="post">
        <p class = "id"><div class="id_box">ID:</div> <input type="text" name="id" class="id_input" maxlength="10" required placeholder="아이디를 입력하세요" /></p>
        <p class = "pw">PW: <input type="text" name="pass" class="pass_input" maxlength="15" required placeholder="암호를 입력하세요"/></p>
        <p class = "button"><button type="submit" class="submit">로그인 </button></p>
        </form>
        
    </div>
</body>
</html>