/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Admin
 */
public class Car {
    private int carID;
    private int ownerID;
    private String carShowroom;
    private float carPrice;
    private String carName;
    private String carBrand;
    private int carYear;
    private String carDescription;
    private String carImage;
    private boolean carCondition;

    public Car() {
    }

    public Car(int carID, int ownerID, String carShowroom, float carPrice, String carName, String carBrand, int carYear, String carDescription, String carImage, boolean carCondition) {
        this.carID = carID;
        this.ownerID = ownerID;
        this.carShowroom = carShowroom;
        this.carPrice = carPrice;
        this.carName = carName;
        this.carBrand = carBrand;
        this.carYear = carYear;
        this.carDescription = carDescription;
        this.carImage = carImage;
        this.carCondition = carCondition;
    }

    public int getCarID() {
        return carID;
    }

    public void setCarID(int carID) {
        this.carID = carID;
    }

    public int getOwnerID() {
        return ownerID;
    }

    public void setOwnerID(int ownerID) {
        this.ownerID = ownerID;
    }

    public String getCarShowroom() {
        return carShowroom;
    }

    public void setCarShowroom(String carShowroom) {
        this.carShowroom = carShowroom;
    }

    public float getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(float carPrice) {
        this.carPrice = carPrice;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(String carBrand) {
        this.carBrand = carBrand;
    }

    public int getCarYear() {
        return carYear;
    }

    public void setCarYear(int carYear) {
        this.carYear = carYear;
    }

    public String getCarDescription() {
        return carDescription;
    }

    public void setCarDescription(String carDescription) {
        this.carDescription = carDescription;
    }

    public String getCarImage() {
        return carImage;
    }

    public void setCarImage(String carImage) {
        this.carImage = carImage;
    }

    public boolean isCarCondition() {
        return carCondition;
    }

    public void setCarCondition(boolean carCondition) {
        this.carCondition = carCondition;
    }
    
    
}
