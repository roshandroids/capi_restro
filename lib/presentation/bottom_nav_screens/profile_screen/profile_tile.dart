import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';

List<String> profileOptionList = [
  'Manage Payment Options',
  'Find Friends on Capi',
  'More Settings',
  'Sign Out',
];
List<IconData> icons = [
  Icons.check_box,
  Icons.person_add_alt_1_outlined,
  Icons.settings_outlined,
  Icons.logout_rounded
];

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({
    super.key,
    // required this.name,
    required this.index,
  });
  // final Object name;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          visualDensity: const VisualDensity(vertical: -4),
          dense: true,
          leading: Icon(
            icons[index],
          ),
          title: Text(
            profileOptionList[index],
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            thickness: 1,
            color: AppColors.lightGrey,
          ),
        ),
      ],
    );
  }
}
