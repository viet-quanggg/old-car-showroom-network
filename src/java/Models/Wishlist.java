package Models;

import Models.Car;
import java.util.ArrayList;
import java.util.List;

public class Wishlist {
    int count=0;
    List<Item> items;

    public List<Item> getItems() {
        return items;
    }
    public boolean checkExist(String xId) {
        try {
            
            int id = Integer.parseInt(xId);
            
            for (Item item : items) {
                if(item.getCar().getCarID() == id){
                    return true;
                }
            }

        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        return false;
    }
    

    public Item getItemByCarId(int cid) {
        for (Item item : items) {
            if (item.getCar().getCarID() == cid) {
                return item;
            }
        }
        return null;
    }

    public void addItem(Item item) {
        if (getItemByCarId(item.getCar().getCarID()) == null) {
            items.add(item);
        }
    }

    public void removeItem(int productID) {
        if (getItemByCarId(productID) != null) {
            items.remove(getItemByCarId(productID));
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

    public Wishlist(String txt, List<Car> list) {
        items = new ArrayList<>();
        try {

            if (txt != null && txt.length() != 0) {

                String[] itemLines = txt.split("-");

                for (String itemLine : itemLines) {
                    int id = Integer.parseInt(itemLine);

                    Car car = getCarByCarId(id, list);

                    Item newItem = new Item(car);

                    items.add(newItem);

                }

            }

        } catch (NumberFormatException e) {
            System.out.println(e);
        }
    }

}
