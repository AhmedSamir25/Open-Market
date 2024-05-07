import 'package:shared_preferences/shared_preferences.dart';
class SetUserId {

static late SharedPreferences prefs;

  static Future cacheInitialization()async{
    prefs = await SharedPreferences.getInstance();
  }

  setUserId( {required String userId})async{
   await prefs.setString('userID', userId);
 }  
    String getId(){
     var valueId = prefs.getString('userID');
     return valueId.toString();
  } 
}