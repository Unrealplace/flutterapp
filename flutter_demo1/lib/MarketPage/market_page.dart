import 'package:flutter/material.dart';
class MarketPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _MarketPageState();
}
class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('市场'),
            // 后面的省略
            // ......
          ),
          body: GridView.count(
              crossAxisCount: 2,
            children: <Widget>[
              Text('nice to meet you'),
              Text('come you are  good'),
              Text('hahaah hahaaha'),
              Text('beautiful girl'),
            ],
          ),
      ),
    );
  }

}