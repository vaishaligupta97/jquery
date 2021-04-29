<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>set selected option in dropdown</title>
<script src="js\jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		//$("#food").val($("#food option").eq(5).val());
		$("#cname1").val("4 ");
	});
</script>
</head>
<body>
	<select name="course_name" class="form-select" id="cname1" size="1">
		<option value="0">select course</option>
		<%
			try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3309/feedbackdb?autoReconnect=true&useSSL=false", "root", "vaishali@97");
			//here inventory db is database name, root is username and vaishali@97 is password  
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from course");
			while (rs.next()) {
				int courseid = rs.getInt(1);
				String cname = rs.getString(2);
		%>
		<option value="<%=courseid%> ">
			<%=courseid%><%=cname%></option>
		<%
			}
		%>
	</select>
	<%
		con.close();
	} catch (Exception e) {
	System.out.println(e);
	}
	%>

</body>
</html>