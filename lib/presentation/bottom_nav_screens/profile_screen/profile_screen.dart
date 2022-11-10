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

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
    required this.id,
    required this.name,
    required this.image,
    required this.reviews,
    required this.network,
    required this.followers,
    required this.place,
    required this.foodietype,
    required this.following,
  });
  final String id;
  final String name;
  final String image;
  final String reviews;
  final String network;
  final String followers;
  final String place;
  final String foodietype;
  final String following;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Edit'),
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            const CircleAvatar(
              backgroundColor: Color(0xff173143),
              radius: 70,
            ),
            const SizedBox(height: 20),
            Text(
              widget.name,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
            ),
            const SizedBox(height: 5),
            Text(
              widget.place,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.borderGrey,
                  ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 2,
              color: AppColors.lightGrey,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Icon(Icons.person_outline),
                    const Text('Network'),
                    Text(widget.network)
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.star_border_outlined),
                    const Text('My Review'),
                    Text(widget.reviews)
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.emoji_events_outlined,
                      color: foodietypeColor(widget.foodietype),
                    ),
                    const Text('My Level'),
                    Text(
                      (widget.foodietype == '1')
                          ? 'Diamond'
                          : (widget.foodietype == '2')
                              ? 'Gold'
                              : (widget.foodietype == '3' ? 'Silver' : 'None'),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 2,
              color: AppColors.lightGrey,
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: profileOptionList.length,
              itemBuilder: (context, index) {
                return ProfileOptions(index: index);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Color foodietypeColor(String? foodietype) {
  return (foodietype == '1')
      ? AppColors.primaryGreen
      : (foodietype == '2')
          ? Colors.lightGreen
          : (foodietype == '3')
              ? Colors.lightBlue
              : AppColors.borderGrey;
}

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
