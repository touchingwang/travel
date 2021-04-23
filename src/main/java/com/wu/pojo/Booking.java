package com.wu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Booking {
    private int bookingId;
    private String bookingUser;
    private String bookingAttractionsName;
    private String bookingTime;
}
