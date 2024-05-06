import 'package:flutter/material.dart';
import 'package:open_market/core/router/app_router.dart';

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