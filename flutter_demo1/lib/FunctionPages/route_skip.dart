import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:fluro/fluro.dart';
import 'package:flutter_demo1/routers/application.dart';
import 'package:flutter_demo1/routers/router_handler.dart';
import 'package:flutter_demo1/routers/routers.dart';

class Demo26 extends StatefulWidget {
  String title;

  Demo26(this.title);

  @override
  State<StatefulWidget> createState() {

    return _Demo26(title);
  }
}

class _Demo26 extends State<Demo26> {
  String title;

  _Demo26(this.title);
  List<String> dataSource = [
    "1.导航基础跳转",
    "2.导航传递数据",
    "3.fluro路由配置",
  ];

  _navigateToNextPage(BuildContext context) async {
    final result = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ThirdScreen("liyang", 222)
    ));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text("$result")));
  }
  @override
  Widget build(BuildContext context) {

    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),

      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            String title = dataSource[index];

            return GestureDetector(
              onTap: () {
                switch(title) {
                  case '1.导航基础跳转': {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SecondScreen()
                    ));
                  }
                    break;

                  case '2.导航传递数据': {
                    _navigateToNextPage(context);
                  }
                  break;

                  case '3.fluro路由配置': {
                    
                  }
                  break;
                }
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title),
                    Divider(),
                  ],
                ),
              ),
            );
          },
          itemCount: dataSource.length,
        ),
      )
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar: AppBar(
         title: Text('导航实例'),
       ),
       body: Center(
         child: RaisedButton(
             onPressed:(){
               Navigator.pop(context);
             },
           child: Text('点我试一下'),
         ),
       ),
     );
  }
}

class ThirdScreen extends StatelessWidget {
  String name;
  int age;

  ThirdScreen(this.name, this.age);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.name),
      ),
      body: Center(
        child: RaisedButton(
          onPressed:(){
            Navigator.pop(context,'我是返回的数据喔');
          },
          child: Text('点我试一下'),
        ),
      ),
    );
  }
}

