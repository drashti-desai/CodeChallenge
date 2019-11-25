<%-- 
    Document   : view_unique_sgstin
    Created on : 24 Nov, 2019, 9:42:23 AM
    Author     : Drashti Desai
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <% 
            if(request.getAttribute("usgstin") != null){
            %>
            <tr>
                <th>Supplier_gstin</th>
                <th>Distinct_count_sgstin</th>
            </tr>
            <tr>
                <%
               ResultSet rs = (ResultSet)request.getAttribute("usgstin");
               while(rs.next()){
                String sgstin = rs.getString("supplier_gstin");
                int dcs = rs.getInt("distinct_count_sgstin");
                
                %>
            </tr>
            <tr>
                <td><%=sgstin%></td>
                <td><%=dcs%></td>
            </tr>
            
            <% 
                    }
                }
            %>
        </table>
        <br><br>
        <form action="main.jsp">
            <input type="submit" value="back"/>
        </form>
    </body>
</html>
