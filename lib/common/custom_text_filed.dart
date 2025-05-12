import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final bool isReadOnly;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final IconData? prefixIcon;
  void Function(String) onChanged;

  CustomTextField({
    Key? key,
    required this.onChanged,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
    this.isReadOnly = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      readOnly: isReadOnly,
      style: TextStyle(
        color: Colors.white
      ),
      onChanged: onChanged,
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.2)),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white.withOpacity(0.4)
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white.withOpacity(0.4)
              )
          ),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white.withOpacity(0.4)
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white.withOpacity(0.4)
              )
          )
      ),
    );
  }
}
