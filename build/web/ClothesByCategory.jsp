
<%@page import="model.Clothes"%>
<%@page import="model.Books"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechMarK</title>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/menu.css" />
        <link rel="stylesheet" href="css/product.css" />
    </head>
    <body>

        <div id="main">
            <jsp:include page="menu.jsp"></jsp:include>
                <div id="content">
                    <div id="left"><jsp:include page="ClothesCategory.jsp"></jsp:include></div>
                    <div id="right">
                    <%
                        try {

                            ProductDAO productDAO = new ProductDAO();

                            String categoryId = null;
                            if (request.getParameter("id") != null) {
                                categoryId = request.getParameter("id");
                            }
                    %>
                    <div id="site-wrapper" style="float: left">
                        <ul class="products homepage">
                            <%
                                if (categoryId != null) {
                                    for (Clothes p : productDAO.getClothesByCategoryId(Integer.parseInt(categoryId))) {
                            %>

                            <li class="preorder"><span class="tagimg "> </span> <a
                                    href="detail.jsp?ma_san_pham=<%=p.getId()%>">  
                                    <img src="<%=p.getImg()%>" width=" 250px" height="250px" />
                                    <h3><%=p.getName()%></h3>
                                    <h4>
                                        Price:
                                        <%=p.getPrice()%>$
                                    </h4> 
                                    <p class="info">
                                        <span>Manufacturer: <%=p.getBrand()%>
                                        </span> <span>Price: <%=p.getPrice()%>$
                                        </span> <span>Information: <%=p.getDescription()%></span>>
                                    </p>
                                </a></li>

                            <%
                                        }
                                    }
                                } catch (Exception e) {
                                }
                            %>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="footer"><jsp:include page="footer.jsp"></jsp:include></div>
        </div>
    </body>
</html>
