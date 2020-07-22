import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sito_portfolio/util.dart';
import 'package:universal_html/html.dart' as html;

class Presentazione extends StatelessWidget {
  const Presentazione({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => isMedium(constraints)
          ? Container(
              constraints: constraints,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: ClipOval(
                        child: Image.asset('profile.jpg'),
                      ),
                      minRadius: 50,
                      maxRadius: 70,
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: AutoSizeText(
                                'Piera Bragaggia',
                                style: TextStyle(fontSize: 36),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: AutoSizeText(
                                '- Studentessa, Content Creator -',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Row(
                              children: [
                                SocialIcon(
                                  icon: 'linkedin.png',
                                  url:
                                      'https://www.linkedin.com/in/piera-bragaggia-1227b51a9/',
                                ),
                                SocialIcon(
                                  icon: 'instagram.png',
                                  url:
                                      'https://www.instagram.com/pieradeglispiriti/',
                                ),
                                SocialIcon(
                                  icon: 'youtube.png',
                                  url:
                                      'https://www.youtube.com/pieradeglispiriti',
                                ),
                                SocialIcon(
                                  icon: 'pinterest.png',
                                  url:
                                      'https://www.pinterest.it/pieradeglispiriti/',
                                ),
                              ],
                            ),
                            RaisedButton(
                              child: Row(
                                children: [
                                  AutoSizeText('Curriculum Vitae '),
                                  Icon(Icons.arrow_forward_ios),
                                ],
                              ),
                              onPressed: () =>
                                  html.window.open('assets/cv.pdf', ''),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            )
          : Container(
              constraints: constraints,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('profile.jpg'),
                  ),
                  minRadius: 50,
                  maxRadius: 125,
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Column(
                      children: [
                        AutoSizeText(
                          'Piera Bragaggia',
                          style: TextStyle(fontSize: 36),
                        ),
                        AutoSizeText(
                          '- Studentessa, Content Creator -',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [
                            SocialIcon(
                              icon: 'linkedin.png',
                              url:
                                  'https://www.linkedin.com/in/piera-bragaggia-1227b51a9/',
                            ),
                            SocialIcon(
                              icon: 'instagram.png',
                              url:
                                  'https://www.instagram.com/pieradeglispiriti/',
                            ),
                            SocialIcon(
                              icon: 'youtube.png',
                              url: 'https://www.youtube.com/pieradeglispiriti',
                            ),
                            SocialIcon(
                              icon: 'pinterest.png',
                              url:
                                  'https://www.pinterest.it/pieradeglispiriti/',
                            ),
                          ],
                        ),
                        RaisedButton(
                          child: Row(
                            children: [
                              AutoSizeText('Curriculum Vitae '),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                          onPressed: () =>
                              html.window.open('assets/cv.pdf', ''),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({Key key, this.url, this.icon}) : super(key: key);
  final String url;
  final String icon;
  final double size = 35;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
          child: Container(
            width: size,
            height: size,
            child: Image.asset(
              icon,
            ),
          ),
          onTap: () {
            if (url != null) {
              _launchURLInWeb(url);
              return;
            }
          }),
    );
  }

  void _launchURLInWeb(String url) {
    html.window.open(url, '');
  }
}
