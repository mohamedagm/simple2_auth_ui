import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.validator,
    this.picon,
    required this.sicon,
    this.visible,
    this.hintText,
  });
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final IconData sicon;
  final IconButton? picon;
  final bool? visible;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.right,
      obscureText: visible ?? false,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        hintText: hintText,
        prefixIcon: picon,
        suffixIcon: Icon(sicon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        //contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      ),
    );
  }
}
