/*
 * 
 */
package com.foodie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.foodie.model.CachedFoodItem;
import com.foodie.service.FoodService;

/**
 * The Class FoodieWorld.
 *
 * @author harleenchadha
 */
@Controller
public class FoodieWorld {

    /** The food service. */
    @Autowired
    private FoodService foodService;

    /**
     * Welcome.
     *
     * @param model
     *        the model
     * @return the string
     */
    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String welcome(final Model model) {
        final List<CachedFoodItem> list = foodService.getFoodItems();
        model.addAttribute("foodItems", list);
        return "welcome";
    }
}