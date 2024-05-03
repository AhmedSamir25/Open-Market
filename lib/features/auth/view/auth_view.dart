import 'package:flutter/material.dart';
import 'package:open_market/features/auth/view/widgets/head_body_text.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 70,),
              HeadBodyText(),
          ],
        ),
      ),
    );
  }
}