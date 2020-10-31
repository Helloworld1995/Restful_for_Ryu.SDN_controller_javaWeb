package com.itheima.service.impl;

import com.itheima.dao.IManagerDao;
import com.itheima.domain.Manager;
import com.itheima.domain.Role;
import com.itheima.service.IManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
@Service("managerService")
@Transactional
public class IManagerServiceImpl implements IManagerService, UserDetailsService {
    @Autowired
    IManagerDao iManagerDao;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        Manager manager=null;
        try {
            manager=iManagerDao.loginProcess(s);
        }catch(Exception e){
            e.printStackTrace();
        }
        User user=new User(manager.getManagerName(),manager.getManagerPassword(),manager.getManagerStatus()==0?false:true,true,true,true,getAuthority(manager.getRole()));
        return user;
    }
    //作用返回一个list集合，集合是user的权限集合
    public List<SimpleGrantedAuthority> getAuthority(List<Role> roles){
        ArrayList<SimpleGrantedAuthority> list = new ArrayList<>();
        for(Role r:roles){
            list.add(new SimpleGrantedAuthority("ROLE_"+r.getRoleName()));
        }
        return list;
    }

    @Override
    public List<Manager> findAllManagers() {
        return iManagerDao.findAllManagers();
    }

    @Override
    public Manager findManagerInfo(String id) {
        return iManagerDao.findManagerInfo(id);
    }

    @Override
    public void saveManager(Manager manager) {
        iManagerDao.saveManager(manager);
    }

    @Override
    public Manager findByName(String managerName) {
        return iManagerDao.findByName(managerName);
    }

    @Override
    public Manager loginProcess(String managerName) {
        return iManagerDao.loginProcess(managerName);
    }

    @Override
    public void deleteManager(String id) {
        iManagerDao.deleteManager(id);
    }

}
