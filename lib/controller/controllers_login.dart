import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerLogin extends GetxController {
  final emailC = TextEditingController();
  final passC = TextEditingController();

  void onClose() {
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
