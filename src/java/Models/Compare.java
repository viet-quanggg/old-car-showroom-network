/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Models;

import Models.Car;
import java.util.ArrayList;
import java.util.List;

public class Compare {
    int count=0;
    List<Line> items;
    
     public List<Line> getItems() {
        return items;
    }

    public boolean checkExist(String xId) {
        try {
            
            int id = Integer.parseInt(xId);
            
            for (Line item : items) {
                if(item.getCar().getCarID() == id){
                    return true;
                }
            }

        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        return false;
    }

    public Line getItemByCarId(int cid) {
        for (Line item : items) {
            if (item.getCar().getCarID() == cid) {
                return item;
            }
        }
        return null;
    }

    public void addItem(Line item) {
        if (getItemByCarId(item.getCar().getCarID()) == null) {
            items.add(item);
            count=count+1;
        }
    }

    public void removeItem(int productID) {
        if (getItemByCarId(productID) != null) {
            items.remove(getItemByCarId(productID));
            count=count-1;
        }
    }

    private Car getCarByCarId(int id, List<Car> list) {
        for (Car item : list) {
            if (item.getCarID() == id) {
                return item;
            }
        }
        return null;
    }

    public Compare(String txt, List<Car> list) {
        items = new ArrayList<>();
        try {

            if (txt != null && txt.length() != 0) {

                String[] itemLines = txt.split("-");

                for (String itemLine : itemLines) {
                    int id = Integer.parseInt(itemLine);

                    Car car = getCarByCarId(id, list);

                    Line newItem = new Line(car);

                    items.add(newItem);

                }

            }

        } catch (NumberFormatException e) {
            System.out.println(e);
        }
    }

}
