import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  // 根路径
  static String root = "/";

  static String FourPage = '/fourPage';

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context,Map<String,List<String>> parmas){
        print('error::: router not found');
      }
    );
  }
}