import 'package:flutter/material.dart';

class MyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('我的'),
          actions: <Widget>[
            new Container()
          ],
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: Text('浪费你懂哦的农夫的女生哦发你懂我那佛的女生佛的女生佛那都是烦恼都是说你放松颠三倒四那个佛的女生跟 '),
            ),
            Expanded(
              child: Text('WWW浪费你懂哦的农夫的女生哦发你懂我那佛的女生佛的女生佛那都是烦恼都是说你放松颠三倒四那个佛的女生跟 '),
            ),
            Expanded(
              child: Text('fff浪费你懂哦的农夫的女生哦发你懂我那佛的女生佛的女生佛那都是烦恼都是说你放松颠三倒四那个佛的女生跟 '),
            ),
          ],
        ),
      ),
    );
  }
}
