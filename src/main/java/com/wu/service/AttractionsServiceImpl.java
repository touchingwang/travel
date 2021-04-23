package com.wu.service;

import com.wu.dao.AttractionsMapper;
import com.wu.pojo.Attractions;
import com.wu.pojo.User;

import java.util.Date;
import java.util.List;

public class AttractionsServiceImpl implements AttractionsService {
    private AttractionsMapper attractionsMapper;

    public void setAttractionsMapper(AttractionsMapper attractionsMapper) {
        this.attractionsMapper = attractionsMapper;
    }

    public List<User> queryAttractions() {
        return attractionsMapper.queryAttractions();
    }

    public int addAttractions(Attractions attractions) {
        return attractionsMapper.addAttractions(attractions);
    }

    @Override
    public Attractions queryAttractionsById(int id) {
        return attractionsMapper.queryAttractionsById(id);
    }

    public int updateAttractions(Attractions attractions) {
        return attractionsMapper.updateAttractions(attractions);
    }

    @Override
    public int deleteAttractionsById(int id) {
        return attractionsMapper.deleteAttractionsById(id);
    }
}
