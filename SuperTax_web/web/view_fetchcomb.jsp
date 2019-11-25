<%-- 
    Document   : view_fetchcomb
    Created on : 24 Nov, 2019, 9:41:39 AM
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
                    <% if(request.getAttribute("fc") != null){
                        
                    %>
                    <tr>
                        <th>Suplier_gstin</th>
                        <th>Purchaser_gstin</th>
                        <th>No of rows for each combination</th>
                        
                    </tr>
                    <%
                        ResultSet rs = (ResultSet)request.getAttribute("fc");
                        while(rs.next()){
                            String sgstin = rs.getString("supplier_gstin");
                            String pgstin = rs.getString("purchaser_gstin");
                            int noc = rs.getInt("No_of_rows_for_combination");
                            
                        
                        %>
                        <tr>
                            <td><%=sgstin%></td>
                            <td><%=pgstin%></td>
                            <td><%=noc%></td>
                            
                        </tr>
                        <%}}%>
                </table>
                <br><br>
                <form action="main.jsp">
                    <input type="submit" value="back">
                </form>
    </body>
</html>
