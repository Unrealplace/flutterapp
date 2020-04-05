import 'package:flutter/material.dart';

class Demo11 extends StatefulWidget {
  String title;

  Demo11(this.title);

  @override
  State<StatefulWidget> createState() {

    return _Demo11(title);
  }
}

class _Demo11 extends State<Demo11> {
  String title;

  _Demo11(this.title);

  List _tags = ["李阳","宋冬恋","张三案","王二麻子","小瘪三"];
  List _selectTag = [];

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
           Wrap(
             spacing: 8.0,
             children: _tags.map((tag){
               return ActionChip(
                 label: Text(tag),
                 onPressed: (){

                 },
               );
             }).toList(),
           ),
           Divider(),
           Wrap(
             spacing: 8.0,
             children: _tags.map((tag){
               return Chip(
                 label: Text(tag),
                 avatar: Image.asset('assets/images/icon_image1.png'),
                 onDeleted: (){
                   setState(() {
                     _tags.remove(tag);
                   });
                 },
               );
             }).toList(),
           ),
           Divider(),
           Wrap(
             spacing: 8.0,
             children: _tags.map((tag){
               return FilterChip(
                 label: Text(tag),
                 onSelected: (bool value){
                   setState(() {
                     if(_selectTag.contains(tag)) {
                       _selectTag.remove(tag);
                     } else {
                       _selectTag.add(tag);
                     }
                   });
                 },
                 selected: _selectTag.contains(tag),
               );
             }).toList(),
           ),
           Divider(),
           Wrap(
             spacing: 8.0,
             children: _tags.map((tag){
               return ChoiceChip(
                 label: Text(tag),
                 labelStyle: TextStyle(color: Colors.white),
                 onSelected: (bool value){
                   setState(() {
                     if(_selectTag.contains(tag)) {
                       _selectTag.remove(tag);
                     } else {
                       _selectTag.add(tag);
                     }
                   });
                 },
                 selected: _selectTag.contains(tag),
                 selectedColor: Colors.red,
                 selectedShadowColor: Colors.black38,
               );
             }).toList(),
           )
         ],
       ),
     ),
    );
  }
}

