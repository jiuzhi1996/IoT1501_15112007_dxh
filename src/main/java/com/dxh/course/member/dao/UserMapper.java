package com.dxh.course.member.dao;

import com.dxh.course.member.model.User;
import java.util.List;

public interface UserMapper {
    //  通过 id 查询
    public User findUserById(int id);
    //  添加
    public void addUser(User user);
    //
    public List<User> findAllUsers();
    //修改
    public void editUser(User user);
    //删除
    public void deleteUser(int id);

}
