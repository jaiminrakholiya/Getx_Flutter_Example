import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {

  const ScreenTwo({ name, super.key});

  @override
  State<ScreenTwo> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrren one' ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: TextButton(onPressed: () {
            // Navigator.pop(context);
            Get.back();
          }, child: Text('Go to back page'))),
        ],
      ),
    );
  }
}
