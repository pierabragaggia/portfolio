import 'package:flutter/material.dart';
import 'package:sito_portfolio/VaiA.dart';
import 'package:sito_portfolio/homepage.dart';
import 'package:sito_portfolio/informatica.dart';
import 'package:sito_portfolio/social.dart';

void main() {
  runApp(MyApp());
}

final Color primario = Color.fromARGB(250, 153, 100, 77);
final Color secondario = Color.fromARGB(255, 142, 77, 56);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: Colors.white,
        backgroundColor: primario,
        buttonTheme: ButtonThemeData(
            buttonColor: primario,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(16),
            textTheme: ButtonTextTheme.accent),
        textTheme: Theme.of(context)
            .textTheme
            .apply(
              fontSizeDelta: 2,
              fontFamily: 'AmericanTypewriter',
            )
            .copyWith(
              bodyText1: TextStyle(
                color: secondario,
              ),
            ),
      ),
      home: MyHomePage(),
    );
  }
}
