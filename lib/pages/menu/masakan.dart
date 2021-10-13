import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';

class CariMakan extends StatelessWidget {
  const CariMakan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Search Masakan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search',
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, int) {
                    return GFListTile(
                        avatar: GFAvatar(
                          shape: GFAvatarShape.square,
                          size: GFSize.LARGE,
                        ),
                        titleText: 'Title',
                        subTitleText:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing',
                        icon: Icon(Icons.favorite));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
