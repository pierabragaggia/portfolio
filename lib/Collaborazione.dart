import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sito_portfolio/main.dart';
import 'package:sito_portfolio/util.dart';

class Collaborazione extends StatelessWidget {
  const Collaborazione({Key key, this.title, this.testo, this.contenuto})
      : super(key: key);
  final String title;
  final String testo;
  final Widget contenuto;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) => isMedium(constraints)
          ? Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: primario,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(10),
              padding: const EdgeInsets.all(16.0),
              constraints:
                  BoxConstraints.tightForFinite(height: constraints.maxHeight * .6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      title,
                      style: TextStyle(
                          inherit: true, fontSize: 40, color: primario),
                    ),
                  ),
                  Center(
                    child: AutoSizeText(
                      testo,
                      style: TextStyle(
                        inherit: true,
                        fontSize: 24,
                      ),
                      minFontSize: 10,
                    ),
                  ),
                  Container(
                    child: contenuto,
                    constraints:
                        BoxConstraints.tightForFinite(height: constraints.maxHeight * .5),
                    //width: width * .3,
                  ),
                ],
              ),
            )
          : Container(
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
                          SizedBox(
                            height: 100,
                          ),
                          Center(
                            child: Text(
                              title,
                              style: TextStyle(
                                  inherit: true, fontSize: 40, color: primario),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Text(
                              testo,
                              style: TextStyle(
                                inherit: true,
                                fontSize: 24,
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
            ),
    );
  }
}
