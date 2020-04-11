import 'package:flutter/material.dart';

class Demo19 extends StatefulWidget {
  String title;

  Demo19(this.title);

  @override
  State<StatefulWidget> createState() {
    return _Demo19(title);
  }
}

class _Demo19 extends State<Demo19> {
  String title;

  _Demo19(this.title);

  double _paddingvalue = 10.0;

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
            Container(
              width: 300.0,
              height: 300.0,
              color: Colors.red,
              child: AnimatedPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: _paddingvalue,
                    vertical: _paddingvalue,
                  ),
                  duration: Duration(milliseconds: 100),
                curve: Curves.easeInOut,
                child: Container(
                  height: 200.0,
                  color: Colors.green,
                ),
              ),
            ),
            RaisedButton(
              child: Text('点我试试看'),
              onPressed: (){
                setState(() {
                  if(_paddingvalue > 100) {
                    _paddingvalue-=15;

                  } else {
                    _paddingvalue+=15;
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
