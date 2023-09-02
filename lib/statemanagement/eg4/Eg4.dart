import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/statemanagement/eg4/favourite_icon_controller.dart';

class Eg4 extends StatefulWidget {
  const Eg4({Key? key}) : super(key: key);

  @override
  State<Eg4> createState() => _Eg4State();
}

//with out statemanagement
// class _Eg4State extends State<Eg4> {
//   List<String> fruits = ['orange', 'apple', 'banana', 'mangoes'];
//   List<String> tempFriutList=[];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Example 4'),
//         ),
//         body: ListView.builder(
//             itemCount: fruits.length,
//             itemBuilder: (context, index) {
//               return Card(
//                 color: Colors.white,
//                 child: ListTile(
//                   onTap:(){
//                     if(tempFriutList.contains(fruits[index].toString())){
//                       tempFriutList.remove(fruits[index]);
//                     }else{
//                       tempFriutList.add(fruits[index]);
//                     }
//
//                     setState(() {
//
//                     });
//                   },
//                   title: Text(fruits[index].toString()) ,
//                   trailing: Icon( Icons.favorite ,
//                     color: tempFriutList.contains(fruits[index].toString()) ? Colors.red : Colors.white),
//                 ),
//               );
//
//         }));
//   }
// }



//with state management
class _Eg4State extends State<Eg4> {
FavouriteiconController controller=Get.put(FavouriteiconController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Example 4'),
        ),
        body: ListView.builder(
            itemCount: controller.fruits.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: ListTile(
                  onTap:(){

                    if(controller.tempFriutList.contains(controller.fruits[index])){
                      controller.removeList(controller.fruits[index]);
                    }else{
                      controller.addList(controller.fruits[index]);
                    }


                  },
                  title: Text(controller.fruits[index].toString()) ,
                  trailing:Obx(() => Icon( Icons.favorite ,
                      color: controller.tempFriutList.contains(controller.fruits[index].toString()) ? Colors.red : Colors.white),
                  ),)

              );

            }));
  }
}
