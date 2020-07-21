import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:sito_portfolio/MouseCursor.dart';

class IGPost extends StatelessWidget {
  const IGPost({Key key, this.url, this.image, this.text, this.width = 300})
      : super(key: key);

  final String url;
  final String image;
  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: width),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: .9,
          child: MouseCursor(
            child: GestureDetector(
              onTap: () => url != null ? html.window.open(url, '') : null,
              child: Column(
                children: [
                  Image.asset(image),
                  if (text != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        text,
                        overflow: TextOverflow.fade,
                        style: TextStyle(fontSize: 27),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
