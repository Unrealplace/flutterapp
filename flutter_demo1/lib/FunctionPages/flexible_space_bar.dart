import 'package:flutter/material.dart';

class Demo3 extends StatefulWidget {
  String title;

  Demo3(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo3(title);
  }
}

class _Demo3 extends State<Demo3> {
  String title;

  _Demo3(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: null,
    );
  }
}
