import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({
    super.key,
    required this.pageData,
  });
  final Map<String, dynamic> pageData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          SvgPicture.asset(pageData['asset'], fit: BoxFit.cover),
          const SizedBox(height: 30),
          Text(
            pageData['title'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: AppColors.surfaceWhite, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            pageData['content'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: AppColors.surfaceWhite, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
