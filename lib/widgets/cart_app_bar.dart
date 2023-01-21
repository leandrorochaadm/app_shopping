import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: kPrimaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Carinho',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
