<%-- 
    Document   : check-out
    Created on : Mar 16, 2022, 11:42:56 AM
    Author     : thanh.pham2_onemount
--%>

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
                        <table class='order-table'>
                            <tbody>
                                <tr>
                                    <td><img src='https://dl.dropboxusercontent.com/s/sim84r2xfedj99n/%24_32.JPG' class='full-width'></img>
                                    </td>
                                    <td>
                                        <br> <span class='thin'>Nike</span>
                                        <br> Free Run 3.0 Women<br> <span class='thin small'> Color: Grey/Orange, Size: 10.5<br><br></span>
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <div class='price'>$99.95</div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class='line'></div>
                        <div class='total'>
                            <span style='float:left;'>
                                <div class='thin dense'>VAT 19%</div>
                                <div class='thin dense'>Delivery</div>
                                TOTAL
                            </span>
                            <span style='float:right; text-align:right;'>
                                <div class='thin dense'>$68.75</div>
                                <div class='thin dense'>$4.95</div>
                                $435.55
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
                        Card Number
                        <input class='input-field'></input>
                        Card Holder
                        <input class='input-field'></input>
                        <table class='half-input-table'>
                            <tr>
                                <td> Expires
                                    <input class='input-field'></input>
                                </td>
                                <td>CVC
                                    <input class='input-field'></input>
                                </td>
                            </tr>
                        </table>
                        <button class='pay-btn'>Checkout</button>

                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
