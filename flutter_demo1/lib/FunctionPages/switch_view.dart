import 'package:flutter/material.dart';

class Demo21 extends StatefulWidget {
  String title;

  Demo21(this.title);

  @override
  State<StatefulWidget> createState() {

    return _Demo21(title);
  }
}

class _Demo21 extends State<Demo21> {
  String title;

  _Demo21(this.title);

  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),

      body:Column(
        children: <Widget>[
          Switch(
            value: this.check,
            activeColor: Colors.red,
            inactiveThumbColor: Colors.green,
            activeTrackColor: Colors.orange,
            inactiveTrackColor: Colors.purple,
            onChanged: (bool value) {
              setState(() {
                this.check = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('我是标题'),
            subtitle: Text("我是字标题"),
            value: this.check,
            activeColor: Colors.red,
            inactiveThumbColor: Colors.green,
            activeTrackColor: Colors.orange,
            inactiveTrackColor: Colors.purple,
            onChanged: (bool value) {
              setState(() {
                this.check = value;
              });
            },
          )
        ],
      )
    );
  }
}

