import 'package:flutter/material.dart';
import 'package:open_market/core/router/app_router.dart';

void main() {
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
      //  brightness: Brightness.dark,
       colorScheme:  const ColorScheme.dark()
      ),
      routerConfig: AppRouter.router,
    );
  }
}