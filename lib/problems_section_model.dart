import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomProblemCard extends StatelessWidget {
  final String problem;
  final String imagePath;
  final int index;
  final int selectedProblem;
  final ValueChanged<int?> onChanged;

  const CustomProblemCard({
    Key? key,
    required this.problem,
    required this.imagePath,
    required this.index,
    required this.selectedProblem,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(index);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        width: 150, // Set a fixed width
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF5AE0AE),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/Rectangle.svg',
                        width: 40,
                        height: 80,
                      ),
                      SvgPicture.asset(imagePath, width: 30, height: 30),
                    ],
                  ),
                ),
                Radio<int>(
                  splashRadius: 20,
                  value: index,
                  groupValue: selectedProblem,
                  onChanged: onChanged,
                  activeColor: Color(0xff1E1A34),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              problem,
              style: const  TextStyle(
                fontFamily: 'PoppinsRegular',
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Color(0xff1E1A34)
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
