import 'package:flutter/material.dart';
import 'problem_card_builder.dart';

class ProblemSection extends StatelessWidget {
  final List<Map<String, dynamic>> problemsData;
  final int selectedProblem;
  final ValueChanged<int?> onChanged;

  const ProblemSection({
    required this.problemsData,
    required this.selectedProblem,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 125),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Choose Problems',
            style: TextStyle(
              fontFamily: 'PoppinsSemiBold',
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: buildProblemCards(
                  problemsData: problemsData,
                  selectedProblem: selectedProblem,
                  onChanged: onChanged,
                ).sublist(0, 2),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: buildProblemCards(
                  problemsData: problemsData,
                  selectedProblem: selectedProblem,
                  onChanged: onChanged,
                ).sublist(2, 4),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
