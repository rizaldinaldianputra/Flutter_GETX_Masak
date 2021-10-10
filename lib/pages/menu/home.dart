import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:masakan/controller/controllers_home.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ch = Get.find<ControllerHome>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(fontSize: 12),
        ),
      ),
      body: ListView(
        children: [
          GFCarousel(
            items: ch.imageList.map(
              (url) {
                return Container(
                  margin: EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Image.network(url, fit: BoxFit.cover, width: 1000.0),
                  ),
                );
              },
            ).toList(),
          ),
          GFItemsCarousel(
            rowCount: 3,
            children: ch.imageList.map(
              (url) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Image.network(url, fit: BoxFit.cover, width: 1000.0),
                  ),
                );
              },
            ).toList(),
          ),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            crossAxisCount: 2,
            children: <Widget>[
              GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.asset(
                  'assets/images/icon.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: AssetImage('your asset image'),
                  ),
                  titleText: 'Game Controllers',
                  subTitleText: 'PlayStation 4',
                ),
                content: Text("Some quick example text to build on the card"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFAvatar(
                      backgroundColor: GFColors.PRIMARY,
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.SECONDARY,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.SUCCESS,
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.asset(
                  'assets/images/icon.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: AssetImage('your asset image'),
                  ),
                  titleText: 'Game Controllers',
                  subTitleText: 'PlayStation 4',
                ),
                content: Text("Some quick example text to build on the card"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFAvatar(
                      backgroundColor: GFColors.PRIMARY,
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.SECONDARY,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.SUCCESS,
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.asset(
                  'assets/images/icon.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: AssetImage('your asset image'),
                  ),
                  titleText: 'Game Controllers',
                  subTitleText: 'PlayStation 4',
                ),
                content: Text("Some quick example text to build on the card"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFAvatar(
                      backgroundColor: GFColors.PRIMARY,
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.SECONDARY,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.SUCCESS,
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.asset(
                  'assets/images/icon.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: AssetImage('your asset image'),
                  ),
                  titleText: 'Game Controllers',
                  subTitleText: 'PlayStation 4',
                ),
                content: Text("Some quick example text to build on the card"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFAvatar(
                      backgroundColor: GFColors.PRIMARY,
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.SECONDARY,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.SUCCESS,
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
