import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/json/country_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class LocationPickerScreen extends StatefulWidget {
  const LocationPickerScreen({super.key});

  @override
  State<LocationPickerScreen> createState() => _LocationPickerScreenState();
}

class _LocationPickerScreenState extends State<LocationPickerScreen> {
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surfaceWhite,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        titleSpacing: -10,
        backgroundColor: AppColors.surfaceWhite,
        leading: IconButton(
          // padding: const EdgeInsets.only(left: 15),
          splashColor: AppColors.transparent,
          focusColor: AppColors.transparent,
          highlightColor: AppColors.transparent,
          onPressed: () => context.go('/home'),
          icon: const Icon(
            Ionicons.arrow_back_sharp,
            color: AppColors.primaryGreen,
          ),
        ),
        title: Text(
          'User current location',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.iconBlack,
              ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              controller: _controller,
              hintText: 'Search the city…',
              hintStyle: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.borderGrey,
                  ),
            ),
            const SizedBox(height: 30),
            Text(
              'Recently visited countries',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
              color: AppColors.dividerColor,
            ),
            const SizedBox(height: 10),
            ListView.separated(
              shrinkWrap: true,
              itemCount: countryList.length,
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Divider(
                  thickness: 1,
                  color: AppColors.dividerColor,
                ),
              ),
              itemBuilder: (context, index) {
                return CountryTile(
                  countrylistdata: CountryListData.fromJson(countryList[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CountryTile extends StatelessWidget {
  const CountryTile({
    super.key,
    required this.countrylistdata,
  });
  final CountryListData countrylistdata;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/cityfoodsearchscreen'),
      child: Row(
        children: [
          SvgPicture.asset(countrylistdata.image),
          const SizedBox(width: 20),
          Text(
            countrylistdata.name,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right,
            color: AppColors.dividerColor,
          ),
        ],
      ),
    );
  }
}
