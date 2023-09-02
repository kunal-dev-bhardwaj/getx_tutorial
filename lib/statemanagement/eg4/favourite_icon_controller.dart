
import 'package:get/get.dart';

class FavouriteiconController extends GetxController{
  RxList<String> fruits = ['orange', 'apple', 'banana', 'mangoes'].obs;
  RxList tempFriutList=[].obs; //string is remove because it is empty

 addList(String value){
   tempFriutList.add(value);

 }
 removeList(String value){
   tempFriutList.remove(value);
 }



}