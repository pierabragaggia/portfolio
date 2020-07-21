import 'package:flutter/material.dart';
import 'package:sito_portfolio/Presentazione.dart';
import 'package:sito_portfolio/VaiA.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 1,
            top: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  child: Text('About'),
                  onPressed: () => print('premuto'),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Presentazione(),
              VaiA(),
            ],
          )
        ],
      ),
    );
  }
}
