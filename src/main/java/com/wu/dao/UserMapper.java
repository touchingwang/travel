package com.wu.dao;

import com.wu.pojo.User;

import java.util.List;

public interface UserMapper {

    //查询用户信息
    List<User> queryAllUser();

    //删除用户信息
    int deleteUserById(int id);
}
