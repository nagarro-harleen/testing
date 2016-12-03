/*
 * 
 */
package com.foodie.dao;

import java.util.List;

import com.foodie.model.CachedFoodItem;

/**
 * The Class FoodDao.
 *
 * @author harleenchadha
 */
public interface FoodDao {

    /**
     * Gets the food items.
     *
     * @return the food items
     */
    public List<CachedFoodItem> getFoodItems();
}
