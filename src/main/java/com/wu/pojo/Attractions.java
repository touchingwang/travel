package com.wu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Attractions {
    private  int attractionsId;
    private String attractionsName;
    private String attractionsAddress;
    private String openTime;
    private String closeTime;
    private int fares;
    private int cheapFares;
    private String cheapMessage;
}
