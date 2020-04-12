import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Demo25 extends StatefulWidget {
  String title;

  Demo25(this.title);

  @override
  State<StatefulWidget> createState() {
    return _Demo25(title);
  }
}

class _Demo25 extends State<Demo25> {
  String title;
  _Demo25(this.title);

  var leftColumn = Container(
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          child: Text(
            '我是水果标题',
            style: TextStyle(
              fontSize: 30.0,
              letterSpacing: 0.6,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Text(
          '这是一个关于水果的描述的字标题哦，欢迎大家来品尝我家的水果啊。',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Georgia',
            fontSize: 25.0,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ],
              ),
              Text(
                '188 元一斤',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              )
            ],
          ),
        ),
        DefaultTextStyle.merge(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.kitchen,
                      color: Colors.red,
                    ),
                    Text('PREP'),
                    Text('25 min'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.people,
                      color: Colors.red,
                    ),
                    Text('Nice'),
                    Text('25 min'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                    Text('PREP'),
                    Text('25 min'),
                  ],
                ),
              ],
            ),
          ),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 18.0,
            height: 2.0,
          ),
        ),
      ],
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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 300,
                child: leftColumn,
              ),
              Expanded(
                child:Image.asset(
                  'assets/images/icon_image1.png',
                  fit: BoxFit.fill,
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
