package com.itheima.domain;

import java.util.List;

public class Manager {
    private int id;
    private String managerName;
    private String managerPassword;
    private int managerStatus;
    private String managerStatusStr;
    private String roleid;
    private List<Role> role;

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid;
    }

    public List<Role> getRole() {
        return role;
    }

    public void setRole(List<Role> role) {
        this.role = role;
    }

    public void setManagerStatus(int managerStatus) {
        this.managerStatus = managerStatus;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public String getManagerPassword() {
        return managerPassword;
    }

    public void setManagerPassword(String managerPassword) {
        this.managerPassword = managerPassword;
    }

    public int getManagerStatus() {

        return managerStatus;
    }



    public String getManagerStatusStr() {

        if(managerStatus==1){
            managerStatusStr="已启用";
        }else{
            managerStatusStr="未启用";
        }
        return managerStatusStr;
    }
    public void setManagerStatusStr(String managerStatusStr) {
        this.managerStatusStr = managerStatusStr;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "id=" + id +
                ", managerName='" + managerName + '\'' +
                ", managerPassword='" + managerPassword + '\'' +
                ", managerStatus=" + managerStatus +
                ", managerStatusStr='" + managerStatusStr + '\'' +
                ", roleid='" + roleid + '\'' +
                '}';
    }
}
