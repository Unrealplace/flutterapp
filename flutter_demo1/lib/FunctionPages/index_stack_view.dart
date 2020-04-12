import 'package:flutter/material.dart';

class Demo20 extends StatefulWidget {
  String title;

  Demo20(this.title);

  @override
  State<StatefulWidget> createState() {

    return _Demo20(title);
  }
}

class _Demo20 extends State<Demo20> {
  String title;

  _Demo20(this.title);

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),

      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 50.0,
          ),
          Container(
            child: Text('hello world'),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

