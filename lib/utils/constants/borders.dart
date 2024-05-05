import 'package:flutter/material.dart';
import 'package:recipes_app/utils/constants/app_colors.dart';

class Borders {
  Borders._();

  static OutlineInputBorder searchBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColors.borderColor),
    borderRadius: BorderRadius.circular(8),
  );
}
