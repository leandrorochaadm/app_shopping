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
            ]),
          ),
        )
      ]),
    );
  }
}
