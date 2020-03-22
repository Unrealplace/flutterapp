import 'package:flutter/material.dart';

class Demo4 extends StatefulWidget {
  String title;

  Demo4(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo4(title);
  }
}

class _Demo4 extends State<Demo4> {
  String title;

  _Demo4(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),
      body: Builder(builder: (BuildContext context){
        return Center(
          child: RaisedButton(
            onPressed: (){
              final snackbar = SnackBar(
                content: Text('this is a snackbar'),
                backgroundColor: Colors.green,
                duration: Duration(minutes:1),
              );

              Scaffold.of(context).showSnackBar(snackbar);
            },
            child: Text('显示snackbar'),
          ),
        );
      }),
    );
  }
}
