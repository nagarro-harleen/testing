/*
 * 
 */
package com.foodie.service;

import java.util.List;

import com.foodie.model.CachedFoodItem;

/**
 * The Interface FoodService.
 *
 * @author harleenchadha
 */
public interface FoodService {

    /**
     * Gets the food items.
     *
     * @return the food items
     */
    public List<CachedFoodItem> getFoodItems();
}
