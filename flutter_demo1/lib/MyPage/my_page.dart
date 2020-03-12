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
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            MyCloumn(),
            MyRow(),
          ],
        ),
      ),
    );
  }
}

class MyCloumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MyImageButton(),
          MyImageButton(),
          MyImageButton(),
          MyImageButton(),
        ],
      );
  }
}

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        MyImageButton(),
        MyImageButton(),
        MyImageButton(),
        MyImageButton(),
      ],
    );
  }
}

class MyImageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset("assets/images/test.png",width: 50,height: 50,color: Colors.orange,),
        Text('我是图片'),
      ],
    );
  }
}