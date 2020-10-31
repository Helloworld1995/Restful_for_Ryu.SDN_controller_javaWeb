package com.itheima.domain;

import com.itheima.util.DateUtils;

import java.io.Serializable;
import java.util.Date;

public class Users implements Serializable {
    private int id;
    private String username;
    private String password;
    private String userip;
    private int status;
    private String statusStr;
    private int time;
    private Date lastLoginTime;
    private int degreeid;
    private Degree degree;
    private String lastLoginTimeStr;
    private int spot;
    private String timeStr;

    public String getTimeStr() {
        int hour=time/3600;
        int minute=(time-hour*3600)/60;
        int seconds=time-hour*3600-minute*60;
        String s=String.valueOf(hour)+"小时"+String.valueOf(minute)+"分钟"+String.valueOf(seconds)+"秒";
        return s;
    }

    public void setTimeStr(String timeStr) {
        this.timeStr = timeStr;
    }

    public void setStatusStr(String statusStr) {
        this.statusStr = statusStr;
    }


    public String getPassword() {
        return password;
    }

    public int getDegreeid() {
        return degreeid;
    }

    public void setDegreeid(int degreeid) {
        this.degreeid = degreeid;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserip() {
        return userip;
    }

    public void setUserip(String userip) {
        this.userip = userip;
    }

    public String getStatusStr() {
        if(status==1){
            statusStr="用户已登录";
        }else{
            statusStr="用户离线";
        }
        return statusStr;
    }

    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    public int getSpot() {
        if(time<1){
            spot=0;
        }else{
            spot=1;
        }
        return spot;
    }

    public void setSpot(int spot) {
        this.spot = spot;
    }

    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    public String getLastLoginTimeStr() {
        if(lastLoginTime!=null){
            lastLoginTimeStr=DateUtils.date2String(lastLoginTime,"yyyy-MM-dd HH:mm:ss");
        }
        return lastLoginTimeStr;
    }

    public void setLastLoginTimeStr(String lastLoginTimeStr) {
        this.lastLoginTimeStr = lastLoginTimeStr;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getTime() {


        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }


    public Degree getDegree() {
        return degree;
    }

    public void setDegree(Degree degree) {
        this.degree = degree;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", userip='" + userip + '\'' +
                ", status=" + status +
                ", statusStr='" + statusStr + '\'' +
                ", time=" + time +
                ", lastLoginTime=" + lastLoginTime +
                ", degreeid=" + degreeid +
                ", degree=" + degree +
                ", lastLoginTimeStr='" + lastLoginTimeStr + '\'' +
                ", spot=" + spot +
                '}';
    }
}
