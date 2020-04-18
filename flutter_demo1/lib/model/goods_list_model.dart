class GoodModel {
  // 商品图片
  String image;
  // 原价
  double oriPrice;
  //
  double presentPrice;
  // 商品名称
  String name;
  // 商品ID
  String goodsId;

  GoodModel({this.image,this.oriPrice,this.presentPrice,this.name,this.goodsId});

  // 通过传入的json 转换成数据模型

  GoodModel.fromJson(Map<String,dynamic> json) {
    image = json['image'];
    oriPrice = json['oriPrice'];
    presentPrice = json['presentPrice'];
    name = json['name'];
    goodsId = json['goodsId'];
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = Map<String,dynamic>();
    data['image'] = this.image;
    data['oriPrice'] = this.oriPrice;
    data['presentPrice'] = this.presentPrice;
    data['name'] = this.name;
    data['goodsId'] = this.goodsId;
    return data;
  }
}

class GoodListModel {
  String code;
  String message;
  List<GoodModel> data;

  GoodListModel(this.data);

  // 通过传入的json 转换成数据模型

  GoodListModel.fromJson(Map<String,dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = List<GoodModel>();
      json['data'].forEach((v){
        data.add(GoodModel.fromJson(v));
      });
    }
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = Map<String,dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v)=>v.toJson()).toList();
    }

    return data;
  }
}