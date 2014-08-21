package com.company.validation;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint(validatedBy = PhoneValidator.class)
@Target({ElementType.METHOD,ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Phone {

    String message() default "Telefon Numarasi Uyumsuz! Uyumlu format(xxxxxxxxxx xxx-xxx-xxxx) seklindedir. ";

    Class<?>[]groups() default {};

    Class<? extends Payload>[] payload() default {};
}
