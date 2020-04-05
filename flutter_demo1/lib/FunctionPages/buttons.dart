import 'package:flutter/material.dart';

class Demo9 extends StatefulWidget {
  String title;

  Demo9(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo9(title);
  }
}

class _Demo9 extends State<Demo9> {
  String title;

  _Demo9(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            DrapDownButtonDemo(),
            FlatButtonDemo(),
            FlatButton.icon(onPressed: (){},icon: Icon(Icons.add,size: 28.0,), label: Text('我是一个按钮',style: TextStyle(fontSize: 28.0),))
            ,
            FloatingActionButton.extended(onPressed: (){}, label: Text('i am a button'),icon: Icon(Icons.add),),
            FloatingActionButton(
              onPressed: (){},
              heroTag: 'second',
              child: Icon(Icons.print),
              backgroundColor: Colors.orange,
              foregroundColor: Colors.red,
              shape: Border.all(
                width: 2.0,
                color: Colors.white,
                style: BorderStyle.solid,
              ),
            ),
            FloatingActionButton(
              onPressed: (){},
              heroTag: 'first',
              child: Icon(Icons.print),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2.0,
                  color: Colors.white,
                  style: BorderStyle.solid
                ),
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.white70,
              child: IconButton(
                icon: Icon(Icons.directions),
                iconSize: 80.0,
                alignment: AlignmentDirectional.center,
                color: Colors.red,
                splashColor: Colors.orange,
                padding: EdgeInsets.all(10.0),
                tooltip: '我是一个iconbutton',
                onPressed: (){

                },
              ),
            ),
            OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.directions), label: Text('我是自带边框的按钮')),
            OutlineButton(
              child: Text('我是outlineButton'),
              onPressed: (){},
              borderSide: BorderSide(color: Colors.red,width: 5.0,style: BorderStyle.solid),
              color: Colors.blue,
              padding: EdgeInsets.only(left: 10.0,top: 10.0,right: 10.0,bottom: 5.0),
            ),
            RawMaterialButton(
              onPressed: (){},
              child: Text('我是RawmaterialButton'),
              textStyle: TextStyle(fontSize: 25.0,color: Colors.red),
              padding: EdgeInsets.all(8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
                side: BorderSide(color: Colors.purple,width: 2.0,style: BorderStyle.solid),
              ),

            )
          ],
        ),
      ),
    );
  }
}

class DrapDownButtonDemo extends StatelessWidget {
  List<DropdownMenuItem> generateItemList() {
    final List<DropdownMenuItem> list = List();
    DropdownMenuItem item1 = DropdownMenuItem(
      child: Text('武汉'),
      value: '武汉',
    );
    DropdownMenuItem item2 = DropdownMenuItem(
      child: Text('北京'),
      value: '北京',
    );
    DropdownMenuItem item3 = DropdownMenuItem(
      child: Text('天津'),
      value: '天津',
    );
    DropdownMenuItem item4 = DropdownMenuItem(
      child: Text('日本'),
      value: '日本',
    );
    list.add(item1);
    list.add(item2);
    list.add(item3);
    list.add(item4);

    return list;
  }

  var selectItemValue = '天津';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DropdownButton(
      hint: Text('请选择一个城市'),
      items: generateItemList(),
      value: selectItemValue,
      isExpanded: true,
      style: TextStyle(
        color: Colors.red,
      ),
      onChanged: (T) {},
    );
  }
}

class FlatButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
      child: Text(
        'FlatButton 按钮测试',
        style: TextStyle(fontSize: 26.0),
      ),
      color: Colors.green,
      colorBrightness: Brightness.dark,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.grey,
      textColor: Colors.white,
      splashColor: Colors.orange,
      textTheme: ButtonTextTheme.normal,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.all(10.0),
      onPressed: () {
        print('hello world');
      },
    );
  }
}
