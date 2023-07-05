/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.Date;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

/**
 *
 * @author Admin
 */
public class Car {

    private int carID;
    private int ownerID;
    private String carShowroom;
    private double carPrice;
    private String carName;
    private int carYear;
    private String carDescription;

    private boolean carCondition;
    private Date createDate;
    private Date updateDate;
    private String car_seat;
    private String engine;
    private float odo;
    private Brand brand;

    private List<Image> image;
    private Color color;

    public Car() {
    }

    public Car(int carID, int ownerID, String carShowroom, double carPrice, String carName, int carYear, String carDescription, boolean carCondition, Date createDate, Date updateDate, String car_seat, String engine, float odo, Brand brand, List<Image> image, Color color) {
        this.carID = carID;
        this.ownerID = ownerID;
        this.carShowroom = carShowroom;
        this.carPrice = carPrice;
        this.carName = carName;
        this.carYear = carYear;
        this.carDescription = carDescription;
        this.carCondition = carCondition;
        this.createDate = createDate;
        this.updateDate = updateDate;
        this.car_seat = car_seat;
        this.engine = engine;
        this.odo = odo;
        this.brand = brand;
        this.image = image;
        this.color = color;
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

    public double getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(double carPrice) {
        this.carPrice = carPrice;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
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

    public boolean isCarCondition() {
        return carCondition;
    }

    public void setCarCondition(boolean carCondition) {
        this.carCondition = carCondition;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public List<Image> getImage() {
        return image;
    }

    public void setImage(List<Image> image) {
        this.image = image;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public String getCar_seat() {
        return car_seat;
    }

    public void setCar_seat(String car_seat) {
        this.car_seat = car_seat;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public String getFormatPrice() {
        Locale localeVN = new Locale("vi", "VN");
        NumberFormat vn = NumberFormat.getInstance(localeVN);
        return vn.format(this.carPrice);
    }

    public float getOdo() {
        return odo;
    }

    public void setOdo(float odo) {
        this.odo = odo;
    }

}
