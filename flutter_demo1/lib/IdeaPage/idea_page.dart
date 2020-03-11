import 'package:flutter/material.dart';

class IdeaPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _IdeaPageState();
}

class Choice {
  final String title;
  final IconData  icon;
  const Choice({this.title,this.icon});
}

const List<Choice> choices = <Choice>[
  Choice(title: '自驾',icon: Icons.directions_bike),
  Choice(title: '汽车',icon: Icons.directions_car),
  Choice(title: '轮船',icon: Icons.directions_boat),
  Choice(title: '轮船',icon: Icons.directions_bike),
  Choice(title: '轮船',icon: Icons.directions_bus),
  Choice(title: '轮船',icon: Icons.directions_transit),

];


class _IdeaPageState extends State<IdeaPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: new AppBar(
            title: new Text('想法'),
            bottom: TabBar(
              tabs: choices.map((Choice choice){
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
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
      ),
    );
  }
}