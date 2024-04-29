import 'package:flutter/material.dart';

void main() {
  runApp(const OpenMarket());
}

class OpenMarket extends StatelessWidget {
  const OpenMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Market',
      theme: ThemeData(
      useMaterial3: true,
      ),
    );
  }
}