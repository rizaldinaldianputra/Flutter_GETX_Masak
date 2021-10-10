import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:masakan/routing/name_routing.dart';

class Login extends StatelessWidget {
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                              labelText: 'Username',
                            ),
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: Icon(Icons.vpn_key),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          SizedBox(height: 20),
                          GFButton(
                            color: Colors.black,
                            onPressed: () {
                              Get.toNamed(RouteName.intro1);
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
                            child: Text('Dont you have account ?',
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
