<%-- 
    Document   : check-out
    Created on : Mar 16, 2022, 11:42:56 AM
    Author     : thanh.pham2_onemount
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/checkout.css" rel="stylesheet" type="text/css"/>
        <script src="js/checkout.js" type="text/javascript"></script>
        <title>Check out</title>
    </head>
    <body>
        <div class='container'>
            <div class='window'>
                <div class='order-info'>
                    <div class='order-info-content'>
                        <h2>Order Summary</h2>
                        <div class='line'></div>
                        <c:forEach items="${summary}" var="o">
                            <table class='order-table'>
                                <tbody>
                                    <tr>
                                        <td><img src=${o.img} class='full-width'></img>
                                        </td>
                                        <td>
                                            <br> <span class='thin'>${o.name}</span>
                                            <br><span class='thin small'> Quantity: ${o.total}<br><br></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class='price'>${o.price} $</div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </c:forEach>
                        <div class='line'></div>
                        <div class='total'>
                            <span style='float:left;'>
                                <div class='thin dense'>Wallet Balance</div>
                                <div class='thin dense'>Total Fee</div>
                                Remaining Balance
                            </span>
                            <span style='float:right; text-align:right;'>
                                <div class='thin dense'>${checkoutFee.balance} $</div>
                                <div class='thin dense'> - ${checkoutFee.totalFee} $</div>
                                ${checkoutFee.beforeBalace} $
                            </span>
                        </div>
                    </div>
                </div>
                <div class='credit-info'>
                    <div class='credit-info-content'>
                        <table class='half-input-table'>
                            <tr><td>Please select your card: </td><td><div class='dropdown' id='card-dropdown'><div class='dropdown-btn' id='current-card'>Visa</div>
                                        <div class='dropdown-select'>
                                            <ul>
                                                <li>Master Card</li>
                                                <li>American Express</li>
                                            </ul></div>
                                    </div>
                                </td></tr>
                        </table>
                        <img src='https://dl.dropboxusercontent.com/s/ubamyu6mzov5c80/visa_logo%20%281%29.png' height='80' class='credit-card-image' id='credit-card-image'></img>
                        Full Name
                        <input class='input-field'></input>
                        Address
                        <input class='input-field'></input>
                        <table class='half-input-table'>
                            <tr>
                                <td> Phone number
                                    <input class='input-field'></input>
                                </td>
                                <td>Gmail
                                    <input class='input-field'></input>
                                </td>
                            </tr>
                        </table>
                        <form method="get" action="pay">
                            <button type="submit" class='pay-btn'>Checkout</button>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
