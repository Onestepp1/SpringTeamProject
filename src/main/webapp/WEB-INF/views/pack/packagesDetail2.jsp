<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="/pack/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="/pack/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="/pack/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/pack/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/pack/css/main.css" rel="stylesheet" media="all">
    
    <style type="text/css">
  .styled-table {
    width: 100%;
    border-collapse: collapse;
  }
  .styled-table th, .styled-table td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
  }
  .styled-table th {
    background-color: #f2f2f2;
  }
    </style>
</head>

<body>
	<div >
		  <table class="styled-table">
		    <thead>
		      <tr>
		        <th>Select</th>
		        <th>Destination Name</th>
		        <th>Country</th>
		        <th>Description</th>
		      </tr>
		    </thead>
		    <tbody>
		      <c:forEach var="item" items="${destinations}">
		        <tr>
<%-- 		          <td><input type="radio" name="destinationId" value="${item.destinationId}"></td> --%>
		          <td> <a href="/restaurants/${item.destinationId }">${item.destinationId } 등록 하기</a> </td>
		          <td>${item.destinationName}</td>
		          <td>${item.country}</td>
		          <td>${item.destinationDescription}</td>
		        </tr>
		      </c:forEach>
		    </tbody>
		  </table>
	</div>
	
    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">일차 별 상세 일정 입력</h2>
                    <form method="POST" action="/restaurants/${destination_Id}" enctype="multipart/form-data">
                    
                     	<!-- 식당 이름 -->
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Restaurants_name" name="restaurantName" required>
                        </div>
                    	
                    	<!-- cuisine 요리 이름 -->
                    	<div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                            	요리 타입:
                                <select  name="cuisine" required>
                                    <option value="koreaFood">한식</option>
								    <option value="chinaFood">중식</option>
								    <option value="japanFood">일식</option>
								    <option value="westernFood">양식</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        
                        <!-- 식당 이미지 -->
                        <label for="restaurantsImage">식당 이미지:</label> 
         				<input type="file" id="restaurantslImage" name="restaurantsImage" accept="image/*" multiple>
                        
                        <br><br>
                        <!-- 식당 설명 -->
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Restaurants_description" name="restaurantDescription" required>
                        </div>
                       
                       <!-- destination_id -->
<%--                        <input type="hidden" name="desti_Id" value="${destination_Id}"> --%>
                        <div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="submit">저장</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    

    <!-- Jquery JS-->
    <script src="/pack/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="/pack/vendor/select2/select2.min.js"></script>
    <script src="/pack/vendor/datepicker/moment.min.js"></script>
    <script src="/pack/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="/pack/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>