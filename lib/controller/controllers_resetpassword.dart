import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerReset extends GetxController {
  final emailC = TextEditingController();

  void onClose() {
    emailC.dispose();

    super.onClose();
  }
}
