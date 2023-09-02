import 'package:flutter/material.dart';
import 'package:getx_tutorial/apiWithGetx/email_pass_controller.dart';
import 'package:get/get.dart';

 class LoginApi extends StatefulWidget {
   const LoginApi({Key? key}) : super(key: key);

   @override
   State<LoginApi> createState() => _LoginApiState();
 }

 class _LoginApiState extends State<LoginApi> {
   LogInController logInController=Get.put(LogInController());
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('LoginApi Example with getx'),
       ),
       body: Padding(
         padding: const EdgeInsets.only(left: 16.0,right: 16),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             TextField(
               controller:logInController.emailController.value,
               decoration: InputDecoration(
                 hintText: "Email"
               ),

             ),
             TextField(
               controller:logInController.passController.value,
               decoration: InputDecoration(
                   hintText: "Password"
               ),

             ),
             SizedBox(height: 50),
             Obx((){
               return InkWell(
                 onTap: (){

                   logInController.getApi();
                 },
                 child: logInController.isloading.value?CircularProgressIndicator():Container(
                   decoration: BoxDecoration(
                     color: Colors.grey,

                   ),
                   height: 45,
                   child: Center(
                     child: Text(
                         'Login'
                     ),
                   ),


                 ),
               );

             } )
           ],

         ),
       ),
     );
   }
 }
