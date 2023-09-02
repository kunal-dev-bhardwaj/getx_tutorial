import 'package:flutter/material.dart';
import 'package:get/get.dart';

class getxDailog extends StatefulWidget {
  const getxDailog({Key? key}) : super(key: key);

  @override
  State<getxDailog> createState() => _getxDailogState();
}

class _getxDailogState extends State<getxDailog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx dailog'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Click here'),
              subtitle: Text('show dailog'),
              onTap: () {
                Get.defaultDialog(
                    title: 'Delete chat',
                    middleText: 'Are you sure you want to delete?',
                    confirm: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('ok')),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('cancel')));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Getx bottom sheet'),
              subtitle: Text('Getx bottom sheet will open'),
              onTap: () {
                Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                      ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text('light theme',style: TextStyle(color: Colors.black),),
                        onTap: (){
                          Get.changeTheme(ThemeData.light());
                          
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text('dark mode',style: TextStyle(color: Colors.black)),
                        onTap: (){
                          Get.changeTheme(ThemeData.dark());

                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
