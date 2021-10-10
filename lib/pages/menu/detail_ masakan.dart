import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail Makanan"),
        ),
        body: ListView(
          children: [
            Container(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Bahan'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Bahan'),
                      Text('Bahan'),
                      Text('Bahan'),
                      Text('Bahan'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Pcs'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('1 Kg'),
                      Text('2 Buah'),
                      Text('3 Buah'),
                      Text('4 Pcs'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
