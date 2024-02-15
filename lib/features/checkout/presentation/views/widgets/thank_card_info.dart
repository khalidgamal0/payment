import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ThankCardInfo extends StatelessWidget {
  const ThankCardInfo({
    super.key, required this.title, required this.date,
  });
  final String title,date;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            title,
            textAlign: TextAlign.center,
            style: Styles.style18
        ),
        Text(
            date,
            style: Styles.styleBold18

        )
      ],);
  }
}
