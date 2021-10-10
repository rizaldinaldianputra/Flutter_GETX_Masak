import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CariMakan extends StatelessWidget {
  const CariMakan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Expanded(
            child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term'),
            ),
            ListView.builder(
              itemCount: 12,
              itemBuilder: (context, i) => Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Three-line ListTile'),
                  subtitle: Text(
                      'A sufficiently long subtitle warrants three lines.'),
                  trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
