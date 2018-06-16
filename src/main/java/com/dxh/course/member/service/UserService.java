package com.dxh.course.member.service;

import com.dxh.course.member.model.User;
import java.util.List;

public interface UserService {

    //  通过 id 查询
    public User findUserById(int id);
    //  添加
    public void addUser(User user);

    public List<User> findAllUsers();

    public void editUser(User user);

    public void deleteUser(int id);

}
