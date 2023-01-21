import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),
        Container(
          // temporary height
          // height: 500,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              )),
          child: Column(children: [
            //SearchWidget
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Pesquise aqui...'),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.camera_alt,
                  size: 27,
                  color: kPrimaryColor,
                ),
              ]),
            ),

            // categories
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                'Categorias',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
              ),
            ),

            //CategoriesWidget
            CategoriesWidget(),

            //Items
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                'Melhores preços',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            ),

            //ItemsWidget
            ItemsWidget(),
          ]),
        )
      ]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color: kPrimaryColor,
        items: [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(CupertinoIcons.cart_fill, size: 30, color: Colors.white),
          Icon(Icons.list, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
