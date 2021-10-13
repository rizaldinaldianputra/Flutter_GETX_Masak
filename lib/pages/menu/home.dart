import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import 'package:masakan/controller/controllers_home.dart';

import 'agenda.dart';
import 'detailmasakan.dart';
import 'masakan.dart';

class Home extends GetView<ControllerHome> {
  final c = Get.find<ControllerHome>();

  final List<Widget> bodyContent = [
    Dashboard(),
    Detail(),
    CariMakan(),
    Agenda()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(
              currentAccountPicture: GFAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('user name'),
                  Text('user@userid.com'),
                ],
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => CurvedNavigationBar(
          index: c.selectedindex,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.orange,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) => c.selectedindex = index,
        ),
      ),
      body: Obx(
        () => SafeArea(
          child: bodyContent.elementAt(c.selectedindex),
        ),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final c = Get.find<ControllerHome>();

    return SafeArea(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"))),
            height: Get.height * 0.3,
            child: Stack(
              children: [
                Positioned(
                  top: 100,
                  left: 50,
                  child: Container(
                    height: Get.height * 0.2,
                    child: GFCarousel(
                      autoPlay: true,
                      items: c.imageList.map(
                        (url) {
                          return Container(
                            margin: EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              child: Image.network(url,
                                  fit: BoxFit.cover,
                                  width: 1000.0,
                                  semanticLabel: 'Andromax'),
                            ),
                          );
                        },
                      ).toList(),
                      onPageChanged: (index) {
                        c.onInit();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text(
                'Recommend Today',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height * 0.9),
                  crossAxisCount: 2,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Expanded(
                    child: GFCard(
                      color: Colors.orange[100],
                      boxFit: BoxFit.cover,
                      titlePosition: GFPosition.start,
                      image: Image.asset(
                        'assets/images/icon.png',
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                      showImage: true,
                      content:
                          Text("Some quick example text to build on the card"),
                      buttonBar: GFButtonBar(
                        padding: EdgeInsets.all(5),
                        children: <Widget>[
                          GFAvatar(
                            backgroundColor: GFColors.PRIMARY,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          GFAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
