package com.itheima.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BCryptPasswordEncoderUtils {
    private static BCryptPasswordEncoder bCryptPasswordEncoder=new BCryptPasswordEncoder();
    public static String encodePassword(String password){
        return bCryptPasswordEncoder.encode(password);
    }

//    public static void main(String[] args) {
//        String password="123";
//       String encodePassword= encodePassword(password);
//        System.out.println(encodePassword);
//    }
}
