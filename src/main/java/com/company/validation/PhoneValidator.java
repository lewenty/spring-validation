package com.company.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PhoneValidator implements ConstraintValidator<Phone,String> {

    @Override
    public void initialize(Phone phone) {
    }


    @Override
    public boolean isValid(String phone, ConstraintValidatorContext constraintValidatorContext) {

        if(phone.matches("\\d{10}")) return true;
        else if(phone.matches("\\d{3}[-]\\d{3}[-]\\d{4}")) return true;
        else return false;

    }
}
