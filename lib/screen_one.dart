import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  final String name;
  const ScreenOne({ required this.name, super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrren one'+widget.name ),
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
