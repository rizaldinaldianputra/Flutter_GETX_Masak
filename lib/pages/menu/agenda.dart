import 'package:flutter/material.dart';

class Agenda extends StatelessWidget {
  const Agenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Agenda'),
        ),
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.blue,
            ),
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, int) {
                  return ListTile(
                    leading: Icon(Icons.food_bank_sharp),
                    title: Text('Rendang'),
                    subtitle: Text('Makanan Pariaman'),
                    trailing: Icon(Icons.add),
                  );
                })
          ],
        ),
      ),
    );
  }
}
