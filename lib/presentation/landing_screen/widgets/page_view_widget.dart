import 'dart:math' as math;
import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({
    super.key,
    required this.pageData,
    required this.offset,
  });
  final Map<String, String> pageData;
  final double offset;

  @override
  Widget build(BuildContext context) {
    final gauss = math.exp(-(math.pow(offset.abs() - 0.5, 2) / 0.08));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Transform.translate(
            offset: Offset(-32 * gauss * offset.sign, 0),
            child: SvgPicture.asset('${pageData['asset']}', fit: BoxFit.cover),
          ),
          const SizedBox(height: 30),
          Transform.translate(
            offset: Offset(8 * offset, 0),
            child: Text(
              '${pageData['title']}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: AppColors.surfaceWhite,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(height: 10),
          Transform.translate(
            offset: Offset(32 * offset, 0),
            child: Text(
              '${pageData['content']}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: AppColors.surfaceWhite,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
