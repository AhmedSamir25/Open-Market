import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({super.key});

  @override
  Widget build(BuildContext context) {
    double widthMedia = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: () {},
      child: Container(
        width: widthMedia * 0.7,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 211, 53, 42),
            borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              const Icon(
                Icons.email,
                size: 35,
              ),
              SizedBox(
                width: widthMedia * 0.05,
              ),
              const Text(
                'Login In',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}