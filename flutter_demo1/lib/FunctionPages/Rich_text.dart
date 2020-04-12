import 'package:flutter/material.dart';

class Demo23 extends StatefulWidget {
  String title;

  Demo23(this.title);

  @override
  State<StatefulWidget> createState() {

    return _Demo23(title);
  }
}

class _Demo23 extends State<Demo23> {
  String title;

  _Demo23(this.title);

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
        child: Column(
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: 'i want to study flutter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                children: [
                  TextSpan(
                    text: 'do you want to start?',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30.0,
                      fontWeight: FontWeight.normal,
                    )
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

