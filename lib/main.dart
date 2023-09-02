import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/apiWithGetx/LogInApi.dart';
import 'package:getx_tutorial/localization/languages.dart';
import 'package:getx_tutorial/localization/localization_class.dart';
import 'package:getx_tutorial/statemanagement/eg1/eg1.dart';
import 'package:getx_tutorial/statemanagement/eg2/eg2.dart';
import 'package:getx_tutorial/statemanagement/eg3/Eg3.dart';
import 'package:getx_tutorial/statemanagement/eg4/Eg4.dart';
import 'package:getx_tutorial/statemanagement/eg5/eg5_image_picker.dart';


void main() {
  runApp(const MyApp());
}
//without statemanagement
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: Locale('en','us'), //for localization
      translations: Languages(),
      fallbackLocale:Locale('en','us'),
      theme: ThemeData(
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginApi(),
    );
  }
}


