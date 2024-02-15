import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/thank_card_info.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 672,
      decoration: ShapeDecoration(
          color: const Color(0xFFD9D9D9),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
        child: Column(children: [
          const Text(
            'Thank you!',
            style: Styles.style25,
          ),
          Text('Your transaction was successful', style: Styles.style20),
          const SizedBox(
            height: 42,
          ),
          const ThankCardInfo(
            title: 'Date',
            date: '01/24/2023',
          ),
          const SizedBox(
            height: 20,
          ),
          const ThankCardInfo(
            title: 'Date',
            date: '01/24/2023',
          ),
          const SizedBox(
            height: 20,
          ),
          const ThankCardInfo(
            title: 'Date',
            date: '01/24/2023',
          ),
          const Divider(
            thickness: 2,
            height: 60,
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 305,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(children: [
                SvgPicture.asset('assets/images/master_card.svg'),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Credit Card',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Text(
                      'Mastercard **78',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.699999988079071),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                FontAwesomeIcons.barcode,
                size: 64,
              ),
              Container(
                alignment: Alignment.center,
                width: 113,
                height: 58,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'PAID',
                  style: Styles.style24.copyWith(color: Color(0xFF34A853)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: (70/ 2) - 29,
          ),
        ]),
      ),
    );
  }
}
