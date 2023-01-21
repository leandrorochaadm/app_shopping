import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
            size: 30,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Produto",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.favorite,
          size: 30,
          color: Colors.red,
        )
      ]),
    );
  }
}
