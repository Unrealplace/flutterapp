import 'package:flutter/material.dart';

class Demo14 extends StatefulWidget {
  String title;

  Demo14(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo14(title);
  }
}

class _Demo14 extends State<Demo14> {
  String title;

  _Demo14(this.title);


  TextEditingController usernameController = TextEditingController();

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
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '请输入你的名字',
//                labelText: '用户名',
                prefixIcon: Icon(Icons.people),
              ),
            ),
            RaisedButton(
              child: Text('login'),
              onPressed: (){
                if(usernameController.text.length == 0){
                  print('请输入合适的长度');
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
