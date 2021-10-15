import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:masakan/controller/controllers_auth.dart';
import 'package:masakan/controller/controllers_login.dart';
import 'package:masakan/routing/name_routing.dart';

class Login extends GetView<ControllerLogin> {
  @override
  Widget build(BuildContext context) {
    final authC = Get.find<Authcontrollers>();
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextField(
                            controller: controller.emailC,
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                            ),
                          ),
                          TextField(
                            controller: controller.passC,
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: Icon(Icons.vpn_key),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        GFToggle(
                                          enabledTrackColor: Colors.blue,
                                          onChanged: (val) {},
                                          value: false,
                                          type: GFToggleType.android,
                                        ),
                                        Text('Remember Me'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                splashColor: Colors.blue,
                                onTap: () {
                                  Get.toNamed(RouteName.reset);
                                },
                                child: Text('Lupa Password ?',
                                    style: TextStyle(color: Colors.blue)),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          GFButton(
                            color: Colors.black,
                            onPressed: () {
                              authC.login(controller.emailC.text,
                                  controller.passC.text);
                            },
                            icon: Icon(Icons.login, color: Colors.white),
                            text: "Sign in ",
                            textStyle: TextStyle(fontSize: 16),
                            type: GFButtonType.solid,
                            fullWidthButton: true,
                          ),
                          GFButton(
                            color: Colors.red,
                            onPressed: () {},
                            text: "Sign in Google",
                            textStyle: TextStyle(fontSize: 16),
                            icon: Image(
                              image: AssetImage('assets/images/google.png'),
                            ),
                            type: GFButtonType.solid,
                            fullWidthButton: true,
                          ),
                          GFButton(
                            onPressed: () {},
                            text: "Sign In Facebook",
                            textStyle: TextStyle(fontSize: 16),
                            icon: Image(
                              image: AssetImage('assets/images/facebook.png'),
                            ),
                            type: GFButtonType.solid,
                            fullWidthButton: true,
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            splashColor: Colors.blue,
                            onTap: () {
                              Get.toNamed(RouteName.register);
                            },
                            child: Text('Belum Punya Akun.?',
                                style: TextStyle(color: Colors.blue)),
                          ),
                        ],
                      ),
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
