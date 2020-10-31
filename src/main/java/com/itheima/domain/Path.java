package com.itheima.domain;

import java.io.Serializable;
import java.util.List;

public class Path implements Serializable {
    private int id;
    private String ipAddr;
    private String ipAddrDST;
    private String path;
    private List<String> sw_List;

    public List<String> getSw_List() {
        return sw_List;
    }

    public void setSw_List(List<String> sw_List) {
        this.sw_List = sw_List;
    }

    public String getIpAddrDST() {
        return ipAddrDST;
    }

    public void setIpAddrDST(String ipAddrDST) {
        this.ipAddrDST = ipAddrDST;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIpAddr() {
        return ipAddr;
    }

    public void setIpAddr(String ipAddr) {
        this.ipAddr = ipAddr;
    }

    public String getPath() {
        if(path.equals("")){
            path="当前没有路由数据";
        }
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    @Override
    public String toString() {
        return "Path{" +
                "id=" + id +
                ", ipAddr='" + ipAddr + '\'' +
                ", ipAddrDST='" + ipAddrDST + '\'' +
                ", path='" + path + '\'' +
                '}';
    }
}
