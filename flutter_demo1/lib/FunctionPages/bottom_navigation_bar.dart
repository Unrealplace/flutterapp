import 'package:flutter/material.dart';

class Demo6 extends StatefulWidget {
  String title;

  Demo6(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo6(title);
  }
}

class _Demo6 extends State<Demo6> {
  String title;

  _Demo6(this.title);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(title),
          centerTitle: true,

        ),
        body:null
    );
  }
}
