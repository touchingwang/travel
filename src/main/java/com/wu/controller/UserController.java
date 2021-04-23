package com.wu.controller;

import com.wu.pojo.User;
import com.wu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    //controller 调 service层
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    //查询全部的用户，并且返回到一个用户信息页面
    @RequestMapping("/allUser")
    public String list(Model model){
        List<User> list = userService.queryAllUser();
        model.addAttribute("list",list);
        return "allUser";
    }

    //删除用户
    @RequestMapping("/deleteUser")
    public String deleteUser(int id){
        userService.deleteUserById(id);
        return "redirect:/user/allUser";
    }

}
