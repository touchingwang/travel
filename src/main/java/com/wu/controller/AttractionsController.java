package com.wu.controller;

import com.wu.pojo.Attractions;
import com.wu.pojo.User;
import com.wu.service.AttractionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/attractions")
public class AttractionsController {
    //controller 调 service层
    @Autowired
    @Qualifier("AttractionsServiceImpl")
    private AttractionsService attractionsService;

    //查询全部的景点，并且返回到一个用户信息页面
    @RequestMapping("/allAttractions")
    public String list(Model model){
        List<User> attractions = attractionsService.queryAttractions();
        model.addAttribute("attractions",attractions);
        return "allAttractions";
    }

    //跳转到修改景点信息页面
    @RequestMapping("/toUpdateAttractions")
    public String toUpdateAttractions(int id,Model model){
        Attractions attractions = attractionsService.queryAttractionsById(id);
        model.addAttribute("QAttractions",attractions);
        return "updateAttractions";
    }

    //修改景点信息
    @RequestMapping("/updateAttractions")
    public String updateAttractions(Attractions attractions){
        attractionsService.updateAttractions(attractions);
        return "redirect:/attractions/allAttractions";
    }
    //跳转到添加景点页面
    @RequestMapping("/toAddAttractions")
    public String toAddAttractions(){
        return "addAttractions";
    }
    //添加景点的请求
    @RequestMapping("/addAttractions")
    public String addAttractions(Attractions attractions){
        attractionsService.addAttractions(attractions);
        return "redirect:/attractions/allAttractions";//重定向到我们的@RequestMapping（"allBook"）
    }

    //删除景点信息
    @RequestMapping("/deleteAttractions")
    public String deleteAttractions(int id){
        attractionsService.deleteAttractionsById(id);
        return "redirect:/attractions/allAttractions";
    }
}
