// custom_button.dart
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF6B5AE0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        minimumSize: const Size(380, 60),
        elevation: 100,
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          fontFamily: 'PoppinsRegular',
          fontWeight: FontWeight.w900,
      ),),
    );
  }
}
