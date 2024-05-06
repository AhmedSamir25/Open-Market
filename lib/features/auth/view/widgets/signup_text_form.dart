import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_market/features/auth/view/widgets/custom_text_field.dart';

class SignupTextForm extends StatefulWidget {
  const SignupTextForm({super.key});

  @override
  State<SignupTextForm> createState() => _SignupTextFormState();
}

class _SignupTextFormState extends State<SignupTextForm> {
  late bool showPassword;
  @override
  void initState() {
    showPassword = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomTextField(
          labelText: 'Name',
          prefixIcon: Icon(Icons.person),
          obscureText: false,
        ),
        SizedBox(
          height: heightMedia * 0.025,
        ),
        const CustomTextField(
          labelText: 'Email',
          prefixIcon: Icon(Icons.email),
          obscureText: false,
        ),
        SizedBox(
          height: heightMedia * 0.025,
        ),
        CustomTextField(
          labelText: 'Password',
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
    );
  }
}