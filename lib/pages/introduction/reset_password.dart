import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:masakan/controller/controllers_auth.dart';
import 'package:masakan/controller/controllers_resetpassword.dart';
import 'package:masakan/controller/controllers_signout.dart';
import 'package:masakan/routing/name_routing.dart';

class Resetpassword extends GetView<ControllerReset> {
  final authC = Get.find<Authcontrollers>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.orange,
            Colors.yellow,
            Colors.orange,
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                  width: 200,
                  height: 100,
                  image: AssetImage('assets/images/cooking.png')),
            ),
            Column(
              children: [
                ClipPath(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1),
                    ),
                    margin: EdgeInsets.all(20),
                    height: Get.height * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Reset Password',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 40, color: Colors.black),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          controller: controller.emailC,
                          decoration: InputDecoration(
                            icon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                        ),

                        // TextField(
                        //   obscureText: true,
                        //   decoration: InputDecoration(
                        //     icon: Icon(Icons.replay_circle_filled),
                        //     border: OutlineInputBorder(),
                        //     labelText: 'Re-Password',
                        //   ),
                        // ),
                        SizedBox(
                          height: 30,
                        ),
                        GFButton(
                          color: Colors.black,
                          onPressed: () {
                            authC.resetpassword(controller.emailC.text);
                          },
                          icon:
                              Icon(Icons.app_registration, color: Colors.white),
                          text: "Kirim Reset ",
                          textStyle: TextStyle(fontSize: 16),
                          type: GFButtonType.solid,
                          fullWidthButton: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text('2021 © Author Rizaldi Naldian Putra',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
