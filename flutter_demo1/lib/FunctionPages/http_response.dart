import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class Demo27 extends StatefulWidget {
  String title;

  Demo27(this.title);

  @override
  State<StatefulWidget> createState() {

    return _Demo27(title);
  }
}

class _Demo27 extends State<Demo27> {
  String title;

  _Demo27(this.title);

  void getBaiduData() async {
    try {
      var url = "http://t.weather.sojson.com/api/weather/city/101030100";
      http.get(url).then((response){
        print(response.statusCode);
        print(response.body);
      });

    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                 getBaiduData();
                },
                child: Text('http 发起请求演示'),
              )
            ],
        )
      ),
    );
  }

}

