import 'package:flutter/material.dart';
import 'package:flutter_demo1/index/index.dart';
import 'package:flutter_demo1/FunctionPages/center_padding_align.dart';
import 'package:flutter_demo1/FunctionPages/bar_appbar.dart';

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
    List<String> titles = [
      "Center（居中布局），Padding（填充布局），Align（对齐布局)",
      "Bar-AppBar-应用栏",
    ];
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

  BuildContext get context => null;

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
                SkipModel model = dataSource[index];
                _skipWithIndex(index, model.title, context);
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

  void _skipWithIndex(int index, String title, BuildContext context) {
    switch (title) {
      case "Center（居中布局），Padding（填充布局），Align（对齐布局)":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo1(title)),
        );

        break;

      case "Bar-AppBar-应用栏":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo2(title)),
        );

        break;
    }
  }
}
