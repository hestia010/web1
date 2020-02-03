<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@page import="java.utli.*"%>
<html>
<head>
<title> welcome.jsp </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
String n="",s="";
int a,g;
String c="";

try{
n=request.getParameter("nam");
s=request.getParameter("sex");
a=Integer.parseInt(request.getParameter("age"));
g=Integer.parseInt(request.getParameter("grade"));



if(g >= 80){c="A";}
else if (g>=70){c="B";}
else if (g>=60){c="C";}
else if (g>=50){c="D";}
else {c="F";}

out.print("คุณมีคะแนน:"+g+"<br><hr>");
out.print("คุณได้เกรด:"+c+"<br>");
out.print("คุณชื่อ:"+n+"<br>");
out.print("อายุคุณ:"+a+" ปี<br>");
out.print("คุณเพศ:"+s+"<p><br>");
}
catch(Exception e)
{out.print("***ป้อนข้อมูลไม่ถูกต้อง**");}
%>
</body>
</html>
