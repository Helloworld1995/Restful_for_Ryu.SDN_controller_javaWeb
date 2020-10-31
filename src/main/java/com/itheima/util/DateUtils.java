package com.itheima.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
    /**
     * 日期转换功能
     */
    public static String date2String(Date date,String pattern){
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        String format=sdf.format(date);
        return format;
    }
    /**
     * 字符串转换成日期
     */
    public static Date String2Date(String str,String pattern) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        Date date = sdf.parse(str);
        return date;
    }
}
