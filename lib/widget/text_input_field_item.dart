import 'package:flutter/material.dart';

class TextInputFieldItem extends StatelessWidget {
  const TextInputFieldItem(
      {super.key, required this.label, required this.onSaved});
  final String label;
  final void Function(String? newValue) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
