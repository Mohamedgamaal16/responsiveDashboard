import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,  required this.hint});
  final String  hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: hint,
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          border: inputBorder(),
          enabledBorder: inputBorder(),
          focusedBorder: inputBorder()),
    );
  }

  OutlineInputBorder inputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xFFFAFAFA),
        ));
  }
}
