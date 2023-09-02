
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/statemanagement/eg3/switch_controller.dart';

class Eg3 extends StatefulWidget {
   const Eg3({Key? key}) : super(key: key);

   @override
   State<Eg3> createState() => _Eg3State();
 }
//without statemanagement
//  class _Eg3State extends State<Eg3> {
//   bool notification=false;
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Example 3'),
//        ),
//        body: Column(
//          children: [
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: [
//                  Text('Notification'),
//                  Switch(value: notification, onChanged: (value){
//                    notification=value;
//                    setState(() {
//
//                    });
//
//
//                  })
//                ],
//              ),
//            )
//          ],
//        ),
//
//      );
//    }
//  }

//with statemanagement

 class _Eg3State extends State<Eg3> {
  SwitchController controller=Get.put(SwitchController());
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Example 3'),
       ),
       body: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Notification'),
                 Obx(() =>
                     Switch(value: controller.notification.value, onChanged: (value){
                       controller.notificationChange(value);


                     })
                 )

               ],
             ),
           )
         ],
       ),

     );
   }
 }