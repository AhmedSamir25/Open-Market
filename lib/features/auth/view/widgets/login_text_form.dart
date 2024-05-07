import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_market/core/function/email_valid.dart';
import 'package:open_market/core/function/password_valid.dart';
import 'package:open_market/features/auth/view/widgets/custom_text_field.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  late bool showPassword;
  final emailConteoller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final passwordConteoller = TextEditingController();
  @override
  void initState() {
    showPassword = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    return Form(
       key: _formKey,
      child: Column(
        children: [
          CustomTextField(
            labelText: 'Email',
            controller: emailConteoller,
            validator: (emailConteoller) {
              validateEmail(emailConteoller.toString());
              return null;
            },
            prefixIcon: const Icon(Icons.email),
            obscureText: false,
          ),
          SizedBox(
            height: heightMedia * 0.025,
          ),
          CustomTextField(
            labelText: 'Password',
            controller: passwordConteoller,
            validator: (passwordConteoller) {
              validatePassword(passwordConteoller.toString());
              return null;
            },
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: showPassword
                    ? const Icon(Icons.remove_red_eye)
                    : const Icon(
                        FontAwesomeIcons.eyeSlash,
                      )),
            obscureText: showPassword,
          ),
        ],
      ),
    );
  }
}
