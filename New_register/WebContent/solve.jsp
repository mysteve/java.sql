<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name=request.getParameter("user");
	String pass=request.getParameter("password");
%>
<%
Connection conn=null;
PreparedStatement ps=null;
ResultSet rs=null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://127.0.0.1:3306/stu";
	conn=DriverManager.getConnection(url,"your_sql_name","your_password");
	String sql= "insert into infor values(?)";
	ps=conn.prepareStatement(sql);
	ps.setString(1,name);
	ps.executeUpdate();//传入值时使用
	}catch(Exception e){
	e.printStackTrace();
	}
%>

</body>
</html>
