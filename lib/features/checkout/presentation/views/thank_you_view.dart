import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/thank_you_screen_body.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      appBar: buildAppBar(context,),
      body: const ThankYouScreenBody(),
    );
  }
}
