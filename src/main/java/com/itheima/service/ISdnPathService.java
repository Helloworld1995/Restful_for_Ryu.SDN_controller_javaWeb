package com.itheima.service;

import com.itheima.domain.Path;

import java.util.List;

public interface ISdnPathService {
    List<Path> findPathByIp(String userip);

    void deletePath(String nw_src, String nw_dst, String path);
}
