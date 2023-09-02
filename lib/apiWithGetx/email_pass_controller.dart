import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LogInController extends GetxController {
  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;
  RxBool isloading=false.obs;

  getApi() async {
    try {
      isloading.value=true;

      //if the api is in raw form
      // Map newData={
      //   "email": emailController.value.text,
      //   "password": passController.value.text
      // };
      // final response1 = await post(Uri.parse('https://reqres.in/api/login'),
      //     body:jsonEncode(newData),
      // );


      //if data is in xurl encoded
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {
            "email": emailController.value.text,
            "password": passController.value.text
          });

      final data = jsonDecode(response.body);
      print(response.statusCode.toString());
      print(data);
      if (response.statusCode == 200) {
        isloading.value=false;
        Get.snackbar('login successfully', '');
      } else {
        isloading.value=false;
        Get.snackbar('login failed', data['error']);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
