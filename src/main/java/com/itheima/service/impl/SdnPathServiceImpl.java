package com.itheima.service.impl;

import com.itheima.dao.ISdnPathDao;
import com.itheima.dao.ISdnUserDao;
import com.itheima.domain.Path;
import com.itheima.service.ISdnPathService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class SdnPathServiceImpl implements ISdnPathService {
    @Autowired
    ISdnPathDao iSdnPathDao;


    @Override
    public List<Path> findPathByIp(String userip) {
        return iSdnPathDao.findPathByIp(userip);

    }

    @Override
    public void deletePath(String nw_src, String nw_dst, String path) {
        iSdnPathDao.deletePath(nw_src,nw_dst,path);
    }
}
