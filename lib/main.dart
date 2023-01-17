import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          kPrimaryColor.value,
          const {
            50: kPrimaryColor,
            100: kPrimaryColor,
            200: kPrimaryColor,
            300: kPrimaryColor,
            500: kPrimaryColor,
            600: kPrimaryColor,
            700: kPrimaryColor,
            800: kPrimaryColor,
            900: kPrimaryColor,
          },
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => const HomePage(),
      },
      initialRoute: "/",
    );
  }
}
