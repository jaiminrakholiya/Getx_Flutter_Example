import 'package:flutter/material.dart';
import 'package:fluttre_getx_example/screen_one.dart';
import 'package:get/get.dart';

class HomeSecond extends StatefulWidget {
  const HomeSecond({super.key});

  @override
  State<HomeSecond> createState() => _HomeSecondState();
}

class _HomeSecondState extends State<HomeSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gext'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: TextButton(onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
            Get.to(ScreenOne(name: '  flutter',));
          }, child: Text('Go to next page'))),
        ],
      ),
    );
  }
}
