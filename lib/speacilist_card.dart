import 'package:flutter/material.dart';

class SpecialistCard extends StatelessWidget {
  final String name;
  final String title;
  final String imageUrl;

  const SpecialistCard({
    super.key,
    required this.name,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF8F7FE),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  imageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                name,
                style: const TextStyle(
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(title,
                style: TextStyle(
                  fontFamily: 'PoppinsRegular',
                  fontSize: 10,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -25,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6B5AE0),
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text('Book'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}