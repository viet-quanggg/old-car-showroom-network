/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Common;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

public class CommonForJSP {

    public String getFormatDate(Date date, String pattern) {
        SimpleDateFormat f = new SimpleDateFormat(pattern);
        return f.format(date);
    }

    
}
