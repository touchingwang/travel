package com.wu.dao;

import com.wu.pojo.Booking;
import java.util.List;

public interface BookingMapper {
    //查看预约信息
    List<Booking> queryAllBooking();

    //添加预约信息
    int addBooking(Booking booking);
}
