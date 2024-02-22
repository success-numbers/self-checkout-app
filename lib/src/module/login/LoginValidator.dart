import 'package:validators/validators.dart';

import '../../config/regex.dart';


class LoginInputValidator {

  static String? validateUsername(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!isNumeric(value)) {
        if (!(isEmail(value) || usernameRegexExp.hasMatch(value))) {
          return 'Not a valid email or phone number or username';
        }
      }
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!isNumeric(value)) {
        return 'Not a valid phone number';
      }
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!isEmail(value)) {
        return 'Not a valid email';
      }
    }
    return null;
  }
}