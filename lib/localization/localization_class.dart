import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localization_class extends StatefulWidget {
  const Localization_class({Key? key}) : super(key: key);

  @override
  State<Localization_class> createState() => _Localization_classState();
}

class _Localization_classState extends State<Localization_class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Localization')),
      body: Column(
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('en', 'us'));
                  },
                  child: Text('english')),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('hin', 'ind'));
                  },
                  child: Text('Hindi')),
            ],
          )
        ],
      ),
    );
  }
}
