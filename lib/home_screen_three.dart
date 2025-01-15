import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenThree extends StatefulWidget {
  const HomeScreenThree({super.key});

  @override
  State<HomeScreenThree> createState() => _HomeScreenThreeState();
}

class _HomeScreenThreeState extends State<HomeScreenThree> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      appBar: AppBar(
        title: Text('getx'),
      ),
      // body: Column(
      //   children: [
      //     Container(
      //       height:height * .2,
      //       width: Get.width * .8,
      //       color: Colors.orange,
      //       child: Center(
      //         child: Text('Center'),
      //       ),
      //     ),
      //     Container(
      //       height:height * .2,
      //       width: Get.width * .8,
      //       color: Colors.green,
      //       child: Center(
      //         child: Text('Center'),
      //       ),
      //     ),
      //   ],
      // ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            spacing: 20,
            children: [
              OutlinedButton(onPressed: () {
                Get.updateLocale(Locale('en', 'US'));
              } , child: Text('English')),
              OutlinedButton(onPressed: () {
                Get.updateLocale(Locale('hi', 'IND'));
              } , child: Text('Hindi')),
            ],
          ),
        ],
      ),
    );
  }
}
