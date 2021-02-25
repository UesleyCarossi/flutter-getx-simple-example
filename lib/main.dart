import 'package:flutter/material.dart';
import 'package:flutter_getx_simple_example/mycontroller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends GetWidget {
  final MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GetX<MyController>(
              builder: (_) => Text(_.num.toString()),
            ),
            Container(
              height: 300,
              width: 345,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () => controller.increment(),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    onPressed: () => controller.decrement(),
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}