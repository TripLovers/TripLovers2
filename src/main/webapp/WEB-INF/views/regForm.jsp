<%@page import="org.springframework.web.util.JavaScriptUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/regForm.css">
    <title></title>
   <link rel="icon" href="img/img1.jpg"/>
</head>
<c:if test="${id eq -1}">
	<script>
	alert("중복된 아이디입니다.");
	</script>
</c:if>

<c:if test="${phone eq-1}">
	<script>
	alert("하이픈을 빼고 입력해 주세요");
	</script>
</c:if>

<body>
    <div>
        <a href="/project"><img class="home_img" src="resources/img/title_img.jpg" alt="logo"></a>
            <form action="/project/signup" method="POST" >
       
                <ul>
                    <li><label>아이디<br>
                        <input type="text" id="id" name="id" size="50" maxlength="20" required>
                    </label></li>

                    <li><label >비밀번호<br>
                        <input type="password" id="pass" name="pass" size="50" maxlength="20" required >
                    </label></li>

                    <li><label>비빌번호 확인<br>
                        <input type="password" id="repass" name="repass"  size="50" maxlength="20" required>
                    </label></li>

                    <li><label >생년월일<br>
                        <input type="text" name="year"id="year"  maxlength="4" size="15" required>
                    </label>
                    <select id="month" name="month"  maxlength="4" style="width:100px; ">
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
                        <input type="text" id="day" name="day" size="15"  maxlength="4" required>
                    </li>

                    <li><label>성별<br><select id="sex" name="sex"style="width:410px;">
                        <option value="male" >남자</option>
                        <option value="female" >여자</option>
                    </select></label></li>

                    <li><label>이메일<br>
                        <input type="email" id="email" name="email" size="50"  maxlength="50" required>
                    </label></li>

                    <li><label>휴대전화<br>
                        <input type="text" id="tel" name="phone"size="50"  maxlength="10" placeholder="하이픈(-) 없이 입력해주세요" required>
                    </label></li>
                    <li>
                        <button type="submit" class="sub" style="width:415px; height:50px">회원가입</button>
                    </li>
                </ul>
            </form>
    </div>
  
    
</body>
</html>