import 'package:flutter/material.dart';

class Demo7 extends StatefulWidget {
  String title;

  Demo7(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Demo7(title);
  }
}

class _Demo7 extends State<Demo7> {
  String title;

  _Demo7(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 400.0,
          decoration: BoxDecoration(border: Border.all()),
          // 清除约束
          child: UnconstrainedBox(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 30,
                maxHeight: 150,
                minWidth: 20,
                maxWidth: 150,
              ),
              child: Container(
                width: 190.0,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient:
                      LinearGradient(colors: [Colors.blue, Colors.purple]),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('assets/images/icon_image1.png')
                        )
                    ),
                    position: DecorationPosition.background,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
