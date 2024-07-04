import 'package:appointment_booking_app/appbar_widget.dart';
import 'package:appointment_booking_app/curved_clipper.dart';
import 'package:appointment_booking_app/custom_button.dart';
import 'package:appointment_booking_app/custom_text_field.dart';
import 'package:appointment_booking_app/data/spealist_data.dart';
import 'package:appointment_booking_app/problem_data.dart';
import 'package:appointment_booking_app/problems_section.dart';
import 'package:appointment_booking_app/speacilist_section_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialistsScreen extends StatefulWidget {
  const SpecialistsScreen({super.key});

  @override
  State<SpecialistsScreen> createState() => _SpecialistsScreenState();
}

class _SpecialistsScreenState extends State<SpecialistsScreen> {
  int selectedProblem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const AppBarWidget(),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipPath(
                      clipper: CurvedClipper(),
                      child: Container(
                        color: const Color(0xFF6B5AE0),
                        height: 200,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            'Appointment Booking',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsSemiBold',
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 200),
                    Container(
                      height: 570,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFF5AE0AE),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: ProblemSection(
                        problemsData: problemsData,
                        selectedProblem: selectedProblem,
                        onChanged: (int? value) {
                          setState(() {
                            selectedProblem = value!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                    SpecialistSection(specialists: specialists),
                    const SizedBox(height: 46),
                    SvgPicture.asset(
                      'assets/address.svg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ],
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  right: 20,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: 450,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      color: const Color(0xfff8f7fe),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const CustomTextField(label: 'Enter Name'),
                          const CustomTextField(label: 'Choose Date & Time'),
                          const CustomTextField(label: 'Choose Problem'),
                          const CustomTextField(label: 'Choose Test'),
                          const CustomTextField(label: 'Choose Consultation'),
                          CustomButton(
                              onPressed: () {}, label: 'Book Appointment'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
