import 'package:doc_doc_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/text_styles.dart';

class AppTextFormFeild extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final bool isObscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final void Function()? onTap;

  const AppTextFormFeild({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.hintStyle,
    this.inputTextStyle,
    this.isObscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.fillColor,
    this.controller,
    this.validator,
    this.readOnly,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: fillColor ?? AppColors.formGray,
        filled: true,
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.lighterGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.mainBlue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        hintStyle: hintStyle ?? TextStyles.lightGray14Medium,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      readOnly: readOnly ?? false,
      obscureText: isObscureText,
      onTap: onTap,
      textInputAction: TextInputAction.next,
      style: inputTextStyle ??
          TextStyles.lightGray14Medium.copyWith(color: AppColors.darkBlue),
    );
  }
}
