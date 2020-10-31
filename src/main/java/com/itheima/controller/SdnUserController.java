package com.itheima.controller;

import com.github.pagehelper.PageInfo;

import com.itheima.domain.Users;
import com.itheima.service.ISdnUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
@Controller
@RequestMapping("/SdnUser")
public class SdnUserController {
    @Autowired
    ISdnUserService iSdnUserService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1") int page , @RequestParam(name = "size",required = true,defaultValue = "4") int size ) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Users> usersList =iSdnUserService.findAll(page,size);
        //PageInfo就是一个分页bean
        PageInfo pageInfo=new PageInfo(usersList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("hostList");
        return mv;
    }
    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name = "id",required = true) String id){
        ModelAndView mv=new ModelAndView();
        Users user=iSdnUserService.findById(id);
        mv.addObject("user", user);
        mv.setViewName("user-show2");
        return mv;
    }
    @RequestMapping("/delete.do")
    public String delete(@RequestParam(name = "id",required = true) String id){
        iSdnUserService.delete(id);
        return "redirect:findAll.do";
    }

    @RequestMapping("/save.do")
    public String save(Users user){
        iSdnUserService.save(user);
        return "redirect:findAll.do";
    }
    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public String login(Users user, HttpServletResponse response,HttpSession session) throws IOException {
        String username = user.getUsername();
        String password=user.getPassword();
        Users result=iSdnUserService.loginCheck(username, password);
        if(result==null){
            session.setAttribute("error", "用户密码错误");
            response.sendRedirect("/clientLogin.jsp");
        }
        session.setAttribute("id", result.getId());
        return "redirect:findUserInfo.do";
    }
    @RequestMapping(value = "/findUserInfo.do")
    public ModelAndView findUserInfo(HttpSession session){
        int id= (int) session.getAttribute("id");
        Users user = iSdnUserService.findById(String.valueOf(id));
        ModelAndView mv=new ModelAndView();
        mv.addObject("user", user);
        mv.setViewName("clientTest");
        return mv;

    }
}
