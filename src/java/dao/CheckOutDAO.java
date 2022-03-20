/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.History;

/**
 *
 * @author thanh.pham2_onemount
 */
public class CheckOutDAO extends DBContext{
    
    public boolean updateWallet(String username, int balance) throws SQLException {
        String sql = "update HE141449_Wallet\n"
                + "set balance = " + balance
                + " where username = " + username;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
           con.rollback();
            return false;
        }
    }

    public double getBalance(String username) {
        String sql = "SELECT * from HE141449_Wallet where username = '" + username+"'";
        System.out.println(sql);
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            double balance = rs.getFloat("balance");
            return balance;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public boolean insertHistory(int userId, String message, float balance) {
        String sql = "insert into HE141449_History (user_id, message,balance)\n"
                + "values (?,?,?);";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.setString(2, message);
            ps.setFloat(3, balance);
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public ArrayList<History> getHistoryByUserId(int id) {
        String sql = "SELECT * FROM HE141449 WHERE id = " + id;
        ArrayList<History> listHistory = new ArrayList<>();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            listHistory.add(new History(rs.getInt("user_id"), rs.getString("message"),
                    rs.getFloat("balance")));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return listHistory;
    }
}
