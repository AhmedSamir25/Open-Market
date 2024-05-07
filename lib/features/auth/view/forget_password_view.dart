import 'package:flutter/material.dart';
import 'package:open_market/core/function/email_valid.dart';
import 'package:open_market/core/theme/text_style.dart';
import 'package:open_market/features/auth/view/widgets/custom_text_field.dart';
import 'package:open_market/features/auth/view/widgets/material_button.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
   final emailConteoller = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: heightMedia * 0.09,
              ),
              Text(
                'Enter your email',
                style: StyleText.textStyle22,
              ),
              SizedBox(
                height: heightMedia * 0.02,
              ),
              CustomTextField(
                  labelText: 'Email',
                  validator: (email) => validateEmail(email!) ,
                  controller: emailConteoller,
                  prefixIcon: const Icon(Icons.email),
                  obscureText: false),
                SizedBox(
                height: heightMedia * 0.04,
              ),
                 CustomMaterialButton(
                  iconData: Icons.email,
                  textButton: 'Send link',
                  onPressed: (){},
                )
            ],
          ),
        ),
      ),
    );
  }
}
