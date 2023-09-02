
import 'package:get/get.dart';
import 'package:getx_tutorial/localization/localization_class.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>{
    'en_us':{
      'message':'What is your name',
      'name':'Kunal bhardwaj'

    },
    'hin_ind':{
      'message':'आपका क्या नाम है',
      'name':'कुणाल भारद्वाज'
    }

  };


}