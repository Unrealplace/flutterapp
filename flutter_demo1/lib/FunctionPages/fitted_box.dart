import 'package:flutter/material.dart';

class Demo8 extends StatefulWidget {
  String title;

  Demo8(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo8(title);
  }
}

class _Demo8 extends State<Demo8> {
  String title;

  _Demo8(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.grey,
              width: 100.0,
              height: 100.0,
              child: FittedBox(
                fit: BoxFit.cover,
                alignment: Alignment.center,
                child: Image.asset("assets/images/icon_image2.png"),
              ),
            ),
            Container(
              color: Colors.grey,
              width: 100.0,
              height: 100.0,
              child: FittedBox(
                fit: BoxFit.fill,
                alignment: Alignment.center,
                child: Image.asset("assets/images/icon_image2.png"),
              ),
            ),
            Container(
              color: Colors.grey,
              width: 100.0,
              height: 100.0,
              child: FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.center,
                child: Image.asset("assets/images/icon_image2.png"),
              ),
            ),
            Container(
              color: Colors.grey,
              width: 100.0,
              height: 100.0,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
                child: Image.asset("assets/images/icon_image2.png"),
              ),
            ),
            Container(
              color: Colors.grey,
              width: 100.0,
              height: 100.0,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
                child: Image.asset("assets/images/icon_image2.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
