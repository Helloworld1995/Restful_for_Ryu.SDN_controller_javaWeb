package com.itheima.controller;


import com.itheima.domain.Manager;
import com.itheima.domain.Role;
import com.itheima.service.IManagerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/manager")
public class MannagerController {
    public static void testGit(){
        System.out.println("hello git！");
    }
    @Autowired
    IManagerService iManagerService;
    @RequestMapping("/findAllManagers.do")
    @RolesAllowed("ADMIN")  //只允许ADMIN权限的管理员操作
    public ModelAndView findAllManagers(){
        List<Manager> mannagersList = iManagerService.findAllManagers();
        ModelAndView mv=new ModelAndView();
        mv.addObject("mannagersList", mannagersList);
        mv.setViewName("ManangerList");
        return mv;
    }
    @RequestMapping("/findManagerInfo.do")
    public ModelAndView findManagerInfo(@RequestParam(name = "id",required = true) String id){
        Manager manager=iManagerService.findManagerInfo(id);
        ModelAndView mv=new ModelAndView();
        mv.addObject("manager", manager);
        mv.setViewName("Manager-show");
        return mv;
    }
    @RequestMapping(value = "/addManager.do",method = RequestMethod.POST)
    @RolesAllowed("ADMIN")  //只允许ADMIN权限的管理员操作
    @ResponseBody
        public String addManager(Manager manager,HttpSession session){
        Manager flag = iManagerService.findByName(manager.getManagerName());
        String result;
        if(flag==null){
            iManagerService.saveManager(manager);
            result="OK";
        }else{
            result="NO";

        }
        return result;
    }

    @RequestMapping("/deleteManager.do")
    @RolesAllowed("ADMIN")  //只允许ADMIN权限的管理员操作
    public String deleteManager(@RequestParam(name = "id",required = true) String id){
        iManagerService.deleteManager(id);
        return "redirect:findAllManagers.do";
    }
}
