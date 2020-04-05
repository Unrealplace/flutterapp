import 'package:flutter/material.dart';

class Demo13 extends StatefulWidget {
  String title;

  Demo13(this.title);

  @override
  State<StatefulWidget> createState() {
    return _Demo13(title);
  }
}

class _Demo13 extends State<Demo13> {
  String title;

  _Demo13(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            RaisedButton(
              child: Text('我是第一个按钮'),
              color: Colors.orange,
              highlightColor: Colors.orange,
              onPressed: (){},

            ),
            Expanded(
              flex: 1,
              child: RaisedButton(
                child: Text('第二个按钮'),
                color: Colors.purple,
                onPressed: (){},

              ),
            ),
            RaisedButton(
              child: Text('按钮'),
              color: Colors.red,
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
