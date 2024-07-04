import 'package:appointment_booking_app/problems_section_model.dart';
import 'package:flutter/material.dart';

List<Widget> buildProblemCards({
  required List<Map<String, dynamic>> problemsData,
  required int selectedProblem,
  required ValueChanged<int?> onChanged,
}) {
  return List.generate(problemsData.length, (i) {
    return Expanded(
      child: CustomProblemCard(
        problem: problemsData[i]['problem'],
        imagePath: problemsData[i]['imagePath'],
        index: problemsData[i]['index'],
        selectedProblem: selectedProblem,
        onChanged: onChanged,
      ),
    );
  });
}
