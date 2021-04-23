package com.wu.controller;

import com.wu.pojo.Booking;
import com.wu.service.BookingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/booking")
public class BookingController {
    //controller 调 service层
    @Autowired
    @Qualifier("BookingServiceImpl")
    private BookingService bookingService;

    //查询全部的预约，并且返回到一个预约信息页面
    @RequestMapping("/allBooking")
    public String allBooking(Model model){
        List<Booking> list = bookingService.queryAllBooking();
        model.addAttribute("list",list);
        return "allBooking";
    }

    //跳转到添加预约信息页面
    @RequestMapping("/toAddBooking")
    public String toAddBooking(){
        return "addBooking";
    }
    //添加预约的请求
    @RequestMapping("/addBooking")
    public String addBooking(Booking booking){
        bookingService.addBooking(booking);
        return "redirect:/booking/allBooking";
    }
}
