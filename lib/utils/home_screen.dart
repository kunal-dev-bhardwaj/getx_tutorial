
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Getx tutorial'),
      ),
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar('kunal', 'Hi this is a snack bar',
        snackPosition: SnackPosition.BOTTOM,
          onTap: (snap){
          Get.bottomSheet(
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0,left: 10,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),
                  child: Column(
                    children: [
                      Text('Hi iam bottom sheet')
                    ],
                  ),

                ),
              ),
            )
          );
          }
        );



      },),

    );
  }
}
