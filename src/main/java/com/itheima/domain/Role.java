package com.itheima.domain;



import java.util.List;

public class Role {
    private String id;
    private String roleName;
    private String rolePermission;
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRolePermission() {
        if(roleName.equals("ADMIN")){
            rolePermission="全局管理员";
        }else if(roleName.equals("USER")){
            rolePermission="一般管理员";
        }
        return rolePermission;
    }

    public void setRolePermission(String rolePermission) {
        this.rolePermission = rolePermission;
    }
}
