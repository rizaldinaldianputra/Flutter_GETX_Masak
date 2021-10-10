import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masakan/routing/name_routing.dart';

class Intro3 extends StatelessWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.login);
                },
                child: Text('Mari Kita Masak !!!!'))
          ],
        ),
      ),
    );
  }
}
