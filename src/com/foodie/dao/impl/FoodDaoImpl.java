/*
 * 
 */
package com.foodie.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.foodie.dao.FoodDao;
import com.foodie.model.CachedFoodItem;

/**
 * The Class FoodDaoImpl.
 *
 * @author harleenchadha
 */
public class FoodDaoImpl implements FoodDao {

    /*
     * (non-Javadoc)
     * 
     * @see com.foodie.dao.FoodDao#getFoodItems()
     */
    @Override
    public List<CachedFoodItem> getFoodItems() {
        List<CachedFoodItem> list = new ArrayList<>();

        CachedFoodItem food = new CachedFoodItem();
        food.setFoodCode("1001");
        food.setFoodName("Teriyaki Chicken Lettuce Wraps");
        food.setFoodImagePath("images/recipe-1.jpg");
        list.add(food);

        return list;
    }
}