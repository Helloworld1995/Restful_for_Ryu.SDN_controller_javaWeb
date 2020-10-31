package com.itheima.dao;

import com.itheima.domain.Users;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ISdnUserDao {
    List<Users> findAll();

    void save(Users user);

    Users findById(@Param("id") String id);

    void delete(String id);

    Users logincheck(@Param("username") String username,@Param("password") String password);
}
