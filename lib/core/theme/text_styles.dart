import 'package:doc_doc_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle black24Bold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle blue32Bold = TextStyle(
    fontSize: 32,
    height: 1.2,
    fontWeight: FontWeight.bold,
    color: AppColors.mainBlue,
  );

  static TextStyle gray13Regular = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.normal,
    color: AppColors.gray,
  );
}
