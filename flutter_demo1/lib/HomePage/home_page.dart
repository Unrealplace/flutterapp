import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.yellow,
          title: new Text('首页'),
          actions: <Widget>[
            new Container()
          ],
        ),
        body: new Center(
          child: MyListView(
            items: new List<String>.generate(1000, (i)  => "item $i"),
          ),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  final List<String> items;

  MyListView({Key key,this.items});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (BuildContext context,int index) {
        return Container(
          height: 50,
          child: Center(
            child: Text('Entry ${items[index]}'),
          ),
        );
      },
      separatorBuilder: (BuildContext context,int index) => const Divider(),
    );
  }
}