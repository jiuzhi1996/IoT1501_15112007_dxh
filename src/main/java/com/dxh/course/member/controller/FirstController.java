package com.dxh.course.member.controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class FirstController implements Controller {
    @Override
    public ModelAndView handleRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        //1、声明一个 Spring 模型视图 ModelAndView 对象
        ModelAndView mav = new ModelAndView();
        //2、存储处理后的结果数据
        mav.addObject("msg", "这是我的第一个 Spring MVC 程序");
        //3、设置显示该数据的视图
        mav.setViewName("/application/first.jsp");
        return mav;
    }
}
