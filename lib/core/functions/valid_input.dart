import 'package:get/get.dart';

String? validInput(String? value, String type, int min, int max) {
  if (type == "username") {
    if (!GetUtils.isUsername(value!)) {
      return "is not username";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(value!)) {
      return "is not email";
    }
  }
  if (type == "password") {
    if (!GetUtils.isUsername(value!)) {
      return "is not password";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(value!)) {
      return "is not password";
    }
  }
  if (value!.isEmpty) {
    return "can not be empty";
  }
  if (value.length > max) {
    return "can not be more than $max";
  }
  if (value.length < min) {
    return "can not be less than $min";
  }
}
