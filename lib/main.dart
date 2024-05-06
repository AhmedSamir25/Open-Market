import 'package:flutter/material.dart';
import 'package:open_market/core/router/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:open_market/firebase_options.dart';
void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const OpenMarket());
}

class OpenMarket extends StatelessWidget {
  const OpenMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Open Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
    ),
      routerConfig: AppRouter.router,
    );
  }
}