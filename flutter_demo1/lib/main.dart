import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_demo1/index/index.dart';
import 'package:flutter_demo1/FunctionPages/center_padding_align.dart';
import 'package:flutter_demo1/FunctionPages/bar_appbar.dart';
import 'package:flutter_demo1/FunctionPages/flexible_space_bar.dart';
import 'package:flutter_demo1/FunctionPages/snack_bar.dart';
import 'package:flutter_demo1/FunctionPages/tabbar.dart';
import 'package:flutter_demo1/FunctionPages/bottom_navigation_bar.dart';
import 'package:flutter_demo1/FunctionPages/constrainedbox.dart';
import 'package:flutter_demo1/FunctionPages/fitted_box.dart';
import 'package:flutter_demo1/FunctionPages/buttons.dart';
import 'package:flutter_demo1/FunctionPages/card_view.dart';
import 'package:flutter_demo1/FunctionPages/Chip.dart';
import 'package:flutter_demo1/FunctionPages/Dialog.dart';
import 'package:flutter_demo1/FunctionPages/expanded.dart';
import 'package:flutter_demo1/FunctionPages/Textfiled.dart';
import 'package:flutter_demo1/FunctionPages/dater_picker.dart';
import 'package:flutter_demo1/FunctionPages/Material_layout.dart';
import 'package:flutter_demo1/FunctionPages/page_view.dart';
import 'package:flutter_demo1/FunctionPages/slider_view.dart';
import 'package:flutter_demo1/FunctionPages/animated_padding.dart';
import 'package:flutter_demo1/FunctionPages/index_stack_view.dart';
import 'package:flutter_demo1/FunctionPages/switch_view.dart';
import 'package:flutter_demo1/FunctionPages/table_view.dart';
import 'package:flutter_demo1/FunctionPages/Rich_text.dart';
import 'package:flutter_demo1/FunctionPages/layout_demo1.dart';
import 'package:flutter_demo1/FunctionPages/layout_demo2.dart';
import 'package:flutter_demo1/FunctionPages/route_skip.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

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
      "Bar-FlexibleSpaceBar-可折叠的应用栏",
      "Bar-SnackBar-屏幕底部消息",
      "Bar-TabBar-选项卡",
      "BottomNavigationBar-底部导航按钮",
      "ConstrainedBox布局",
      "DropdownButton-下拉按钮,FlatButton-扁平按钮,FloatingActionButton,IconButton,OutLineButton,RawMaterialButton",
      "Card卡片组件的使用,CheckBox使用",
      "Chip标签组件使用",
      "Dialog对话框使用",
      "Expanded-填充组件，填充剩余所以空间",
      "TextField-文本输入框",
      "DaterPicker-日期选择器",
      "Material-布局组件",
      "Scroll-PageView-滑动页面",
      "Slider-滑块使用",
      "AnimatedPadding-动画间距",
      "IndexStack-索引堆叠组件",
      "Switch-开关组件",
      "table-表格组件",
      "RichText-富文本操作",
      "风景布局练习",
      "水果布局练习",
      "route-路由相关",
    ];
    List<String> routeNames = ["first_page", "second_page"];
    List<SkipModel> listModel = [];
    for (int i = 0; i < titles.length; i++) {
      SkipModel model = SkipModel(null, titles[i]);
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

      case "Bar-FlexibleSpaceBar-可折叠的应用栏":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo3(title)),
        );

        break;

      case "Bar-SnackBar-屏幕底部消息":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo4(title)),
        );

        break;

      case "Bar-TabBar-选项卡":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo5(title)),
        );

        break;

      case "BottomNavigationBar-底部导航按钮":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo6(title)),
        );

        break;

      case "ConstrainedBox布局":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo7(title)),
        );

        break;
      case "FittedBox填充布局":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo8(title)),
        );

        break;

      case "DropdownButton-下拉按钮,FlatButton-扁平按钮,FloatingActionButton,IconButton,OutLineButton,RawMaterialButton":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo9(title)),
        );

        break;
      case "Card卡片组件的使用,CheckBox使用":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo10(title)),
        );

        break;
      case "Chip标签组件使用":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo11(title)),
        );

        break;
      case "Dialog对话框使用":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo12(title)),
        );

        break;

      case "Expanded-填充组件，填充剩余所以空间":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo13(title)),
        );

        break;
      case "TextField-文本输入框":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo14(title)),
        );

        break;

      case "DaterPicker-日期选择器":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo15(title)),
        );

        break;

      case "Material-布局组件":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo16(title)),
        );

        break;

      case "Scroll-PageView-滑动页面":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo17(title)),
        );

        break;

      case "Slider-滑块使用":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo18(title)),
        );

        break;

      case "AnimatedPadding-动画间距":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo19(title)),
        );

        break;
      case "IndexStack-索引堆叠组件":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo20(title)),
        );

        break;
      case "Switch-开关组件":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo21(title)),
        );

        break;

      case "table-表格组件":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo22(title)),
        );

        break;
      case "RichText-富文本操作":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo23(title)),
        );

        break;

      case "风景布局练习":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo24(title)),
        );

        break;

      case "水果布局练习":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo25(title)),
        );

        break;

      case "route-路由相关":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Demo26(title)),
        );

        break;
    }
  }
}
