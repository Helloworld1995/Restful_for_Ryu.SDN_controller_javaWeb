package com.itheima.service.impl;

import com.itheima.domain.Role;
import com.itheima.service.IManager_roleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class IManager_roleServiceImpl implements IManager_roleService {
    @Autowired
    IManager_roleService iManager_roleService;

    @Override
    public void addManager_role(Role role) {
        iManager_roleService.addManager_role(role);
    }
}
