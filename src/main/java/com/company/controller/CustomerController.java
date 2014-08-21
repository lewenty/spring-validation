package com.company.controller;

import com.company.model.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

@Controller
public class CustomerController {


    private Map<String, Customer> customers = null;

    public CustomerController() {
        customers = new HashMap<String, Customer>();
    }


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }


    @RequestMapping(value = "/customer/save", method = RequestMethod.GET)
    public String saveCustomerPage(Model model) {
        model.addAttribute("customer", new Customer());
        return "create";
    }

    @RequestMapping(value = "/customer/save.do", method = RequestMethod.POST)
    public String saveCustomerAction(
            @Valid Customer customer,
            BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            return "create";
        }
        model.addAttribute("customer", customer);
        return "result";
    }

}
