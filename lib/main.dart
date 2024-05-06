import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:open_market/firebase_options.dart';
import 'package:open_market/open_market_app.dart';
void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const OpenMarket());
}