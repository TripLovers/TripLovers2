<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="resources/css/weatherpage.css" rel="stylesheet" /> 
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">   
    <link href="resources/css/tripLovers.css" rel="stylesheet">
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
    <title>Document</title>
</head>
<body>
    <div class="container">
    
        <div class="top_container pt-2">
			
			<div class="top_title">
				<h1 class="title"><a href="/project" style="color:#38CCFB">Trip Lovers</a></h1>
			</div>

			<div class="navi_bar">
				<div class="navi_bar_choice">
				<a href="weather">
					<span>여행지 선택</span>
				</a>
				</div>
				<div class="navi_bar_choice">
					<a href="">
					<span >식도락</span>
					</a>
				</div>
				<div class="navi_bar_choice">
				<a href="boardList">
					<span >커뮤니티</span>
				</a>
				</div>
				

			</div>
		

    </div>
    
    <div class="container2">
	    <div class="container2_imgBox">
	    	<img class="container2_img" src="resources/img/weather_img.jpg" >
	    </div>
    </div>
    
    
    
    <div class="container3">
        <div class="container3_text">날씨</div>
        <div class="container3_weather">    
            <div class="weather_container1">
            
                <div class="weather1">
                    <div class="today">
                    <div class="today_imgBox">
                    <c:if  test="${weather.weatherCode[0] eq '100'}">
                        	<a href="weather?weatherCode=100" style="left:'1vw'" >
                            <img class="today_img "src="resources/img/100.jpg" >
                        </a>
                    </c:if>  
                     <c:if  test="${weather.weatherCode[0] eq '101'}">
                        <a href="weather?weatherCode=101">
                            <img class="today_img "src="resources/img/101.jpg" >
                        </a>
                    </c:if>  
                     <c:if  test="${weather.weatherCode[0] eq '110'}">
                        <a href="weather?weatherCode=110">
                            <img class="today_img "src="resources/img/110.jpg" >
                        </a>
                    </c:if>  
                    <c:if  test="${weather.weatherCode[0] eq '200'}">
                        <a href="weather?weatherCode=200">
                            <img class="today_img "src="resources/img/200.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[0] eq '201'}">
                        <a href="weather?weatherCode=201">
                            <img class="today_img "src="resources/img/201.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[0] eq '202'}">
                        <a href="weather?weatherCode=202">
                            <img class="today_img "src="resources/img/202.jpg" >
                        </a>
                    </c:if> 

                    <c:if  test="${weather.weatherCode[0] eq '300'}">
                        <a href="weather?weatherCode=300">
                            <img class="today_img "src="resources/img/300.jpg" >
                        </a>
                    </c:if> 
                     <c:if  test="${weather.weatherCode[0] eq '400'}">
                        <a href="weather?weatherCode=400">
                            <img class="today_img "src="resources/img/400.jpg" >
                        </a>
                    </c:if> 
                    </div>
                    
                    <div class="today_Date">
                    ${weather.simpleDate[0]}
                    </div>
                    </div>
                </div>
                <div class="weather2">
                    <div class="tomorrow">
                    <div class="tomorrow_imgBox">
                        <c:if  test="${weather.weatherCode[1] eq '100'}">
                        <a href="weather?weatherCode=100">
                            <img class="tomorrow_img "src="resources/img/100.jpg" >
                        </a>
                    </c:if>  
                    
                     <c:if  test="${weather.weatherCode[1] eq '101'}">
                        <a href="weather?weatherCode=101">
                            <img class="tomorrow_img "src="resources/img/101.jpg" >
                        </a>
                    </c:if>  
                     <c:if  test="${weather.weatherCode[1] eq '110'}">
                        <a href="weather?weatherCode=110">
                            <img class="tomorrow_img "src="resources/img/110.jpg" >
                        </a>
                    </c:if>  
                    <c:if  test="${weather.weatherCode[1] eq '200'}">
                        <a href="weather?weatherCode=200">
                            <img class="tomorrow_img "src="resources/img/200.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[1] eq '201'}">
                        <a href="weather?weatherCode=201">
                            <img class="tomorrow_img "src="resources/img/201.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[1] eq '202'}">
                        <a href="weather?weatherCode=202">
                            <img class="tomorrow_img "src="resources/img/202.jpg" >
                        </a>
                    </c:if>

                    <c:if  test="${weather.weatherCode[1] eq '300'}">
                        <a href="weather?weatherCode=300">
                            <img class="tomorrow_img "src="resources/img/300.jpg" >
                        </a>
                    </c:if> 
                     <c:if  test="${weather.weatherCode[1] eq '400'}">
                        <a href="weather?weatherCode=400">
                            <img class="tomorrow_img "src="resources/img/400.jpg" >
                        </a>
                    </c:if> 
                    </div>
                    <div class="tomorrow_Date">
                    ${weather.simpleDate[1]}
                    </div>           
                    </div>
                </div>
            </div>
            <div class="weather_container2">
                <div class="weather3">
                    <div class="threedays">
                        <c:if  test="${weather.weatherCode[2] eq '100'}">
                        <a href="weather?weatherCode=100">
                            <img class="threedays_img "src="resources/img/100.jpg" >
                        </a>
                    </c:if>  
                     <c:if  test="${weather.weatherCode[2] eq '101'}">
                        <a href="weather?weatherCode=101">
                            <img class="threedays_img "src="resources/img/101.jpg" >
                        </a>
                    </c:if>  
                     <c:if  test="${weather.weatherCode[2] eq '110'}">
                        <a href="weather?weatherCode=110">
                            <img class="threedays_img "src="resources/img/110.jpg" >
                        </a>
                    </c:if>  
                    <c:if  test="${weather.weatherCode[2] eq '200'}">
                        <a href="weather?weatherCode=200">
                            <img class="threedays_img "src="resources/img/200.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[2] eq '201'}">
                        <a href="weather?weatherCode=201">
                            <img class="threedays_img "src="resources/img/201.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[2] eq '202'}">
                        <a href="weather?weatherCode=202">
                            <img class="threedays_img "src="resources/img/202.jpg" >
                        </a>
                    </c:if>
                    <c:if  test="${weather.weatherCode[2] eq '300'}">
                        <a href="weather?weatherCode=300">
                            <img class="threedays_img "src="resources/img/300.jpg" >
                        </a>
                    </c:if> 
                     <c:if  test="${weather.weatherCode[2] eq '400'}">
                        <a href="weather?weatherCode=400">
                            <img class="threedays_img "src="resources/img/400.jpg" >
                        </a>
                    </c:if> 
                    <div class="threedays_Date">
                     ${weather.simpleDate[2]}
                    </div>
                    </div>
                </div>
                <div class="weather4">
                    <div class="fourdays">
                    
                        <c:if  test="${weather.weatherCode[3] eq '100'}">
                        <a href="weather?weatherCode=100">
                            <img class="fourdays_img "src="resources/img/100.jpg" >
                        </a>
                    </c:if>  
                    
                     <c:if  test="${weather.weatherCode[3] eq '101'}">
                        <a href="weather?weatherCode=101">
                            <img class="fourdays_img "src="resources/img/101.jpg" >
                        </a>
                    </c:if>  
                     <c:if  test="${weather.weatherCode[3] eq '110'}">
                        <a href="weather?weatherCode=110">
                            <img class="fourdays_img "src="resources/img/110.jpg" >
                        </a>
                    </c:if>  
                    <c:if  test="${weather.weatherCode[3] eq '200'}">
                        <a href="weather?weatherCode=200">
                            <img class="fourdays_img "src="resources/img/200.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[3] eq '201'}">
                        <a href="weather?weatherCode=201">
                            <img class="fourdays_img "src="resources/img/201.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[3] eq '202'}">
                        <a href="weather?weatherCode=202">
                            <img class="fourdays_img "src="resources/img/202.jpg" >
                        </a>
                    </c:if>

                    <c:if  test="${weather.weatherCode[3] eq '300'}">
                        <a href="weather?weatherCode=300">
                            <img class="fourdays_img "src="resources/img/300.jpg" >
                        </a>
                    </c:if> 
                     <c:if  test="${weather.weatherCode[3] eq '400'}">
                        <a href="weather">
                            <img class="weather?weatherCode=400"src="resources/img/400.jpg" >
                        </a>
                    </c:if> 
                    <div class="fourdays_Date">
                     ${weather.simpleDate[3]}
                    </div>
                    </div>
                </div>
                <div class="weather5">
                    <div class="fivedays">
                     <c:if  test="${weather.weatherCode[4] eq '100'}">
                        <a href="weather?weatherCode=100">
                            <img class="fivedays_img "src="resources/img/100.jpg" >
                        </a>
                    </c:if>  
                    
                     <c:if  test="${weather.weatherCode[4] eq '101'}">
                        <a href="weather?weatherCode=101">
                            <img class="fivedays_img "src="resources/img/101.jpg" >
                        </a>
                    </c:if>  
                     <c:if  test="${weather.weatherCode[4] eq '110'}">
                        <a href="weather?weatherCode=110">
                            <img class="fivedays_img "src="resources/img/110.jpg" >
                        </a>
                    </c:if>  
                    <c:if  test="${weather.weatherCode[4] eq '200'}">
                        <a href="weather?weatherCode=200">
                            <img class="fivedays_img "src="resources/img/200.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[4] eq '201'}">
                        <a href="weather?weatherCode=201">
                            <img class="fivedays_img "src="resources/img/201.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[4] eq '202'}">
                        <a href="weather?weatherCode=202">
                            <img class="fivedays_img "src="resources/img/202.jpg" >
                        </a>
                    </c:if>

                    <c:if  test="${weather.weatherCode[4] eq '300'}">
                        <a href="weather?weatherCode=300">
                            <img class="fivedays_img "src="resources/img/300.jpg" >
                        </a>
                    </c:if> 
                     <c:if  test="${weather.weatherCode[4] eq '400'}">
                        <a href="weather?weatherCode=400">
                            <img class="fivedays_img "src="resources/img/400.jpg" >
                        </a>
                    </c:if> 
                     <div class="fivedays_Date">
                     ${weather.simpleDate[4]}
                    </div>
                    </div>
                </div>
                <div class="weather6">
                    <div class="fixdays">
                     <c:if  test="${weather.weatherCode[5] eq '100'}">
                        <a href="weather?weatherCode=100">
                            <img class="fixdays_img "src="resources/img/100.jpg" >
                        </a>
                    </c:if>  
                    
                     <c:if  test="${weather.weatherCode[5] eq '101'}">
                        <a href="weather?weatherCode=101">
                            <img class="fixdays_img "src="resources/img/101.jpg" >
                        </a>
                    </c:if>  
                     <c:if  test="${weather.weatherCode[5] eq '110'}">
                        <a href="weather?weatherCode=110">
                            <img class="fixdays_img "src="resources/img/110.jpg" >
                        </a>
                    </c:if>  
                    <c:if  test="${weather.weatherCode[5] eq '200'}">
                        <a href="weather?weatherCode=200">
                            <img class="fixdays_img "src="resources/img/200.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[5] eq '201'}">
                        <a href="weather?weatherCode=201">
                            <img class="fixdays_img "src="resources/img/201.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[5] eq '202'}">
                        <a href="weather?weatherCode=202">
                            <img class="fixdays_img "src="resources/img/202.jpg" >
                        </a>
                    </c:if>

                    <c:if  test="${weather.weatherCode[5] eq '300'}">>
                        <a href="weather?weatherCode=300">
                            <img class="fixdays_img "src="resources/img/300.jpg" >
                        </a>
                    </c:if> 
                     <c:if  test="${weather.weatherCode[5] eq '400'}">
                        <a href="weather?weatherCode=400">
                            <img class="fixdays_img "src="resources/img/400.jpg" >
                        </a>
                    </c:if> 
                    <div class="fixdays_Date">
                     ${weather.simpleDate[5]}
                    </div>
                    </div>
                </div>
                <div class="weather7">
                   <div class="sevendays">
                    <c:if  test="${weather.weatherCode[6] eq '100'}">
                        <a href="weather?weatherCode=100">
                            <img class="sevendays_img "src="resources/img/100.jpg" >
                        </a>
                    </c:if>  
               
                     <c:if  test="${weather.weatherCode[6] eq '101'}">
                        <a href="weather?weatherCode=101">
                            <img class="sevendays_img "src="resources/img/101.jpg" >
                        </a>
                    </c:if>  
                     <c:if  test="${weather.weatherCode[6] eq '110'}">
                        <a href="weather?weatherCode=110">
                            <img class="sevendays_img "src="resources/img/110.jpg" >
                        </a>
                    </c:if>  
                    <c:if  test="${weather.weatherCode[6] eq '200'}">
                        <a href="weather?weatherCode=200">
                            <img class="sevendays_img "src="resources/img/200.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[6] eq '201'}">
                        <a href="weather?weatherCode=201">
                            <img class="sevendays_img "src="resources/img/201.jpg" >
                        </a>
                    </c:if> 
                    <c:if  test="${weather.weatherCode[6] eq '202'}">
                        <a href="weather?weatherCode=202">
                            <img class="sevendays_img "src="resources/img/202.jpg" >
                        </a>
                    </c:if>
                    <c:if  test="${weather.weatherCode[6] eq '300'}">
                        <a href="weather?weatherCode=300">
                            <img class="sevendays_img "src="resources/img/300.jpg" >
                        </a>
                    </c:if> 
                     <c:if  test="${weather.weatherCode[6] eq '400'}">
                        <a href="weather?weatherCode=400">
                            <img class="sevendays_img "src="resources/img/400.jpg" >
                        </a>
                    </c:if> 
                   
                    <div class="sevendays_Date">
                     ${weather.simpleDate[6]}
                    </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
    <div class="container4">
    <div class="container4_title">
    <h2>추천 여행지</h2>
    </div>
    <div class="container4_img">
    <c:if  test="${weatherCode eq '100' or weatherCode eq '0'}">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6478.743660116862!2d139.794372527563!3d35.71707288160349!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188ec2047f5333%3A0x7c84fd3881c74067!2z7J2867O4IOOAkjExMS0wMDMyIOuPhOy_hOuPhCDri6TsnbTthqDqtawg7JWE7IKs7L-g7IKs!5e0!3m2!1sko!2skr!4v1679879458697!5m2!1sko!2skr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    </c:if>
    <c:if  test="${weatherCode eq '101'}">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.351724265061!2d139.69738381525906!3d35.69296138019155!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188cd7058ad73f%3A0x908f55935cc13cd3!2z7Jik66qo7J20642w7JqU7L2U7LSI!5e0!3m2!1sko!2skr!4v1679880843029!5m2!1sko!2skr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    </c:if>
    <c:if  test="${weatherCode eq '110'}">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d73355.55991383274!2d139.67894377189074!3d35.65512360681556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188b58018d579f%3A0x40894a34f34f2058!2z7J2867O4IOOAkjE1MC0wMDAyIFRva3lvLCBTaGlidXlhIENpdHksIFNoaWJ1eWEsIDEtY2jFjW1l4oiSMjUsIOOBruOCk-OBueOBhOaoquS4gQ!5e0!3m2!1sko!2skr!4v1679880942066!5m2!1sko!2skr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    </c:if>
    <c:if  test="${weatherCode eq '200'}">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12960.720065539239!2d139.78956162760798!3d35.69718748407761!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018893554b8eb19%3A0x70237cc76b1dfa74!2z66OM6rOg7L-gIOq1req4sOq0gA!5e0!3m2!1sko!2skr!4v1679880977166!5m2!1sko!2skr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> 
    </div>
    </c:if>
    <c:if  test="${weatherCode eq '201'}">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3243.058433828341!2d139.78074715099945!3d35.62628594049324!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x601889fad49a9443%3A0x5831aba3288d2651!2z7YyA656pIOuztOuNlOumrOyKpA!5e0!3m2!1sko!2skr!4v1679881033954!5m2!1sko!2skr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    </c:if>
    <c:if  test="${weatherCode eq '202'}">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3242.1317680789157!2d139.78757985099983!3d35.64912503924196!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188908e728e749%3A0x6de450c94bd3d622!2z7YyA656pIO2UjOuemOuLmyDrj4Tsv4Q!5e0!3m2!1sko!2skr!4v1679881128259!5m2!1sko!2skr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    </c:if>
     <c:if  test="${weatherCode eq '300'}">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3239.577185168625!2d139.79392755100116!3d35.712021035792624!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188ec1a4463df1%3A0x6c0d289a8292810d!2z7IS87IaM7KeA!5e0!3m2!1sko!2skr!4v1679881163173!5m2!1sko!2skr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</iframe>    
    </div>
    </c:if>
     <c:if  test="${weatherCode eq '400'}">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d51856.39273131146!2d139.6292880582032!3d35.67639760000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188cb79a4c26e5%3A0x8fca893849103f73!2z66mU7J207KeAIOyLoOq2gQ!5e0!3m2!1sko!2skr!4v1679881184870!5m2!1sko!2skr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    </c:if>
    </div>
    
    
   <div class="container5">
    <div class="container5_title">
    <h2>추천 음식</h2>
    </div>
    
    
  					<c:if test="${weatherCode eq '100' or weatherCode eq '0'}">
                      
                            <img class="container5_img "src="resources/img/food_100.jpg" >
                     
                    </c:if>  
               
                     <c:if  test="${weatherCode eq '101'}">
                       
                            <img class="container5_img "src="resources/img/food_101.jpg" >
                     
                    </c:if>  
                     <c:if  test="${weatherCode eq '110'}">
                       
                            <img class="container5_img "src="resources/img/food_110.jpg" >
                       
                    </c:if>  
                    <c:if  test="${weatherCode eq '200'}">
                      
                            <img class="container5_img "src="resources/img/food_200.jpg" >
                      
                    </c:if> 
                    <c:if  test="${weatherCode eq '201'}">
                       
                            <img class="container5_img "src="resources/img/food_201.jpg" >
                      
                    </c:if> 
                    <c:if  test="${weatherCode eq '202'}">
                    
                            <img class="container5_img "src="resources/img/food_202.jpg" >
                     
                    </c:if>
                    <c:if  test="${weatherCode eq '300'}">
                      
                            <img class="container5_img "src="resources/img/food_300.jpg" >
                       
                    </c:if> 
                     <c:if  test="${weatherCode eq '400'}">
                       
                            <img class="container5_img "src="resources/img/food_400.jpg" >
                       
                    </c:if> 
    </div>
    
<!--     <div class="container6"></div>
    <div class="container7"></div> -->
	</div>
    </div>
</body>
</html>