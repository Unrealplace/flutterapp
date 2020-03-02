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
          child: MyListView(),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  final List<String> entries = <String>['A','B','C'];
  final List<int> colorCodes = <int>[600,500,100];
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context,int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(
            child: Text('Entry ${entries[index]}'),
          ),
        );
      },
      separatorBuilder: (BuildContext context,int index) => const Divider(),
    );
  }
}