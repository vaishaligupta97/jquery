<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*" import = "org.json.simple.JSONArray" 
import = " org.json.simple.JSONObject" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Departments</title>
</head>
<body>
	<% JSONObject mainObj = new JSONObject();
	JSONArray array = new JSONArray();
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
		"jdbc:mysql://localhost:3309/feedbackdb?autoReconnect=true&useSSL=false", "root", "vaishali@97");
		//here inventory db is database name, root is username and vaishali@97 is password  
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from department");
		while (rs.next()) {
			int deptid = rs.getInt(1);
			String dname = rs.getString(2);
			 JSONObject dept = new JSONObject();
			 dept.put("ID", deptid);
		     dept.put("dept_Name", "dname");
		     array.add(dept);
		}
		con.close();
	} catch (Exception e) {
		System.out.println(e);
	}
		mainObj.put("employees", array);
	out.println(mainObj);
	System.out.println(mainObj);
	%>
</body>
</html>