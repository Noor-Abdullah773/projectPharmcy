import 'package:flutter/material.dart';

class AppTextForm extends StatelessWidget {
  const AppTextForm({
    Key? key,
    this.controller,
    this.hint,
    this.label,
    this.icon,
    required this.obscure,
    this.validation
  }) : super(key: key);

  final String? label, hint;
  final bool obscure;
  final Widget? icon;
  final TextEditingController? controller;
  final String? Function(String?)? validation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: obscure,
        controller: controller,
        validator: validation,
        textAlign: TextAlign.end,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          hintStyle: TextStyle(fontFamily: 'myfont'),
          suffixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
