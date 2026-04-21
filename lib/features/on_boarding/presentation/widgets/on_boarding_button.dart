import 'package:doc_doc_app/core/route/routes.dart';
import 'package:doc_doc_app/core/theme/text_styles.dart';
import 'package:doc_doc_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21),
      child: Column(
        children: [
          Text(
            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
            textAlign: TextAlign.center,
            style: TextStyles.gray13Regular,
          ),
          SizedBox(height: 25),
          AppButton(
            title: "Get Started",
            onTap: () {
              Navigator.pushNamed(context, Routes.loginView);
            },
          ),
        ],
      ),
    );
  }
}
