import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController  {

  String? department;

  List<String> departments = [
    'Engineering', 'Legal', 'Finance', 'Creative', 'Customer Success', 'Business Development', 'Human Resource'
  ];
   FormFieldValidator<String?> dropdownValidator = (value) {
    if (value == null || value.isEmpty) {
      return 'Please select an item';
    }

    return null; // Return null if the value is valid
  };

  updateDepartment(dynamic value) {
    department = value;
    update();
  }
}