import 'package:flutter/material.dart';
import 'package:sito_portfolio/main.dart';

class Collaborazione extends StatelessWidget {
  const Collaborazione({Key key, this.title, this.testo, this.contenuto})
      : super(key: key);
  final String title;
  final String testo;
  final Widget contenuto;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: primario,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      padding: const EdgeInsets.all(16.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 600),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        inherit: true,
                        decoration: TextDecoration.underline,
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        testo,
                        style: TextStyle(
                          inherit: true,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: contenuto,
              width: width * .3,
            ),
          ],
        ),
      ),
    );
  }
}
