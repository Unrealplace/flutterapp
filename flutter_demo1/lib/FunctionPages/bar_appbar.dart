import 'package:flutter/material.dart';

class Demo2 extends StatefulWidget {
  String title;

  Demo2(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo2(title);
  }
}

class _Demo2 extends State<Demo2> {
  String title;

  _Demo2(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: myBottomAppBar(),
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(title),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.access_alarms),
              tooltip: '闹钟',
              onPressed: (){
                print('hello world');
              },
            ),
            IconButton(
              icon: Icon(Icons.add),
              tooltip: '闹钟',
              onPressed: (){
                print('hello world');
              },
            ),
            IconButton(
              icon: Icon(Icons.directions_bike),
              tooltip: '闹钟',
              onPressed: (){
                print('hello world');
              },
            ),
            IconButton(
              icon: Icon(Icons.add),
              tooltip: '闹钟',
              onPressed: (){
                print('hello world');
              },
            )
          ],
        ),
        body: myButtonBar(),
    );
  }
}

class myButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ButtonBar(
      alignment: MainAxisAlignment.spaceAround,

      children: <Widget>[
        RaisedButton(
          child: Text('button1'),
          color: Colors.orange,
          textColor: Colors.red,
          onPressed: (){

          },
        ),

        RaisedButton(
          child: Text('button1'),
          color: Colors.orange,
          textColor: Colors.red,
          onPressed: (){

          },
        ),

        RaisedButton(
          child: Text('button1'),
          color: Colors.orange,
          textColor: Colors.red,
          onPressed: (){

          },
        ),
      ],
    );
  }
}

class myBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return BottomAppBar(
       color: Colors.red,
       child: Row(
         mainAxisSize: MainAxisSize.max,
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
           IconButton(
             icon: Icon(Icons.menu),
             onPressed: (){

             },
           ),
           IconButton(
             icon: Icon(Icons.directions_bike),
             onPressed: (){

             },
           ),
           IconButton(
             icon: Icon(Icons.compare),
             onPressed: (){

             },
           ),
           IconButton(
             icon: Icon(Icons.compare),
             onPressed: (){

             },
           )
         ],
       ),
     );
  }
}
