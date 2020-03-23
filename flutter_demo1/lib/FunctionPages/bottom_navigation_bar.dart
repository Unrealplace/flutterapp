import 'package:flutter/material.dart';
import 'package:flutter_demo1/HomePage/home_page.dart';
import 'package:flutter_demo1/IdeaPage/idea_page.dart';
import 'package:flutter_demo1/MyPage/my_page.dart';

class Demo6 extends StatefulWidget {
  String title;

  Demo6(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo6(title);
  }
}

class _Demo6 extends State<Demo6> {
  String title;
  int _selectedIndex = 0;
  List _pageList = [
    HomePage(),
    IdeaPage(),
    MyPage(),
  ];

  _Demo6(this.title);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(title),
          centerTitle: true,

        ),
        body:this._pageList[_selectedIndex],

        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('business'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('school'),
            )
          ],

          currentIndex: _selectedIndex,
          onTap: _onItemTapped ,
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
        ),
    );
  }
}
