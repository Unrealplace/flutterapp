import 'package:flutter/material.dart';
import 'package:flutter_demo1/index/index.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyMainPage(_getSkipList()),
    );
  }

  List _getSkipList() {
    List<String> titles = ["第一页面", "第二个页面"];
    List<String> routeNames = ["first_page", "second_page"];
    List<SkipModel> listModel = [];
    for (int i = 0; i < titles.length; i++) {
      SkipModel model = SkipModel(routeNames[i], titles[i]);
      listModel.add(model);
    }

    return listModel;
  }
}

class SkipModel {
  String routName;
  String title;

  SkipModel(this.routName, this.title);
}

class MyMainPage extends StatelessWidget {
  final List<SkipModel> dataSource;

  MyMainPage(this.dataSource);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('主页'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                _skipWithIndex(index);
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("${dataSource[index].title}"),
                    Divider(),
                  ],
                ),

              ),
            );
          },
          itemCount: dataSource.length,
        ),
      ),
    );
  }

  void _skipWithIndex(int index) {
    swit
  }
}
