package com.sp.util;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.sp.entity.dict.ProjectType;

@Component("formValidator")
public class FormValidator  implements Validator
{
    @SuppressWarnings("unchecked")
    @Override
    public boolean supports(Class clazz)
    {
        return ProjectType.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object model, Errors errors)
    {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "projectType","required.projectType", "Name is required.");
    }
}
