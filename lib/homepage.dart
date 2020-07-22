import 'package:flutter/material.dart';
import 'package:sito_portfolio/Presentazione.dart';
import 'package:sito_portfolio/VaiA.dart';
import 'package:sito_portfolio/util.dart';

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
          LayoutBuilder(
            builder: (context, constraints) => isMedium(constraints)
                ? SingleChildScrollView(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Presentazione(),
                            VaiA(),
                          ],
                        ),
                      ),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Presentazione(),
                      VaiA(),
                    ],
                  ),
          )
        ],
      ),
    );
  }
}
