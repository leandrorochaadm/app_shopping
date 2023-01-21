import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';

import '../widgets/widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        CartAppbar(),
        Container(
          // temporary height
          height: 700,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )),
          child: SingleChildScrollView(
            child: Column(children: [
              CartItemSamples(),
              AddCouponCode(),
            ]),
          ),
        )
      ]),
    );
  }
}

class AddCouponCode extends StatelessWidget {
  const AddCouponCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      padding: EdgeInsets.all(10),
      child: Row(children: [
        Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Adicionar código do cupom',
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        )
      ]),
    );
  }
}
