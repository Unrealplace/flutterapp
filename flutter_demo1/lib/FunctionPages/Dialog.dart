import 'package:flutter/material.dart';

class Demo12 extends StatefulWidget {
  String title;

  Demo12(this.title);

  @override
  State<StatefulWidget> createState() {
    return _Demo12(title);
  }
}

class _Demo12 extends State<Demo12> {
  String title;

  _Demo12(this.title);

  void showAboutDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AboutDialog(
              applicationName: 'IOS app',
              applicationVersion: 'V1.0.1',
            ));
  }

  void showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: Text('我是一个简单的对画框'),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {},
                  child: Text('确定'),
                ),
                SimpleDialogOption(
                  onPressed: () {},
                  child: Text('确定2'),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('确定3'),
                )
              ],
            ));
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('我是标题'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('hello world'),
                    Text('hello world'),
                    Text('hello world'),
                    Text('hello world'),
                    Text('hello world'),
                    Text('hello world'),
                    Text('hello world'),
                    Text('hello world'),
                    Text('hello world'),
                    Text('hello world'),
                  ],
                ),
              ),
              actions: <Widget>[
                RaisedButton(
                  child: Text('取消'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                RaisedButton(
                  child: Text('确定'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('点击打开about Dialog'),
              onPressed: () {
                showAboutDialog(context);
              },
            ),
            RaisedButton(
              child: Text('点击打开simple Dialog'),
              onPressed: () {
                showSimpleDialog(context);
              },
            ),
            RaisedButton(
              child: Text('点击打开alert Dialog'),
              onPressed: () {
                showAlertDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
