import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wegox/core/component/ce_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1F23),
      body: GestureDetector(
        onTap: () {
          // FocusScope.of(context).requestFocus(FocusNode()); // Alternative
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: const Text(
                  'Hey,\nWelcome\nBack',
                  style: TextStyle(
                      fontSize: 52,
                      fontFamily: 'Guerrilla',
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CTextForm(
                        label: 'Enter Email',
                        pIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.mail_outline,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CTextForm(
                        label: 'Enter Email',
                        pIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.mail_outline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
