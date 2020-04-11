import 'package:flutter/material.dart';

class Demo18 extends StatefulWidget {
  String title;

  Demo18(this.title);

  @override
  State<StatefulWidget> createState() {
    return _Demo18(title);
  }
}

class _Demo18 extends State<Demo18> {
  String title;

  _Demo18(this.title);

  double _value = 0.0;
  double _value2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
        elevation: 10.0,
      ),

     body: Center(
       child: Column(
         children: <Widget>[
           Slider(
               value: _value,
               min: 0.0,
               max: 100.0,
               activeColor: Colors.orange,
               inactiveColor: Colors.black26,
               divisions: 1000,
               onChanged: (double value){
                 setState(() {
                   _value = value;
                 });
               }
           ),
           SliderTheme(
             data: SliderTheme.of(context).copyWith(
                 activeTrackColor: const Color(0xff404080),
                  inactiveTrackColor: Colors.amber,
                 thumbShape: SliderComponentShape.noThumb,
             ),
             child: Slider(
                 value: _value2,
                 label: '$_value2',
                 onChanged: (value) {
                   setState(() {
                     _value2 = value;
                   });
                 }
             ),
           )
         ],
       ),
     ),

    );
  }
}
