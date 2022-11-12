import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookmarkTile extends StatelessWidget {
  const BookmarkTile({
    super.key,
    required this.id,
    required this.name,
    required this.image,
    required this.place,
    required this.starttime,
    required this.endtime,
    required this.rating,
    required this.type,
  });
  final String id;
  final String name;
  final String image;
  final String place;
  final String starttime;
  final String endtime;
  final String rating;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            visualDensity: const VisualDensity(vertical: 3),
            dense: true,
            contentPadding: const EdgeInsets.only(left: 10, right: 5),
            leading: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xff173143),
              ),
              child: SvgPicture.asset(image),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$starttime to $endtime',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.borderGrey,
                          ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: ((int.parse(id)).isOdd)
                            ? AppColors.primaryGreen
                            : AppColors.errorRed,
                        border: Border.all(
                          color: ((int.parse(id)).isOdd)
                              ? AppColors.primaryGreen
                              : AppColors.errorRed,
                          width: 0.1,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Text(
                        rating,
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColors.surfaceWhite,
                            ),
                      ),
                    ),
                  ],
                ),
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.iconBlack,
                        fontFamily: 'Quicksand',
                      ),
                )
              ],
            ),
            subtitle: Row(
              children: [
                Text(
                  place,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.borderGrey,
                      ),
                ),
                const Spacer(),
                const Icon(Icons.bookmark)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
