package com.itheima.dao;

import com.itheima.domain.Manager;
import com.itheima.domain.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IManagerDao {

    List<Manager> findAllManagers();

    Manager findByName(String managerName);

    Manager findManagerInfo(@Param("id") String id);

    void saveManager(Manager manager);
    Manager loginProcess(@Param("mname") String managerName);


    void deleteManager(@Param("id1") String id);
}
