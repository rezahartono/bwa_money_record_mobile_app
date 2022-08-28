import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
  const CustomTextInput({super.key});

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  final _inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _inputController,
      
    );
  }
}
