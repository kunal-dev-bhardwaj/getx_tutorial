
import 'package:get/get.dart';

class SwitchController extends GetxController{
  RxBool notification=false.obs;

  notificationChange(bool value){
    notification.value=value;

  }



}