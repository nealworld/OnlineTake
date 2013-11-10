<%@ page language="java" contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.*" %>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>login</title>
</head>
<body>
<% 
	request.setCharacterEncoding("gb2312");
	String name = request.getParameter("username");
	
	session.setAttribute("username",name);
	
	List onlineUserList = (List)application.getAttribute("onlineUserList");
	
	if(onlineUserList == null){
		
		onlineUserList = new ArrayList();
		application.setAttribute("onlineUserList",onlineUserList);
	}
	
	onlineUserList.add(name);
	response.sendRedirect("result.jsp");
%>>
</body>
</html>