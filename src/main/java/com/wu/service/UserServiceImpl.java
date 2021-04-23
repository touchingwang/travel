package com.wu.service;

import com.wu.dao.UserMapper;
import com.wu.pojo.User;

import java.util.List;

public class UserServiceImpl implements UserService {
    private UserMapper userMapper;
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public List<User> queryAllUser() {
        return userMapper.queryAllUser();
    }

    public int deleteUserById(int id) {
        return userMapper.deleteUserById(id);
    }
}
