import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const primaryColor = Color(0xFFC41B09);

const defaultPadding = 16.0;

final MultiValidator emailValidator = MultiValidator(
  [
    RequiredValidator(errorText: "This Field is required"),
    EmailValidator(errorText: "enter a valid email address")
  ],
);

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'password is required'),
  MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])',
      errorText: 'passwords must have at least one special character')
]);
