

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/statemanagement/eg1/counter_controller.dart';

class Eg1 extends StatefulWidget {
  const Eg1({Key? key}) : super(key: key);

  @override
  State<Eg1> createState() => _Eg1State();
}
//with out statemanagemnt
// class _Eg1State extends State<Eg1> {
//   var counter=0;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text('Statemanagement eg1'),
//       ),
//       body: Center(
//         child: Text(counter.toString(),style: TextStyle(fontSize: 50,),),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           counter++;
//           setState(() {
//
//           });
//
//         },
//
//       ),
//     );
//   }
// }

//with statemanagemnt
class _Eg1State extends State<Eg1> {
  final CounterController controller=Get.put(CounterController());
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('rebuilt');
  }

  @override
  Widget build(BuildContext context) {
    print('rebuilt code');
    return  Scaffold(
      appBar: AppBar(
        title: Text('Statemanagement eg1'),
      ),
      body: Center(

        child: Obx((){
          print('rebuilt widget only');

          return Text(controller.counter.toString(),style: TextStyle(fontSize: 50,));


        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.counterIncrement();


        },

      ),
    );
  }
}
