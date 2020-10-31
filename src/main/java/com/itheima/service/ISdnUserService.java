package com.itheima.service;

import com.itheima.domain.Users;

import java.util.List;

public interface ISdnUserService {
    List<Users> findAll(int page, int size);

    void save(Users user);

    Users findById(String id);

    void delete(String id);
    Users loginCheck(String username,String password);
}
