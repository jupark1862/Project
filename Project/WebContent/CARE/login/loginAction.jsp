<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import = "user.UsermemberDAO" %>
  <%@ page import = "java.io.PrintWriter" %>
  <%request.setCharacterEncoding("UTF-8"); %>
  <jsp:useBean id="user" class="user.Usermember" scope="page"/>
  <jsp:setProperty name="user" property="USERID"/>
  <jsp:setProperty name="user" property="USERPASSWORD"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
<title>Insert title here</title>
</head>
<body>
<% 
UsermemberDAO usermemberDAO = new UsermemberDAO();
int result = usermemberDAO.login(user.getUserID(), user.getUserPASSWORD());
if(result == 1){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("location.href = 'main.jsp'");
	script.println("</script>");
}
else if(result == 0){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("lalert('비밀번호가 틀립니다.')");
	script.println("history.back()");
	script.println("</script>");
}
else if(result == -1){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("lalert('존재하지 않는 아이디입니다..')");
	script.println("history.back()");
	script.println("</script>");
}
if(result == 0){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("lalert('데이터베이스 오류가 발생했습니다.')");
	script.println("history.back()");
	script.println("</script>");
}
%>


</body>
</html>