package com.itheima.controller;

import com.itheima.domain.Path;
import com.itheima.service.ISdnPathService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


@Controller
@RequestMapping("/Path")
public class SdnPathController {
    @Autowired
    ISdnPathService iSdnPathService;
    @RequestMapping(value = "/findPathByIp.do",method = RequestMethod.POST)
    @ResponseBody
    public List<Path> findPathByIp(@RequestBody Path p){
        List<Path> paths = iSdnPathService.findPathByIp(p.getIpAddr());
            return paths;
    }
    @RequestMapping(value = "/deletePath.do",method=RequestMethod.POST,produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String deletePath(@RequestParam(name = "nw_src",required = true) String nw_src,@RequestParam(name = "nw_dst",required = true) String nw_dst,@RequestParam(name = "path",required = true) String path){
        iSdnPathService.deletePath(nw_src,nw_dst,path);
        return "已清除数据库中该流表信息";
    }
    @RequestMapping(value = "/ajust.do")
    public ModelAndView ajust(@RequestParam(name = "nw_src",required = true) String nw_src,@RequestParam(name = "nw_dst",required = true) String nw_dst,@RequestParam(name = "path",required = true) String path,@RequestParam(name = "priority",required = true) String priority){
        String[] str = path.split(",");
        List<String> swList=new ArrayList<>();
        for (String s : str) {
            swList.add(s);
        }
        ModelAndView mv=new ModelAndView();
        mv.addObject("nw_src", nw_src);
        mv.addObject("nw_dst", nw_dst);
        mv.addObject("swList", swList);
        mv.addObject("priority", priority);
        mv.setViewName("Rest-Ryu");
        return mv;
    }

}
