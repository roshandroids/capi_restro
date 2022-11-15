import 'package:flutter/material.dart';

class FoodietypeName extends StatelessWidget {
  const FoodietypeName({
    super.key,
    required this.foodietype,
    this.styles,
    this.addtext = '',
  });

  final String foodietype;
  final TextStyle? styles;
  final String addtext;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${(foodietype == '1') ? 'Diamond' : (foodietype == '2') ? 'Gold' : (foodietype == '3' ? 'Silver' : 'None')}$addtext',
      style: styles,
    );
  }
}
