import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_demo1/model/goods_list_model.dart';
import 'package:flutter_demo1/service/http_service.dart';

class GoodListPage extends StatefulWidget {

  @override
  _GoodListPageState createState() {
    // TODO: implement createState
    return _GoodListPageState();
  }
}

class _GoodListPageState extends State<GoodListPage> {
  GoodListModel goodListModel = GoodListModel([]);
  var scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getGoods();
  }

  void getGoods() async {
    var url = "http://192.168.1.103:3000/getDioData";
    var formData = {'shopId':'001'};
    await request(url,formData: formData).then((value){
      var data = json.decode(value.toString());
      print(data);
      setState(() {
        goodListModel = GoodListModel.fromJson(data);
      });
    });
  }

  Widget _listWidget(GoodModel goodModel) {

    return Container(
      padding: EdgeInsets.only(top: 5.0,bottom: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1.0,color: Colors.black12),
        ),

      ),
      child: Row(
         children: <Widget>[
           _goodImage(goodModel),
           SizedBox(
             width: 10.0,
           ),
           Column(
             children: <Widget>[
               _goodName(goodModel),
               _goodPrice(goodModel),
             ],
           )
         ],
      ),
    );
  }

  Widget _goodImage(GoodModel goodModel) {
    return Container(
      width: 150.0,
      height: 150.0,
      child: Image.network(goodModel.image),
    );
  }

  Widget _goodName(GoodModel goodModel) {
    return Container(
      width: 180.0,
      child: Text(
          goodModel.name,
         maxLines: 2,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      ),
      padding: EdgeInsets.all(5.0),
    );
  }

  Widget _goodPrice(GoodModel goodModel) {
    return Container(
      child: Text(goodModel.oriPrice.toString()),
      padding: EdgeInsets.all(5.0),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        controller: scrollController,
        itemCount: goodListModel.data.length,
        itemBuilder: (context,index){
          GoodModel goodModel = goodListModel.data[index];
          return  _listWidget(goodModel);
        },
      ),
    );
  }
}