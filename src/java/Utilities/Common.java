/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utilities;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.util.Date;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

public class Common {

    public String getFormatDate(Date date, String pattern) {
        SimpleDateFormat f = new SimpleDateFormat(pattern);
        return f.format(date);
    }

    public String getFormatPrice(double price) {
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

    public static List<String> saveImage(HttpServletRequest request, HttpServletResponse response, String foldername) {
        List<String> pathlist = null;
        try {

            Collection<Part> parts = request.getParts();
            if (parts != null && parts.size() > 0) {
                File fileSaveDir = new File(getAbsolutePath(request, response, File.separator + "web" + File.separator + "images"));
                if (!fileSaveDir.exists()) {
                    fileSaveDir.mkdirs();
                }
                fileSaveDir = new File(getAbsolutePath(request, response, File.separator + "web" +  File.separator + "images" + File.separator + foldername));
                if (!fileSaveDir.exists()) {
                    fileSaveDir.mkdirs();
                }
                List<Part> imageParts = new ArrayList<>();
                imageParts = parts.stream()
                        .filter(part -> part.getContentType() != null && part.getContentType().startsWith("image/"))
                        .collect(Collectors.toList());

//                 List<Part> imageParts = (List<Part>) request.getParts();

                if (imageParts != null && imageParts.size() > 0) {
                    String uploadDir = getAbsolutePath(request, response, File.separator + "web" +  File.separator + "images" + File.separator + foldername);
                    pathlist = new ArrayList<>();

                    for (Part part : imageParts) {
                        String filePath = uploadDir + File.separator + getFileName(part);
                        File existingFile = new File(filePath);
                        if (!existingFile.exists()) {
                            pathlist.add(filePath);
                            part.write(filePath);
                        }
                    }
                }
            }

        } catch (Exception e) {

        }
        return pathlist;
    }

    public static String getFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] tokens = contentDisp.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length() - 1);
            }
        }
        return "";
    }

    public static Date countDate(Date startDate, int month) throws ParseException {
        Date endDate = null;
        try {
            if (startDate != null) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(startDate);
                calendar.add(Calendar.MONTH, month);
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                endDate = (Date) sdf.parse(sdf.format(calendar.getTime()));
            }
        } catch (Exception e) {

        }
        return endDate;
    }

    public static String getAbsolutePath(HttpServletRequest request, HttpServletResponse response, String relativepath) {
        ServletContext servletContext = request.getServletContext();

        // Lay the absolute path den folder can luu
        return servletContext.getRealPath(relativepath);
    }
}
