import 'package:flutter/material.dart';

class Demo5 extends StatefulWidget {
  String title;

  Demo5(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo5(title);
  }
}

class _Demo5 extends State<Demo5> with SingleTickerProviderStateMixin {
  String title;

  _Demo5(this.title);
  ScrollController _scrollController;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _tabController = TabController(vsync: this, length: 6);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(title),
          centerTitle: true,
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: '科技',
              ),
              Tab(
                text: '体育',
              ),
              Tab(
                text: '新闻',
              ),
              Tab(
                text: '美女',
              ),
              Tab(
                text: '动物',
              ),
              Tab(
                text: '杀人',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Text('科技'),
            Text('体育'),
            Text('新闻'),
            Text('美女'),
            Text('动物'),
            Text('杀人'),
          ],
        ));
  }
}
