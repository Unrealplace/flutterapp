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
          body: GridViewBuilderDemo(),
      ),
    );
  }

}

class GridViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Container> _buildGridList(int count) {
      return List<Container>.generate(count, (int index) => Container(
        child: Image.asset('assets/images/test.png'),
      )).toList();
    }

    // TODO: implement build
    return Padding(
        padding:const EdgeInsets.all(10),
        child: GridView.extent(
          maxCrossAxisExtent: 150.0,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: _buildGridList(10),
        ),
    );
  }
}