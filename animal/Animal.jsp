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
int n=0;
try{
n=Integer.parseInt(request.getParameter("num"));
}catch(Exception e){
out.print("***ป้อนข้อมูลไม่ถูกต้อง**");
}
if(n==0){
%> 
    
    <IMG SRC="/animalsNumber/0.jpg" WIDTH="100" HEIGHT="100">
    <audio controls>
    <source src="/animalsNumber/0.wav" type="audio/wav">
    </audio>> 
<%
}
else if(n==1){
    %> 
        <IMG SRC="/animalsNumber/1.jpg" WIDTH="100" HEIGHT="100">
        <audio controls>
        <source src="/animalsNumber/1.wav" type="audio/wav">
        </audio>>  
    <%
    }
else if(n==2){
    %> 
            <IMG SRC="/animalsNumber/2.jpg" WIDTH="100" HEIGHT="100">
            <audio controls>
            <source src="/animalsNumber/0.wav" type="audio/wav">
            </audio>>      
    <%
    }
else if(n==3){
    %> 
        <IMG SRC="/animalsNumber/3.jpg" WIDTH="100" HEIGHT="100">
        <audio controls>
        <source src="/animalsNumber/4.wav" type="audio/wav">
        </audio>>  
    <%
    }
else if(n==4){
    %> 
        <IMG SRC="/animalsNumber/4.jpg" WIDTH="100" HEIGHT="100">
        <audio controls>
        <source src="/animalsNumber/4.wav" type="audio/wav">
        </audio>> 
    <%
    }
else if(n==5){
    %> 
        <IMG SRC="/animalsNumber/5.jpg" WIDTH="100" HEIGHT="100">
        <audio controls>
        <source src="/animalsNumber/5.wav" type="audio/wav">
        </audio>>  
    <%
    }
else if(n==6){
    %> 
        <IMG SRC="/animalsNumber/6.jpg" WIDTH="100" HEIGHT="100">
        <audio controls>
        <source src="/animalsNumber/6.wav" type="audio/wav">
        </audio>>  
    <%
    }
else if(n==7){
    %> 
        <IMG SRC="/animalsNumber/7.jpg" WIDTH="100" HEIGHT="100">
        <audio controls>
        <source src="/animalsNumber/7.wav" type="audio/wav">
        </audio>>  
    <%
    }
else if(n==8){
    %> 
        <IMG SRC="/animalsNumber/8.jpg" WIDTH="100" HEIGHT="100">
        <audio controls>
        <source src="/animalsNumber/8.wav" type="audio/wav">
        </audio>>  
    <%
    }
else if(n==9){
    %> 
        <IMG SRC="/animalsNumber/9.jpg" WIDTH="100" HEIGHT="100">
        <audio controls>
        <source src="/animalsNumber/9.wav" type="audio/wav">
        </audio>>  
    <%
    }
else{
    out.print("***ป้อนข้อมูลไม่ถูกต้อง1**");
}
%>

</body>
</html>
