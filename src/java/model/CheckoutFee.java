/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author thanh.pham2_onemount
 */
public class CheckoutFee {
    
    private double balance;
    
    private double totalFee;
    
    private double beforeBalace;

    public CheckoutFee() {
    }

    public CheckoutFee(double balance, double totalFee, double beforeBalace) {
        this.balance = balance;
        this.totalFee = totalFee;
        this.beforeBalace = beforeBalace;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public double getTotalFee() {
        return totalFee;
    }

    public void setTotalFee(double totalFee) {
        this.totalFee = totalFee;
    }

    public double getBeforeBalace() {
        return beforeBalace;
    }

    public void setBeforeBalace(double beforeBalace) {
        this.beforeBalace = beforeBalace;
    }
    
    
    
}
