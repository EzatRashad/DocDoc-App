import 'package:doc_doc_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingHeader extends StatelessWidget {
  const OnBoardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/icons/logo.svg"),
        SizedBox(width: 8),
        Text("DocDoc", style: TextStyles.black24Bold),
      ],
    );
  }
}
