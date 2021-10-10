import 'package:get/get.dart';
import 'package:masakan/controller/controllers_home.dart';

class BindingsHome extends Bindings {
  @override
  void dependencies() {
    Get.put(ControllerHome());
  }
}
