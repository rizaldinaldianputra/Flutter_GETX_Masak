import 'package:get/get.dart';
import 'package:masakan/controller/controllers_home.dart';
import 'package:masakan/controller/controllers_login.dart';
import 'package:masakan/controller/controllers_signout.dart';

class BindingsSignout extends Bindings {
  @override
  void dependencies() {
    Get.put(ControllerSignOut());
  }
}
