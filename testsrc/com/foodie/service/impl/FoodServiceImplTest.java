/*
 * 
 */
package com.foodie.service.impl;

import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import junit.framework.Assert;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import com.foodie.dao.FoodDao;
import com.foodie.model.CachedFoodItem;
import com.foodie.service.FoodService;

/**
 * The Class FoodServiceImplTest.
 *
 * @author harleenchadha
 */
@RunWith(MockitoJUnitRunner.class)
public class FoodServiceImplTest {

    @InjectMocks
    private final FoodService foodService = new FoodServiceImpl();

    @Mock
    private FoodDao foodDao;

    private List<CachedFoodItem> foodItemList = new ArrayList<>();

    @Before
    public void setUp() throws Exception {
        final CachedFoodItem foodItem = new CachedFoodItem();
        foodItem.setFoodCode("101");
        foodItem.setFoodName("Sizzler");
        foodItem.setFoodImagePath("images\\sizzler.png");
        foodItemList.add(foodItem);

        when(foodDao.getFoodItems()).thenReturn(foodItemList);
    }

    @Test
    public void testGetFoodItemsSize() {
        final List<CachedFoodItem> foodItems = foodDao.getFoodItems();
        Assert.assertEquals("Size is same.", foodItemList.size(), foodItems.size());
    }

    @Test
    public void testFoodItemsCode() {
        final List<CachedFoodItem> foodItems = foodDao.getFoodItems();
        Assert.assertEquals("Food code is same.", foodItemList.get(0).getFoodCode(), foodItems.get(0).getFoodCode());
    }

    @Test
    public void testFoodItemsName() {
        final List<CachedFoodItem> foodItems = foodDao.getFoodItems();
        Assert.assertEquals("Food name is same.", foodItemList.get(0).getFoodName(), foodItems.get(0).getFoodName());
    }
}