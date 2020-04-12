import 'package:flutter/material.dart';

class Demo22 extends StatefulWidget {
  String title;

  Demo22(this.title);

  @override
  State<StatefulWidget> createState() {

    return _Demo22(title);
  }
}

class _Demo22 extends State<Demo22> {
  String title;

  _Demo22(this.title);

  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(title),
          centerTitle: true,
        ),

        body: Center(
          child: Container(
            child: Table(
              columnWidths: const {
                0:FixedColumnWidth(100.0),
                1:FixedColumnWidth(200.0),
                2:FixedColumnWidth(50.0),
              },
              children: const [
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  children: [
                    SizedBox(
                      height: 55.0,
                      child:Text('姓名'),
                    ),
                    Text('年级'),
                    Text('性别'),
                  ]
                ),
                TableRow(
                    children: [
                      Text('姓名'),
                      Text('年级'),
                      Text('性别'),
                    ]
                )
                ,TableRow(
                    children: [
                      Text('姓名'),
                      Text('年级'),
                      Text('性别'),
                    ]
                )
              ],
            ),
          ),
        ),
    );
  }
}

