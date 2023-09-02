import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/statemanagement/eg2/opacity_controller.dart';

class Eg2 extends StatefulWidget {
  const Eg2({Key? key}) : super(key: key);

  @override
  State<Eg2> createState() => _Eg2State();
}

//without statemanagement
// class _Eg2State extends State<Eg2> {
//   double opacity = 0.4;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Statemanagement Eg2'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Container(
//               height: 200,
//               width: 200,
//               decoration: BoxDecoration(color: Colors.red.withOpacity(opacity)),
//             ),
//             Slider(
//                 value: opacity,
//                 onChanged: (value) {
//                   opacity = value;
//                   setState(() {
//
//                   });
//                 })
//           ],
//         ),
//       ),
//     );
//   }
// }

//with statemanagement
class _Eg2State extends State<Eg2> {
 OpacityController controller=Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statemanagement Eg2'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.red.withOpacity(controller.opacity.value)),
            ),),
            Obx(() =>
                Slider(
                    value: controller.opacity.value,
                    onChanged: (value) {
                      controller.setOpacity(value);

                    })

            )


          ],
        ),
      ),
    );
  }
}
