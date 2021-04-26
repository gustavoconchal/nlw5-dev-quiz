import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppButtonStyles {
  static final ButtonStyle buttonConfirm = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.darkGreen),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      side: MaterialStateProperty.all(BorderSide(color: AppColors.darkGreen)));

  static final ButtonStyle buttonSkip = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.white),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      side: MaterialStateProperty.all(BorderSide(color: AppColors.border)));
}
