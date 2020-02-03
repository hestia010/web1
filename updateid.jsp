<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <% request.setCharacterEncoding("UTF-8");%>
        <%@page import="java.sql.*"%>
        <%
        try{
            String id=request.getParameter("id");
            String name=request.getParameter("name");
            String sql="SELECT * FROM member WHERE id="+id;
            String sql2="UPDATE member SET NAME='"+name+"' WHERE id="+id;
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection mycon = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?user=root&password=root");
            Statement stmt = mycon.createStatement();
            ResultSet myresult = stmt.executeQuery(sql);
            if(myresult.next()){
                stmt.executeUpdate(sql2);
                out.println("แก้ไขรหัส"+id+"ในฐานข้อมูลแล้ว");
            }else{
                out.println("ไม่สามารถแก้ไขได้ เพราะไม่มี"+id+"อยู่ในฐานข้อมูล");
            }
        stmt.close();
        mycon.close();
        }
        catch(ClassNotFoundException e){
            out.print("Driver Mysql Not Found...");
        }
        catch(SQLException e){
            out.print("Can't Connect Database...");
        }
        %>
    </body>
</html>