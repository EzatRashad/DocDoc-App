import 'package:doc_doc_app/core/route/routes.dart';
import 'package:doc_doc_app/core/widgets/app_button.dart';
import 'package:doc_doc_app/features/on_boarding/presentation/widgets/on_boarding_doctor_image.dart';
import 'package:doc_doc_app/features/on_boarding/presentation/widgets/on_boardinh_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child: ListView(
            children: [
              OnBoardingHeader(),
              SizedBox(height: 30.h),
              OnBoardingDoctorImage(),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: AppButton(
                  title: "Get Started",
                  onTap: () {
                    Navigator.pushNamed(context, Routes.loginView);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
