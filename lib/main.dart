import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:masakan/routing/name_routing.dart';

import 'controller/controllers_auth.dart';
import 'routing/page_routing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(
    Authcontrollers(),
    permanent: true,
  );
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: authC.streamauthstatus,
        builder: (context, snapshoot) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute:
                snapshoot.data != null ? RouteName.home : RouteName.login,
            getPages: PageRouting.pages,
          );
        });
  }
}
