import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';

import '../widgets/widgets.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: ListView(children: [
        ItemAppBar(),
      ]),
    );
  }
}
