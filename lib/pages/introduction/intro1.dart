import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getwidget/getwidget.dart';
import 'package:masakan/routing/name_routing.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(RouteName.intro2);
        },
        child: Icon(Icons.arrow_forward),
      ),
      body: Center(
        child: GFImageOverlay(
          height: 200,
          width: 200,
          shape: BoxShape.circle,
          image: AssetImage('assets/images/intro.jpg'),
          boxFit: BoxFit.cover,
        ),
      ),
    );
  }
}
