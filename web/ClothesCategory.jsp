<%-- 
    Document   : category
    Created on : Oct 31, 2020, 9:44:46 PM
    Author     : DELL
--%>

<%@page import="model.CategoryProducts"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu dọc</title>
        <link rel="stylesheet" href="css/category.css" />
    </head>
    <body>
        <%
            CategoryDAO categoryDAO = new CategoryDAO();

            ArrayList<CategoryProducts> list = categoryDAO.getCategoryClothes();
        %>
        <div class="container">
            <nav>
                <ul class="mcd-menu">
                    <%
                        for (CategoryProducts c : list) {

                    %>
                    <li><a href="index.jsp?ma_the_loai=<%=c.getId()%>"> <i class="fa fa-home"></i>
                            <strong style="color:red"><%=c.getName()%></strong> 
                        </a></li>
                        <%
                            }
                        %>
                </ul>
            </nav>
        </div>
    </body>
</html>
