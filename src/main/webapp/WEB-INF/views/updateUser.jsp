<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/updateUser.css">
    <title></title>
</head>
<body>
<c:if test="${messageId eq -1}">
	<script>
	alert("중복된 아이디입니다.");
	</script>
</c:if>

<c:if test="${messagePhone eq-1}">
	<script>
	alert("하이픈을 빼고 입력해 주세요");
	</script>
</c:if>
<div class="img_box">
        <a href="/project"><img src="resources/img/title_img.jpg"></a>
    </div>
<div class = "login">
	
    <h2 class = "title"></h2>
        <hr>
            <form action="updateUserproc" method="POST" >
                
                <ul>
                    <li><label>아이디<br>
                        <input type="text" id="id" name="id" size="50" maxlength="20"  value="${user.id }" disabled="disabled">
                    	<input type="hidden" name="id" value="${user.id }">
                    </label></li>

                    <li><label >비밀번호<br>
                        <input type="password" id="pass" name="pass" size="50" maxlength="20" required value="${user.pass }">
                    </label></li>

                    <li><label >생년월일<br>
                        <input type="text" name="year"id="year"  maxlength="4" size="15" required value="${user.year }">
                    </label>
                    <select id="month" name="month"  maxlength="4" style="width:90px;" >
                        <option value="1">1월</option>
                        <option value="2">2월</option>
                        <option value="3">3월</option>
                        <option value="4">4월</option>
                        <option value="5">5월</option>
                        <option value="6">6월</option>
                        <option value="7">7월</option>
                        <option value="8">8월</option>
                        <option value="9">9월</option>
                        <option value="10">10월</option>
                        <option value="11">11월</option>
                        <option value="12">12월</option>
                    </select>
                        <input type="text" id="day" name="day" size="15"  maxlength="4" required value="${user.day }">
                    </li>

                    <li><label>성별<br><select id="sex" name="sex"style="width:370px;" value="${user.sex }">
                        <option value="male" >남자</option>
                        <option value="female" >여자</option>
                    </select></label></li>

                    <li><label>이메일<br>
                        <input type="email" id="email" name="email" size="50"  maxlength="50" required value="${user.email }">
                    </label></li>

                    <li><label>휴대전화<br>
                        <input type="text" id="tel" name="phone"size="50"  maxlength="10" placeholder="하이픈(-) 없이 입력해주세요" required value="${user.phone }">
                    </label></li>
                    
                    <p class = "button"><button type="submit">수정</button><button style="margin: 0px 0px 0px 10px" onclick="location.href='deleteUser'">회원탈퇴</button></p>
                    
                    
                </ul>
        </form>
        <hr>
</div>
</body>
</html>