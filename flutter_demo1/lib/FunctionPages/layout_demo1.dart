import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Demo24 extends StatefulWidget {
  String title;

  Demo24(this.title);

  @override
  State<StatefulWidget> createState() {

    return _Demo24(title);
  }
}

class _Demo24 extends State<Demo24> {
  String title;

  _Demo24(this.title);

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      children: <Widget>[
        // 去除其他组件后会被全部填满
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  '我们都是一样的美女啊',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              Text(
                '我是这个美女的描述信息喔',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black12,
                ),
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('100'),
      ],
    ),
  );


  Widget getButtonSection(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call,'CALL'),
          buildButtonColumn(Icons.near_me,'ROUTE'),
          buildButtonColumn(Icons.share,'SHARE'),
        ],
      ),
    );
  }


  Column buildButtonColumn(IconData icon,String label) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,color: Colors.blue,),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }

  Widget titleDescSection = Container(
    padding: const EdgeInsets.all(20.0),
    child: Text(
      '''
      今天，广州疫情防控新闻通气会通报：3月23日，广州排查出1例境外输入病例，后又排查出3名境外输入病例。其中一人称，曾在一美食店叫外卖。流调人员核查时，该店称“不设堂食，只供外卖”。此后，又一确诊病例称和朋友曾在该店内用餐。流调人员察觉店主可能有所隐瞒，立即再次赴现场调查。经排查，美食店店主、员工及家人、店主一名朋友全部感染。
      ''',
      softWrap: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'assets/images/icon_image1.png',
            height: 240.0,
            fit: BoxFit.cover,
          ),

          titleSection,
          getButtonSection(),
          titleDescSection,
        ],
      )
    );
  }
}

