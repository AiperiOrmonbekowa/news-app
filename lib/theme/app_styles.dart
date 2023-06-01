import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTextStyles {
  static const TextStyle appBar = TextStyle(
      fontFamily: 'PlayfairDisplay',
      fontSize: 22,
      color: AppColors.white,
      fontWeight: FontWeight.bold);

  static const TextStyle body = TextStyle(
      fontSize: 18,
      color: AppColors.white,
      fontWeight: FontWeight.bold,
      fontFamily: 'PlayfairDisplay');

  static const TextStyle time = TextStyle(
      color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w800);
}
