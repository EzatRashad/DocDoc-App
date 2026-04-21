import 'package:doc_doc_app/features/on_boarding/presentation/widgets/on_boarding_button.dart';
import 'package:doc_doc_app/features/on_boarding/presentation/widgets/on_boarding_doctor_image.dart';
import 'package:doc_doc_app/features/on_boarding/presentation/widgets/on_boardinh_header.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 10),
          child: Column(
            children: [
              OnBoardingHeader(),

              const Spacer(flex: 2),

              OnBoardingDoctorImage(),

              const Spacer(flex: 1),

              OnBoardingButton(),

              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
