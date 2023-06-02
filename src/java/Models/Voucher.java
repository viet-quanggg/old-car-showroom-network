/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author _viet.quangg
 */
public class Voucher {
    private int voucherID;
    private float discountRate;

    public Voucher() {
    }

    public Voucher(int voucherID, float discountRate) {
        this.voucherID = voucherID;
        this.discountRate = discountRate;
    }

    public int getVoucherID() {
        return voucherID;
    }

    public void setVoucherID(int voucherID) {
        this.voucherID = voucherID;
    }

    public float getDiscountRate() {
        return discountRate;
    }

    public void setDiscountRate(float discountRate) {
        this.discountRate = discountRate;
    }
    
    
}
