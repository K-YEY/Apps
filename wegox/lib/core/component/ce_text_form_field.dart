import 'package:flutter/material.dart';

class CTextForm extends StatelessWidget {
  final bool isPassword;
  final String label;
  final Widget? pIcon;
  final Widget? sIcon;
  final TextInputType? kT;

  const CTextForm({
    super.key,
    this.isPassword = false,
    required this.label,
    this.pIcon,
    this.kT,
    this.sIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: kT ?? TextInputType.none,
      obscureText: isPassword ? true : false,
      style: const TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        labelText: label,
        hintText: label,
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: const Color(0x0cffffff),
        focusColor: Colors.white,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        suffixIcon: sIcon ?? const SizedBox(),
        prefixIcon: sIcon ?? const SizedBox(),
        prefixIconColor: Colors.grey,
      ),
    );
  }
}
