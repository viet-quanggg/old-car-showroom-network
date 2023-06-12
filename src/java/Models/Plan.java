 
package Models;

public class Plan {
    private int planId;
    private String planName;
    private int planTime;
    private int planLimit;
    private Double planPrice;

    public Plan() {
        
    }
    public Plan(int planId, String planName, int planTime, int planLimit, Double planPrice) {
        this.planId = planId;
        this.planName = planName;
        this.planTime = planTime;
        this.planLimit = planLimit;
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

    public Double getPlanPrice() {
        return planPrice;
    }

    public void setPlanPrice(Double planPrice) {
        this.planPrice = planPrice;
    }
    
    
}
