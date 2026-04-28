import 'package:doc_doc_app/core/theme/app_colors.dart';
import 'package:doc_doc_app/core/theme/text_styles.dart';
import 'package:doc_doc_app/core/widgets/app_button.dart';
import 'package:doc_doc_app/core/widgets/app_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool obscureText = true;
  bool rememberMe = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.blue24Bold),
                SizedBox(height: 8.h),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.gray14Regular,
                ),
                SizedBox(height: 36.h),
                AppTextFormFeild(
                  controller: emailController,
                  hintText: 'Email',
                ),
                SizedBox(height: 16.h),
                AppTextFormFeild(
                  controller: passwordController,
                  hintText: 'Password',
                  isObscureText: obscureText,
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 9.w),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: AppColors.mainBlue,
                        side: BorderSide(
                          color: rememberMe
                              ? AppColors.mainBlue
                              : AppColors.lightGray,
                        ),
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value!;
                          });
                        },
                      ),
                      Text('Remember me', style: TextStyles.gray14Regular),
                      const Spacer(),
                      Text('Forgot Password?', style: TextStyles.blue12Regular),
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
                AppButton(
                  title: 'Login',
                  onTap: () {
                    //if (formKey.currentState!.validate()) {}
                  },
                ),
                SizedBox(height: 46.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyles.black12Regular,
                    ),
                    Text('Register', style: TextStyles.blue12Regular),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
