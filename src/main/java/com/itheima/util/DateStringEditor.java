package com.itheima.util;

import org.springframework.beans.propertyeditors.PropertiesEditor;

import java.beans.PropertyEditor;
import java.text.ParseException;
import java.util.Date;

/**
 * 日期与字符串的转换
 */
public class DateStringEditor extends PropertiesEditor {
    Date date;
    @Override

    public void setAsText(String text) throws IllegalArgumentException {  //将text字符串转换成date
        try {
           date= DateUtils.String2Date(text,"yyyy-MM-dd HH:mm");
           super.setValue(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}
