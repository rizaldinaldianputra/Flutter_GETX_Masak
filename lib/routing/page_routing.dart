import 'package:get/get.dart';
import 'package:masakan/bindings/b_home.dart';
import 'package:masakan/bindings/b_login.dart';
import 'package:masakan/bindings/b_reset.dart';
import 'package:masakan/bindings/b_signout.dart';
import 'package:masakan/controller/controllers_resetpassword.dart';
import 'package:masakan/pages/introduction/intro1.dart';
import 'package:masakan/pages/introduction/intro2.dart';
import 'package:masakan/pages/introduction/intro3.dart';
import 'package:masakan/pages/introduction/login.dart';
import 'package:masakan/pages/introduction/register.dart';
import 'package:masakan/pages/introduction/reset_password.dart';
import 'package:masakan/pages/menu/home.dart';

import 'name_routing.dart';

class PageRouting {
  static final pages = [
    GetPage(
      name: RouteName.intro1,
      page: () => Intro1(),
    ),
    GetPage(
      name: RouteName.intro2,
      page: () => Intro2(),
    ),
    GetPage(
      name: RouteName.intro3,
      page: () => Intro3(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => Home(),
      binding: BindingsHome(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => Login(),
      binding: BindingsLogin(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => Register(),
      binding: BindingsSignout(),
    ),
    GetPage(
      name: RouteName.reset,
      page: () => Resetpassword(),
      binding: Bindingsreset(),
    )
  ];
}
