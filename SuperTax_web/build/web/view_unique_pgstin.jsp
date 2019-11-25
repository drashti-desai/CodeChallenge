<%-- 
    Document   : view_unique_pgstin
    Created on : 24 Nov, 2019, 9:42:52 AM
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
            if(request.getAttribute("upgstin") != null){
            %>
            <tr>
                <th>Purchaser_gstin</th>
                <th>Distinct_count_pgstin</th>
            </tr>
            
            <tr>
                <% 
                ResultSet rs = (ResultSet)request.getAttribute("upgstin");
                while(rs.next()){
                    String pgstin = rs.getString("purchaser_gstin");
                    int dcp = rs.getInt("distinct_count_pgstin");
                
                %>
            </tr>
            <tr>
                <td><%=pgstin%></td>
                <td><%=dcp%></td>
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
