package com.itheima.dao;

import com.itheima.domain.Path;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ISdnPathDao {
    List<Path> findPathByIp(String userip);

    void deletePath(@Param("nw_src")String nw_src, @Param("nw_dst")String nw_dst, @Param("path")String path);
}
