import 'package:flutter/material.dart';

class Demo15 extends StatefulWidget {
  String title;

  Demo15(this.title);

  @override
  State<StatefulWidget> createState() {
    return _Demo15(title);
  }
}

class _Demo15 extends State<Demo15> {
  String title;

  _Demo15(this.title);
  DateTime _date = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != _date)
      print("data selectied :${_date.toString()}");
    setState(() {
      _date = picked;
    });

    if (picked == null) _date = DateTime.now();
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked =
    await showTimePicker(context: context, initialTime: _time);
    if (picked != null && picked != _time)
      print("data selectied :${_time.toString()}");
    setState(() {
      _time = picked;
    });
    if (picked == null) _time =  TimeOfDay.now();
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
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('日期选择'),
              onPressed: () {
                _selectDate(context);
              },
            ),
            RaisedButton(
              child: Text('时间选择'),
              onPressed: () {
                _selectTime(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
