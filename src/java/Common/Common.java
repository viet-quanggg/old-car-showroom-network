/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Common;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

public class Common {

    public static String getFormatDate(Date date, String pattern) {
        SimpleDateFormat f = new SimpleDateFormat(pattern);
        return f.format(date);
    }
    
    public static String getFormatPrice(double price) {
        DecimalFormat decimalFormat = new DecimalFormat("#,##0.00");
        String formattedPrice = decimalFormat.format(price);
        String[] parts = formattedPrice.split("\\,");

        String wholePart = parts[0];

        String result = "";

        wholePart = wholePart.replaceAll("\\.", "");
        System.out.println(wholePart);
        // Tỷ
        if (wholePart.length() > 9) {
            int billion = Integer.parseInt(wholePart.substring(0, wholePart.length() - 9));
            if (billion > 0) {
                result += billion + " Tỷ ";
            }
            wholePart = wholePart.substring(wholePart.length() - 9);
        }

        // Triệu
        if (wholePart.length() > 6) {
            int million = Integer.parseInt(wholePart.substring(0, wholePart.length() - 6));
            result += million + " Triệu ";
            wholePart = wholePart.substring(wholePart.length() - 6);
        }

        // Nghìn
        if (!wholePart.equals("0")) {
            int thousand = Integer.parseInt(wholePart);
            if (thousand > 0) {
                result += thousand + " Nghìn ";

            }
        }

        return result.trim();
    }
    
    public static String getFormatString(String string) {
        return string.replaceAll("\\s+", " ").trim();
    }
}
