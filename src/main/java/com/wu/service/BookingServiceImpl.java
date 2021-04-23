package com.wu.service;

import com.wu.dao.BookingMapper;
import com.wu.pojo.Booking;

import java.util.List;

public class BookingServiceImpl implements BookingService {
    private BookingMapper bookingMapper;
    public void setBookingMapper(BookingMapper bookingMapper) {
        this.bookingMapper = bookingMapper;
    }

    @Override
    public List<Booking> queryAllBooking() {
        return bookingMapper.queryAllBooking();
    }

    @Override
    public int addBooking(Booking booking) {
        return bookingMapper.addBooking(booking);
    }
}
