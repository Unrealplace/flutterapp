import 'package:flutter/material.dart';

class Demo10 extends StatefulWidget {
  String title;

  Demo10(this.title);

  @override
  State<StatefulWidget> createState() {

    return _Demo10(title);
  }
}

class _Demo10 extends State<Demo10> {
  String title;

  _Demo10(this.title);

  int isSelectCheckBox = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),
     body: Center(
       child: Column(
         children: <Widget>[
           CardView(),
           Checkbox(
             value: this.isSelectCheckBox == 0 ? true : false ,
             onChanged: (bool state){
               setState(() {
                 this.isSelectCheckBox = 0;
               });
             },
           ),
           Checkbox(
             value: this.isSelectCheckBox == 0 ? false : true ,
             onChanged: (bool state){
               setState(() {
                 this.isSelectCheckBox = 1;
               });
             },
           )
         ],
       ),
     ),
    );
  }
}

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10.0,
        margin: EdgeInsets.only(left: 20.0,right: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('我是一个唱片',style: TextStyle(fontSize: 30.0),),
              subtitle: Text('这个是藏片的简单的解释哦'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('买一个'),
                  onPressed: (){},
                ),
                FlatButton(
                  child: const Text('取消'),
                  onPressed: (){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
