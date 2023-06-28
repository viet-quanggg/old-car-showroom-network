/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author _viet.quangg
 */
public class PricingPlan {
    private int planId;
    private String planName;
    private int planTime;
    private int planLimit;
    private String planStatus;
    private double planPrice;

    public PricingPlan() {
    }

    public PricingPlan(String planName, int planTime, int planLimit, String planStatus, double planPrice, int planId) {
        this.planName = planName;
        this.planTime = planTime;
        this.planLimit = planLimit;
        this.planStatus = planStatus;
        this.planPrice = planPrice;
        this.planId = planId;
    }
    
        public PricingPlan(String planName, int planTime, int planLimit, String planStatus, double planPrice) {
        this.planName = planName;
        this.planTime = planTime;
        this.planLimit = planLimit;
        this.planStatus = planStatus;
        this.planPrice = planPrice;
    }
    
    
    
    public PricingPlan(int planId, String planName, int planTime, int planLimit, String planStatus, double planPrice) {
        this.planId = planId;
        this.planName = planName;
        this.planTime = planTime;
        this.planLimit = planLimit;
        this.planStatus = planStatus;
        this.planPrice = planPrice;
    }

    public int getPlanId() {
        return planId;
    }

    public void setPlanId(int planId) {
        this.planId = planId;
    }

    public String getPlanName() {
        return planName;
    }

    public void setPlanName(String planName) {
        this.planName = planName;
    }

    public int getPlanTime() {
        return planTime;
    }

    public void setPlanTime(int planTime) {
        this.planTime = planTime;
    }

    public int getPlanLimit() {
        return planLimit;
    }

    public void setPlanLimit(int planLimit) {
        this.planLimit = planLimit;
    }

    public double getPlanPrice() {
        return planPrice;
    }

    public void setPlanPrice(double planPrice) {
        this.planPrice = planPrice;
    }

    public String getPlanStatus() {
        return planStatus;
    }

    public void setPlanStatus(String planStatus) {
        this.planStatus = planStatus;
    }
    
    
    @Override
    public String toString() {
        return "PricingPlan{" + "planId=" + planId + ", planName=" + planName + ", planTime=" + planTime + ", planLimit=" + planLimit + ", planPrice=" + planPrice + '}';
    }
    
    
}
