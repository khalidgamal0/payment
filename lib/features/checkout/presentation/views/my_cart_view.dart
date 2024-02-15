import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,title: 'My Cart'),
      body: const MyCartViewBody(),
    );
  }
}