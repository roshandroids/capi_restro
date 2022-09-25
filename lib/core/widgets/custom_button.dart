import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
    this.btnColor,
    this.titleStyle,
    this.margin,
    this.padding,
    this.isLoading = false,
    this.width,
    this.borderRadius,
  });
  final String title;
  final VoidCallback? onTap;
  final Color? btnColor;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;
  final double? width;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        margin: margin,
        duration: const Duration(milliseconds: 600),
        alignment: Alignment.center,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
        width: width ?? size.width,
        decoration: BoxDecoration(
          color: btnColor ?? AppColors.surfaceWhite,
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 10,
              color: AppColors.borderGrey,
            ),
          ],
        ),
        child: isLoading
            ? const CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.surfaceWhite,
              )
            : Text(
                title,
                style: titleStyle ??
                    Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: AppColors.primaryGreen,
                          fontWeight: FontWeight.w600,
                        ),
              ),
      ),
    );
  }
}
