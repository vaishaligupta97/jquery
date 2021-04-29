<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>set selected option in dropdown</title>
 <script src="js\jquery-3.6.0.min.js"></script>
 <script>
 	$(document).ready(function(){
 		//$("#food").val($("#food option").eq(5).val());
 		$("#food").val('8');
 	});
 </script>
</head>
<body>
	<select id = "food">
		<option disabled>select Fav Food</option>
		<option value = "1" >Chocolate</option>
		<option value= "4" >Pizza</option>
		<option value = "5" >Burger</option>
		<option value = "7" >Pav Bhaji</option>
		<option value = "8" >Rice</option>
	</select>
</body>
</html>