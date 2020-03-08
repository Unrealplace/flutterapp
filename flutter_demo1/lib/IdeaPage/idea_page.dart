import 'package:flutter/material.dart';

class IdeaPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _IdeaPageState();
}
class _IdeaPageState extends State<IdeaPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('想法'),
          actions: <Widget>[
            new Container()
          ],
        ),
        body: new Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.amber,
              ),
              Container(
                width: 160.0,
                color: Colors.red,
                child: Column(
                  children: <Widget>[
                    Text('hello world'),
                    Text('nice  hello world'),
                  ],
                ),
              ),
              Container(
                width: 160.0,
                color: Colors.amber,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
              Container(
                width: 160.0,
                color: Colors.amber,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
            ],
          ),

        ),
      ),
    );
  }
}