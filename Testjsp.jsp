<html>
    <head>
        <meta http-equiv="Conte nt-Type" content="text/html;charset=UTF-8">
        <title>connect mysqldatabase Page</title>
    </head>
    <body>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="java.sql.*"%>
        <%
        double d=0;
        double x=0;
        double sum=0;
        try{
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection mycon = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_company?user=root&password=root");
            Statement stmt = mycon.createStatement();
            ResultSet myresult = stmt.executeQuery("SELECT order_tbl.oid,order_tbl.pid,order_tbl.discount,product_tbl.pname,order_tbl.qty,product_tbl.unitprice,customer_tbl.cname,employee_tbl.ename,ROUND((order_tbl.qty*product_tbl.unitprice)*((100-order_tbl.discount)/100),2) "+
            "FROM order_tbl,product_tbl,customer_tbl,employee_tbl WHERE order_tbl.pid=product_tbl.pid AND order_tbl.cid=customer_tbl.cid AND order_tbl.eid=employee_tbl.eid");
            if(myresult !=null){
                out.println("<center>แสดงข้อมูลจากตาราง order_tbl,product_tbl,customer_tbl <br><br>");
                out.println("<table aling=center border=1 cellpadding=5>");
                out.println("<tr><td>รหัสใบสั่งซื้อ</td><td>รหัสสินค้า</td><td>ชื่อสินค้า</td><td>จำนวน</td><td>ราคาต่อหน่วย</td><td>ส่วนลด %</td><td>ราคารวม</td><td>ชื่อลูกค้า</td><td>ชื่อพนักงานขาย</td></tr>");
            
                while(myresult.next()){
                    out.println("<tr><td>"+myresult.getString("order_tbl.oid")+"</td>");
                    out.println("<td>"+myresult.getString("order_tbl.pid")+"</td>");
                    out.println("<td>"+myresult.getString("product_tbl.pname")+"</td>");
                    out.println("<td>"+myresult.getString("order_tbl.qty")+"</td>"); //จำนวน
                    out.println("<td>"+myresult.getString("product_tbl.unitprice")+"</td>");
                    d=Double.parseDouble(myresult.getString("order_tbl.discount"));
                    //out.println("<td>"+myresult.getString("order_tbl.discount")+"</td>");
                    out.println("<td>"+d+"</td>");
                    x=Double.parseDouble(myresult.getString("ROUND((order_tbl.qty*product_tbl.unitprice)*((100-order_tbl.discount)/100),2)"));
                    out.println("<td>"+x+"</td>");
                    //out.println("<td>"+myresult.getString("ROUND((order_tbl.qty*product_tbl.unitprice)*((100-order_tbl.discount)/100),2)")+"</td>");
                    out.println("<td>"+myresult.getString("customer_tbl.cname")+"</td>");
                    out.println("<td>"+myresult.getString("employee_tbl.ename")+"</td></tr>");
                    
                    if(sum !=x){
                        sum = sum+x;
                    }
                    
                }
                out.println("<tr><td></td><td></td><td></td><td></td><td>ยอดสั่งซื้อทั้งหมด</td><td></td><td>"+sum+"</td><td>บาท</td></tr>");
                out.println("</table></center><br><br>");
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