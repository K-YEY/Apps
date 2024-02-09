import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1F23),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16),
              child: const Text(
                'Hey,\nWelcome\nBack',
                style: TextStyle(
                    fontSize: 32, fontFamily: 'Guerrilla', color: Colors.white),
              ),
            ),
            Form(
                child: Column(
              children: [
                TextFormField(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
