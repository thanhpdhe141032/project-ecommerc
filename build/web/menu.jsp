

<%@page import="dao.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="head">
    <img src="images/banner.png" width="100%" height="100%">
</div>

<%
    String username = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("username")) {
                username = cookie.getValue();
            }
        }
    }

    if (username != null) {
%>
<div id="head-link">
    <div id='menungang'>
        <ul>
            <li class='last'><a href="index.jsp"><span>Home Page</span></a></li>
            <li class='li-dropdown'>                
                <div class="dropdown">
                    <button class="dropbtn"><span>PRODUCT</span></button>
                    <div class="dropdown-content">
                        <a href="/project">ELECTRONIC</a>
                        <a href="books-home">BOOK</a>
                        <a href="clothes-home">CLOTHES</a>
                    </div>
                </div>
            </li>
            <li class='last'><a href="search_page.jsp"><span>Search</span></a></li>


            <%UserDAO ud = new UserDAO();
                int uRole = Integer.parseInt(ud.getUser(username).getRole());
                if (uRole == 2) {
            %>
            <li class='last'><a href="cart.jsp"><span>Cart</span></a></li>
            <li class='li-dropdown' style="float: right;">
                <div class="dropdown">
                    <button class="dropbtn"><span>MANAGE PRODUCT</span></button>
                    <div class="dropdown-content">
                        <a href="ManagerProductServlet">ELECTRONIC</a>
                        <a href="books">BOOK</a>
                        <a href="clothes">CLOTHES</a>
                    </div>
                </div>
            </li>
            <%} else if (uRole == 3) {%>
            <li class='last' style="float: right;"><a href="ManagerAccountServlet"><span>Manage Account</span></a></li>
            <li class='last' style="float: right;"><a href="ReportedManagerServlet"><span>Reported</span></a></li>
            <li class='last' style="float: right;"><a href="RequestManagerServlet"><span>Request</span></a></li>
                <%} else if (uRole == 1) {%>
            <li class='last'><a href="cart.jsp"><span>Cart</span></a></li>
            <li class='last' style="float: right;"><a href="ewallet"><span>EWALLET</span></a></li>
            <li class='last' style="float: right;"><a href="upToSell.jsp"><span>Up to Seller</span></a></li>
                <%}%>

            <li class='last' style="float: right;"><a href="LogoutServlet"><span>Logout</span></a></li>
            <li class='last' style="float: right;"><a href="update_user.jsp?username=<%=username%>"><span><%=username%></span></a></li>
        </ul>
    </div>
</div>
<%
} else {
%>
<div id="head-link">
    <div id='menungang'>
        <ul>
            <li class='last'><a href="index.jsp"><span>Home Page</span></a></li>
            <li class='last'><a href="PagingServlet"><span>Product</span></a></li>
            <li class='last'><a href="search_page.jsp"><span>Search</span></a></li>
            <li class='last' style="float: right;"><a href="register.jsp"><span>Sign-up</span></a></li>
            <li class='last' style="float: right;"><a href="login.jsp"><span>Login</span></a></li>
        </ul>
    </div>
</div>
<%
    }
%>
