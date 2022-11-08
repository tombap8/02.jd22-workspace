<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%!
    public String myFn(){
        return "<h1>나야나!</h1>";
    }
%>
</head>
<body>
	<%
		String user = request.getParameter("name");
		if (user == null) {
			user = "나는 탐쌤입니다~!!!!";
		}

	%>
	
	<h1><%= user %></h1>
    <div><%=myFn()%></div>
</body>
</html>