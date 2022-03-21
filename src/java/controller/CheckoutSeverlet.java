/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CheckOutDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.CheckoutFee;
import model.Product;
import model.Summary;
import model.Wallet;

/**
 *
 * @author thanh.pham2_onemount
 */
public class CheckoutSeverlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ArrayList<Cart> cart = new ArrayList<>();
        ArrayList<Summary> checkOut = new ArrayList<>();
        int total = 0;
        int pId = 0;
        double price = 0;
        String img = null;
        String name = null;
        Product product = new Product();

        HttpSession session = request.getSession();
        cart = (ArrayList<Cart>) session.getAttribute("cart");
        double totalMoney = (double) session.getAttribute("totalMoney");
        String username = (String) session.getAttribute("username");
        double balance = new CheckOutDAO().getBalance(username);
        
//        Wallet wallet = new Wallet();
//        wallet.setUsername(username);
//        wallet.setMoney(balance);
//        session.setAttribute("ewallet", wallet);

        for (Cart c : cart) {
            total = c.getQuantity();
            pId = c.getP().getMa_san_pham();
            product = new ProductDAO().getProduct(pId);
            img = product.getHinh_anh();
            name = product.getTen_san_pham();
            price = product.getGia_ban();
            checkOut.add(new Summary(name, price, total, img));
        }
        CheckoutFee checkoutFee = new CheckoutFee(balance, totalMoney, balance - totalMoney);

        request.setAttribute("summary", checkOut);
        request.setAttribute("checkoutFee", checkoutFee);
        request.getRequestDispatcher("check-out.jsp").forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
