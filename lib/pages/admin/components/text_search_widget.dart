import 'package:flutter/material.dart';
import 'package:flutter_vscode_frikitec/ui/general/constants.dart';

class TextSearchwidget extends StatelessWidget {
  String labelText;
  IconData icon;
  String? hintText;

  TextSearchwidget({
    required this.labelText,
    required this.icon,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        labelStyle: const TextStyle(
          color: Colors.black38,
        ),
        floatingLabelStyle: const TextStyle(
          color: Colors.black54,
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(width: 1.0, color: primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(width: 1.0, color: primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(width: 3.0, color: Colors.red),
        ),
        suffixIcon: Icon(
          icon,
          color: Colors.black54,
        ),
      ),
    );
  }
}
