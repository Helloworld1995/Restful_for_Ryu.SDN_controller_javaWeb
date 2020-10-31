package com.itheima.service;

import com.itheima.domain.Manager;

import java.util.List;

public interface IManagerService {
List<Manager> findAllManagers();

Manager findManagerInfo(String id);

void saveManager(Manager manager);

Manager findByName(String managerName);

Manager loginProcess(String managerName);

    void deleteManager(String id);
}
