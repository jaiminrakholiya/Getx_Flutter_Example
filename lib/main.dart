import 'package:flutter/material.dart';
import 'package:fluttre_getx_example/screen_one.dart';
import 'package:fluttre_getx_example/screen_two.dart';
import 'package:get/get.dart';
import 'home_screen.dart';
import 'home_screen_three.dart';
import 'home_second.dart';
import 'languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale('hi', 'IND'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreenThree(),

      //for the use to navigate to one page to anthor page using getx
      // getPages: [
      //   GetPage(name: '/', page: () =>HomeSecond()),
      //   GetPage(name: '/screenOne', page: () => ScreenOne(name: 'flutter',)),
      //   GetPage(name: '/screentwo', page: () =>ScreenTwo()),
      // ],
    );
  }
}

