import 'package:flutter/material.dart';

class Demo3 extends StatefulWidget {
  String title;

  Demo3(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo3(title);
  }
}

class _Demo3 extends State<Demo3> {
  String title;

  _Demo3(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//        appBar: AppBar(
//          title: Text(title),
//        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBOxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    '可折叠的组件',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0
                    ),
                  ),
                  background: Image.network('https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3453980867,1439841269&fm=26&gp=0.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: Center(
            child: Text('向上提拉看效果'),
          ),
        ));
  }
}
