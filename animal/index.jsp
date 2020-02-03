<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@page import="java.util.*"%>
<html>
<head>
<title>index.jsp </title>
      <meta http-equiv="Content-Type" Content="text/html" charset="UTF-8">
 </head>
 <body>
 <%
 String n="",s="";
 int a;
 try{
n=request.getParameter("nam");
s=request.getParameter("sex");
a=Integer.parseInt(request.getParameter("age"));
out.print("คุณชื่อ:"+n+"<br>");
out.print("อายุคุณ:"+a+"<br>");
out.print("คุณเพศ:"+s+"<p><br>");
}catch (Exception e) {
       out.print("ป้อนข้อมูลอายุไม่ถูกต้อง");
}
%>
</body>
</html>