import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class Choice {
  final String title;
  final IconData  icon;
  const Choice({this.title,this.icon});
}

const List<Choice> choices = <Choice>[
  Choice(title: '自驾',icon: Icons.directions_bike),
  Choice(title: '汽车',icon: Icons.directions_car),
  Choice(title: '轮船',icon: Icons.directions_boat),
];


class _HomePageState extends State<HomePage> {

  Choice _selectChoice = choices[0];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.yellow,
          title: new Text('我是首页'),
          actions: <Widget>[
            IconButton(
              icon: Icon(choices[0].icon),
              onPressed: (){
                _select(choices[0]);
              },
            ),
            IconButton(
              icon: Icon(choices[1].icon),
              onPressed: (){
                _select(choices[1]);
              },
            ),
            PopupMenuButton<Choice>(
              onSelected: _select,
              itemBuilder: (BuildContext context){
                return choices.skip(2).map<PopupMenuItem<Choice>>((Choice choice){
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MyCardView(choice: _selectChoice) ,
        ),
      ),
    );
  }

  void _select(Choice choice){
    setState(() {
      _selectChoice  =  choice;
    });
  }
}

class MyCardView extends StatelessWidget {

  const MyCardView({Key key,this.choice}) : super(key:key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    return Card(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(choice.icon,size: 128.0,color: textStyle.color,),
            Text(choice.title,style: textStyle,),
          ],
        ),
      ),
    );
  }
}


class MyListView extends StatelessWidget {
  final List<String> items;

  MyListView({Key key,this.items});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (BuildContext context,int index) {
        return Container(
          height: 50,
          child: Center(
            child: Text('Entry ${items[index]}'),
          ),
        );
      },
      separatorBuilder: (BuildContext context,int index) => const Divider(),
    );
  }
}