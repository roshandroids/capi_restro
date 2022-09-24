import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.decoration,
    this.inputFormatters,
    this.autovalidateMode,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.onSaved,
    this.onEditingComplete,
    this.textInputAction,
    this.hintText,
    this.labelText,
    this.hintStyle,
    this.labelStyle,
    this.suffix,
    this.suffixIcon,
  });

  final TextEditingController controller;
  final InputDecoration? decoration;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final String? hintText;
  final String? labelText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final Widget? suffix;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: decoration ??
          InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle ??
                Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: AppColors.borderGrey, fontWeight: FontWeight.w600),
            labelText: labelText,
            labelStyle: labelStyle ??
                Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: AppColors.borderGrey, fontWeight: FontWeight.w600),
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightGrey)),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.errorRed,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.borderGrey,
              ),
            ),
            suffix: suffix,
            suffixIcon: suffixIcon,
          ),
      inputFormatters: inputFormatters,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: obscureText,
      validator: validator,
      onSaved: onSaved,
      onEditingComplete: onEditingComplete,
      textInputAction: textInputAction ?? TextInputAction.done,
    );
  }
}
