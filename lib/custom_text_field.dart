import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;

  const CustomTextField({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF8F7FE),
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1E1A34).withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(5, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          labelText: label,
          labelStyle: const TextStyle(
              color: Color(0xff1E1A34),
              fontSize: 14,
              fontFamily: 'PoppinsRegular',
              fontWeight: FontWeight.w900,
              wordSpacing: double.minPositive),
        ),
      ),
    );
  }
}
