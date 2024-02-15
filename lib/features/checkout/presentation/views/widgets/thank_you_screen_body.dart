import 'package:flutter/material.dart';
import 'card_info_widget.dart';
import 'dashed_line.dart';

class ThankYouScreenBody extends StatelessWidget {
  const ThankYouScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CardInfoWidget(),
          Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFD9D9D9),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xff34A853),
                child: Icon(
                  Icons.check,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 80,
              left: -20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              bottom: 80,
              right: -20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
            bottom: 80 + 20,
            left: 20 + 8,
            right: 20 + 8,
            child: DashedLine(),
          ),
        ],
      ),
    );
  }
}
