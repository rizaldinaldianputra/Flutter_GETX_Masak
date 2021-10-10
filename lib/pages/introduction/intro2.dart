import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:masakan/routing/name_routing.dart';

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Get.toNamed(RouteName.intro3);
        },
      ),
      body: Center(
        child: (Container(
          child: Text('ini text 2'),
        )),
      ),
    );
  }
}
