import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_bitton.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';
import '../thank_you_view.dart';
import 'custom_credit_card.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({Key? key}) : super(key: key);
  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            autoValidateMode: autoValidateMode,
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16,),
            child: Align(
                alignment: Alignment.bottomCenter,
                child
                : CustomButton(text: 'payment',
                  onTap: (){
                  if(formKey.currentState!.validate()){
                    return formKey.currentState!.save();
                  }
                  else{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ThankYouScreen(),));
                    autoValidateMode = AutovalidateMode.always;
                  }
                  },
                )),
          )
        ),
      ],
    );
  }
}
