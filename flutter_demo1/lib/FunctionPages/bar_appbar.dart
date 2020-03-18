import 'package:flutter/material.dart';

class Demo2 extends StatefulWidget {
  String title;

  Demo2(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo2(title);
  }
}

class _Demo2 extends State<Demo2> {
  String title;

  _Demo2(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(title),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.access_alarms),
              tooltip: '闹钟',
              onPressed: (){
                print('hello world');
              },
            ),
          ],
        ),
        body: null,
    );
  }
}
