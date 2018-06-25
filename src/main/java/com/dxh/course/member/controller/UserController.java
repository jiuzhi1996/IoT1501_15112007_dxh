package com.dxh.course.member.controller;

import com.dxh.course.member.model.User;
import com.dxh.course.member.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserService userService;

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
        //保存到数据库操作
        userService.addUser(user);

        return "redirect:toUserList";
    }

    //跳转到用户列表jsp
    @RequestMapping("/toUserList")
    public String toUserList(Model model){
        //到数据库查询
        List<User> userList = userService.findAllUsers();
        //把数据放到model传到jsp页面
        model.addAttribute("user_list",userList);
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

    //删除用户
    @RequestMapping("/deleteUser")
    public String deleteUser(int id,Model model){
        //保存到数据库操作
        userService.deleteUser(id);
        return "redirect:toUserList";
    }

    //修改用户
    @RequestMapping("/toEditUser")
    public String toEditUser(int id,Model model){
        //根据id从数据库查找用户
        User user = new User();
        user = userService.findUserById(id);

        model.addAttribute("user",user);

        return "useredit";
    }

    //修改用户信息
    @RequestMapping("/editUser")
    public String editUser(User user){
        //保存到数据库操作
        userService.editUser(user);

        return "redirect:toUserList";
    }


}
