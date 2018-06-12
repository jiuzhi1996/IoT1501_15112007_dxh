package com.dxh.course.member.controller;

import com.dxh.course.member.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @RequestMapping("/selectUser")
    public String selectUser(int id,Model model) {

        model.addAttribute("msg","选择了"+id+"的用户");
        return "success";
    }


    //跳转到用户注册页面
    @RequestMapping("/toRegister")// 跳转到注册 jsp 页面
    public String toRegister() {
        return "registeruser";
    }


    @RequestMapping("/registerUser")
    public String registerUser(User user, Model model) {
        Integer id= user.getId();
        String name=user.getName();
        String sex=user.getSex();
        String email=user.getEmail();
        StringBuilder msg=new StringBuilder();
        msg.append("用户信息：<br />");
        msg.append("id="+id+"<br />");
        msg.append("name="+name+"<br />");
        msg.append("sex="+sex+"<br />");
        msg.append("email="+email+"<br />");
        model.addAttribute("msg",msg.toString());
        return "success";
    }

    //跳转到用户列表jsp
    @RequestMapping("/toUserList")
    public String toUserList(){

        return "userlist";

    }

    //批量删除用户
    @RequestMapping("/deleteUsers")
    public String deleteUsers(int[] ids,Model model){

        String msg="";

        for(int id:ids){
            msg=msg+","+id;
        }

        model.addAttribute("msg",msg);

        return "success";

    }



}
