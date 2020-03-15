import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('我的'),
          actions: <Widget>[new Container()],
        ),
        body: MyButton(),
      ),
    );
  }
}

class MyContain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 10.0, color: Colors.red, style: BorderStyle.solid),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(10.0)),
              ),
              margin: const EdgeInsets.all(5.0),
              child: Image.asset('assets/images/test.png'),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 10.0, color: Colors.red, style: BorderStyle.solid),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(10.0)),
              ),
              margin: const EdgeInsets.all(5.0),
              child: Image.asset('assets/images/test.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCloumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        MyImageButton(),
        MyImageButton(),
        MyImageButton(),
        MyImageButton(),
      ],
    );
  }
}

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        MyImageButton(),
        MyImageButton(),
        MyImageButton(),
        MyImageButton(),
      ],
    );
  }
}

class MyImageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "assets/images/test.png",
          width: 50,
          height: 50,
          color: Colors.orange,
        ),
        Text('我是图片'),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text('button click'),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text('我是按钮'),
      ),
    );
  }
}

class MyStackPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Image.network(
            'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1584103945&di=046f53d889f24bed0594a9a15076ffde&src=http://00.minipic.eastday.com/20170407/20170407134345_e9e812c82a71e0d17561e9e0f9158c5f_4.jpeg'),
        Positioned(
          child: Text(
            'nice to meet you',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.red,
            ),
          ),
          left: 100.0,
          top: 20.0,
          height: 20.0,
        ),
      ],
    );
  }
}

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: const FractionalOffset(0.5, 0.5),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1584103945&di=046f53d889f24bed0594a9a15076ffde&src=http://00.minipic.eastday.com/20170407/20170407134345_e9e812c82a71e0d17561e9e0f9158c5f_4.jpeg'),
          radius: 80.0,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.black38),
          padding: const EdgeInsets.all(3),
          child: Text(
            'nice to you',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 300,
      child: Card(),
    );
  }
}
