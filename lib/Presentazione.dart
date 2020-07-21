import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class Presentazione extends StatelessWidget {
  const Presentazione({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        /* Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          width: 100,
          height: 100,
        ), */
        CircleAvatar(
          child: ClipOval(
            child: Image.asset('assets/profile.jpg'),
          ),
          minRadius: 50,
          maxRadius: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Column(
            children: [
              Text(
                'Piera Bragaggia',
                style: TextStyle(fontSize: 36),
              ),
              Text(
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
                    url: 'https://www.instagram.com/pieradeglispiriti/',
                  ),
                  SocialIcon(
                    icon: 'youtube.png',
                    url: 'https://www.youtube.com/pieradeglispiriti',
                  ),
                  SocialIcon(
                    icon: 'pinterest.png',
                    url: 'https://www.pinterest.it/pieradeglispiriti/',
                  ),
                ],
              ),
              RaisedButton(
                child: Row(
                  children: [
                    Text('Curriculum Vitae '),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                onPressed: () => html.window.open('assets/cv.pdf', ''),
              ),
            ],
          ),
        ),
      ]),
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
