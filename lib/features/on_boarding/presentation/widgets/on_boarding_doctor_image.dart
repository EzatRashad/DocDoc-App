import 'package:doc_doc_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingDoctorImage extends StatelessWidget {
  const OnBoardingDoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/onboarding_opacity_bg.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
            ),
          ),
          child: Image.asset("assets/images/doctor.png"),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor\n Appointment App",
            textAlign: TextAlign.center,
            style: TextStyles.blue32Bold,
          ),
        ),
      ],
    );
  }
}
