import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Makanan"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => GFStickyHeader(
                stickyContent: Container(
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFF42335d),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          'Contact Group $index',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                content: Container(
                  height: 300,
                  child: ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              GFCheckboxListTile(
                                titleText: 'Eva Mendez',
                                subTitleText: 'Hello',
                                avatar: GFAvatar(
                                  backgroundImage:
                                      AssetImage('asset image here'),
                                ),
                                size: 25,
                                activeBgColor: Colors.green,
                                activeIcon: Icon(
                                  Icons.check,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                type: GFCheckboxType.circle,
                                value: true,
                                onChanged: (bool value) {},
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Divider(),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              )),
    );
  }
}
