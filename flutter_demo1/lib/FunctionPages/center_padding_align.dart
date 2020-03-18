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
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: myContainer
    );
  }

  Container myContainer = Container(
    constraints: BoxConstraints(maxHeight: 200.0,maxWidth: 200.0),
    width: 300.0,
    height: 150.0,
    color: Colors.purple,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: Colors.lightBlue,
        child: Align(
          alignment: Alignment.bottomRight,
          widthFactor: 2.0,
          heightFactor: 2.0,
          child: Container(
            width: 60.0,
            height: 20.0,
            color: Colors.orange,
            child: Text('hello world'),
          ),
        ),
      ),
    ),
  );

}
