package com.wu.dao;

import com.wu.pojo.Attractions;
import com.wu.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AttractionsMapper {
    //查询景点
    List<User> queryAttractions();

    //添加景点
    int addAttractions(Attractions attractions);

    //查询一本书
    Attractions queryAttractionsById(int id);

    //修改景点
    int updateAttractions(Attractions attractions);

    //删除景点
    int deleteAttractionsById(int id);
}
