import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx example'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('getx dilog'),
              subtitle: Text('simple example'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are you sure you want to delete this chat?',
                  confirm: TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Ok')),
                  cancel: TextButton(onPressed: (){}, child: Text('Cancel')),

                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('getx bottomsheet'),
              subtitle: Text('simple example'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                    child: Column(
                      spacing: 5,
                      children: [
                        ListTile(
                          title: Text('Light Theme'),
                          leading: Icon(Icons.light_mode),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          title: Text('Dark Theme'),
                          leading: Icon(Icons.dark_mode),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar('Getx example',
            'getx is the simple and best for new flutter devlopers',
            colorText: Colors.orange,
            backgroundColor: Colors.black,
        );
      }),
    );
  }
}
