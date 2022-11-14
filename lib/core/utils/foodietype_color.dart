import 'package:capi_restro/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

Color foodietypeColor(String? foodietype) {
  return (foodietype == '1')
      ? AppColors.primaryGreen
      : (foodietype == '2')
          ? Colors.lightGreen
          : (foodietype == '3')
              ? Colors.lightBlue
              : AppColors.borderGrey;
}
