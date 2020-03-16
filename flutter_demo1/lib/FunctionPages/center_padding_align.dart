import 'package:flutter/material.dart';
import 'SkipModel.dart';

class Demo1 extends StatefulWidget {
  String title;

  Demo1(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo1(title);
  }
}

class _Demo1 extends State<Demo1> {
  String title;

  _Demo1(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: null,
      ),
    );
  }
}

