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
    // TODO: implement build
    return Padding(
        padding:const EdgeInsets.all(10),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
            itemBuilder:(context , index) {
          return Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3444508248,1197396609&fm=26&gp=0.jpg",
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.colorBurn,
            color: Colors.white,
          );
            } ),
    );
  }
}