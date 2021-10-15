import 'package:get/get.dart';
import 'package:masakan/controller/controllers_home.dart';
import 'package:masakan/controller/controllers_login.dart';

class BindingsLogin extends Bindings {
  @override
  void dependencies() {
    Get.put(ControllerLogin());
  }
}
