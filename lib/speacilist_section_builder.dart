import 'package:appointment_booking_app/speacilist_card.dart';
import 'package:flutter/material.dart';

class SpecialistSection extends StatelessWidget {
  final List<Map<String, String>> specialists;

  const SpecialistSection({
    required this.specialists,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Our Specialists',
            style: TextStyle(
              fontFamily: 'PoppinsSemiBold',
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: specialists.map((specialist) {
              return SpecialistCard(
                name: specialist['name']!,
                title: specialist['title']!,
                imageUrl: specialist['image']!,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
