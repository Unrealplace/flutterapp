import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Demo16 extends StatefulWidget {
  String title;

  Demo16(this.title);

  @override
  State<StatefulWidget> createState() {
    return _Demo16(title);
  }
}

class _Demo16 extends State<Demo16> {
  String title;

  _Demo16(this.title);

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

      body: Builder(builder: (BuildContext contxt){
        return RaisedButton(
          child: Text('点我啊'),
          onPressed: (){
            var snackbar = SnackBar(
              content: Text('显示一个信息'),
              backgroundColor: Colors.black26,
              duration: Duration(
                milliseconds: 1500,
              ),
            );
            Scaffold.of(contxt).showSnackBar(snackbar);
          },
        );
      }),

      drawer: Drawer(
        child: Container(
          width: 150.0,
          color: Colors.orange,
          child: Text('我是一个侧边栏'),
        ),
      ),
    );
  }
}
