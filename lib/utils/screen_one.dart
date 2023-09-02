import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_tutorial/utils/screen_two.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo())); //normal way for next screen
              Get.to(ScreenTwo());

            }, child: Text('Go to Screen one')),
          )
        ],

      ),
    );
  }
}
