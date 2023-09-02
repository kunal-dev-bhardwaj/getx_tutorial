import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/statemanagement/eg5/image_picker_controller.dart';

class Eg5 extends StatefulWidget {
  const Eg5({Key? key}) : super(key: key);

  @override
  State<Eg5> createState() => _Eg5State();
}

class _Eg5State extends State<Eg5> {
  ImagePickerController controller=Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exapmple 5 Image picker'),
      ),
      body: Obx((){
        return Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: controller.imagePath.isNotEmpty?
                FileImage(File(controller.imagePath.toString())):null
                ,
              ),
              TextButton(onPressed: (){
                controller.getImage();

              }, child: Text('Pick Image'))
            ],
          ),
        );
      })
    );
  }
}
