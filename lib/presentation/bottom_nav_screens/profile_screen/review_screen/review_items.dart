import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';

class ReviewPageItems extends StatelessWidget {
  const ReviewPageItems({
    super.key,
    required this.items,
    required this.text,
  });

  final String items;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          items,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.borderGrey,
              ),
        )
      ],
    );
  }
}
