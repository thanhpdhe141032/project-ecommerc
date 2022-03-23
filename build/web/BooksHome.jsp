<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <div id="left"><jsp:include page="BooksCategory.jsp"></jsp:include></div>
                    <div id="right">
                        <div id="site-wrapper" style="float: left">
                            <ul class="products homepage">
                            <c:forEach items="${listB}" var="o">
                                <li class="preorder"><span class="tagimg "> </span> <a
                                        href="BooksDetail.jsp?id=${o.id}">  
                                        <img src="${o.img}" width=" 250px" height="250px" />
                                        <h3>${o.name}</h3>
                                        <h4>
                                            Price:
                                            ${o.price}$
                                        </h4> 
                                        <p class="info">
                                            <span>Author ${o.author}
                                            </span> <span>Price: ${o.price}$
                                            </span> <span>Information: ${o.discription}</span>>
                                        </p>
                                    </a>
                                </li>
                            </c:forEach>>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="footer"><jsp:include page="footer.jsp"></jsp:include></div>
        </div>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            window.onload = function () {
                let isCheckedOut = window.location.search.substr(1).split('=')[1];
                console.log('asd', window.location.search.substr(1).split('='))
                console.log(isCheckedOut);
                if (isCheckedOut == 'true') {
                    swal("Good job!", "Payment Success..!", "success");
                }
            }
        </script>
    </body>
</html>
