import 'package:flutter/material.dart';

class Demo17 extends StatefulWidget {
  String title;

  Demo17(this.title);

  @override
  State<StatefulWidget> createState() {
    return _Demo17(title);
  }
}

class _Demo17 extends State<Demo17> {
  String title;

  _Demo17(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
        elevation: 10.0,
        bottom: PreferredSize(
            child: Container(
              child: Text('hello world nice to meet you'),
              height: 50.0,
              decoration: BoxDecoration(color: Colors.blue),
            ),
            preferredSize: Size.fromHeight(50.0)
        ),
      ),

      body: Container(
        height: 400.0,
        child: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Text('first page'),
            ),
            Container(
              color: Colors.blue,
              child: Text('second page'),
            ),
            Container(
              color: Colors.green,
              child: Text('third page'),
            ),
          ],
        ),
      ),

    );
  }
}
