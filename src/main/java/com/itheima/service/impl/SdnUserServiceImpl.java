package com.itheima.service.impl;

import com.github.pagehelper.PageHelper;
import com.itheima.dao.ISdnUserDao;
import com.itheima.domain.Users;
import com.itheima.service.ISdnUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class SdnUserServiceImpl implements ISdnUserService {
    @Autowired
    ISdnUserDao iSdnUserDao;
    @Override
    public List<Users> findAll(int page, int size) {
        PageHelper.startPage(page,size);
        return iSdnUserDao.findAll();
    }

    @Override
    public void save(Users user) {
        iSdnUserDao.save(user);
    }

    @Override
    public Users findById(String id) {
        return iSdnUserDao.findById(id);
    }

    @Override
    public void delete(String id) {
        iSdnUserDao.delete(id);
    }

    @Override
    public Users loginCheck(String username, String password) {
        Users user=iSdnUserDao.logincheck(username,password);
        return user;
    }
}
