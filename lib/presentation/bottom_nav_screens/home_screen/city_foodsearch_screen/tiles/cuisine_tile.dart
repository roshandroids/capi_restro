import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';

class CuisineTile extends StatelessWidget {
  const CuisineTile({
    super.key,
    required this.name,
    required this.color,
  });
  final String name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: Text(
        name,
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: AppColors.surfaceWhite,
            ),
      ),
    );
  }
}
