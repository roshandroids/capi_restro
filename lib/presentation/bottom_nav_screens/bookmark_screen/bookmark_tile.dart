import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/bookmark_screen/json/bookmark_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookmarkTile extends StatelessWidget {
  const BookmarkTile({
    super.key,
    required this.bookmarklistdata,
  });
  final BookmarkListData bookmarklistdata;

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
              child: SvgPicture.asset(bookmarklistdata.image),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '${bookmarklistdata.starttime} to ${bookmarklistdata.endtime}',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.borderGrey,
                          ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: ((bookmarklistdata.id).isOdd)
                            ? AppColors.primaryGreen
                            : AppColors.errorRed,
                        border: Border.all(
                          color: ((bookmarklistdata.id).isOdd)
                              ? AppColors.primaryGreen
                              : AppColors.errorRed,
                          width: 0.1,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Text(
                        bookmarklistdata.rating ?? '',
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColors.surfaceWhite,
                            ),
                      ),
                    ),
                  ],
                ),
                Text(
                  bookmarklistdata.name,
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
                  bookmarklistdata.place ?? '',
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
