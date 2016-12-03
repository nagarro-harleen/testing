/*
 * 
 */
package com.foodie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.foodie.dao.FoodDao;
import com.foodie.model.CachedFoodItem;
import com.foodie.service.FoodService;

/**
 * The Class FoodServiceImpl.
 *
 * @author harleenchadha
 */
public class FoodServiceImpl implements FoodService {

    /** The food dao. */
    @Autowired
    private FoodDao foodDao;

    /*
     * (non-Javadoc)
     * 
     * @see com.foodie.service.FoodService#getFoodItems()
     */
    @Override
    public List<CachedFoodItem> getFoodItems() {
        return foodDao.getFoodItems();
    }
}