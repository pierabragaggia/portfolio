import 'package:flutter/material.dart';
import 'package:sito_portfolio/informatica.dart';
import 'package:sito_portfolio/social.dart';
import 'package:sito_portfolio/main.dart';
import 'package:sito_portfolio/util.dart';

class VaiA extends StatelessWidget {
  const VaiA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => isMedium(constraints)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  constraints: BoxConstraints(minHeight: 10, maxHeight: 30),
                ),
                FittedBox(
                  child: Bottone(
                    child: Informatica(),
                    childHover: Informatica(
                      hover: true,
                    ),
                    goTo: InformaticaCV(),
                  ),
                ),
                FittedBox(
                  child: Bottone(
                    child: IgInfo(),
                    childHover: IgInfoHover(),
                    goTo: SocialPage(),
                  ),
                )
              ],
            )
          : Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Bottone(
                    child: Informatica(),
                    childHover: Informatica(
                      hover: true,
                    ),
                    goTo: InformaticaCV(),
                  ),
                  Bottone(
                    child: IgInfo(),
                    childHover: IgInfoHover(),
                    goTo: SocialPage(),
                  )
                ],
              ),
            ),
    );
  }
}

class Bottone extends StatefulWidget {
  final Widget child;
  final Widget childHover;
  final Widget goTo;

  const Bottone({Key key, this.child, this.goTo, this.childHover})
      : super(key: key);

  @override
  _BottoneState createState() => _BottoneState();
}

class _BottoneState extends State<Bottone> {
  bool hover = false;

  void _changeHover() => setState(() => hover = !hover);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => MouseRegion(
        onEnter: (_) => _changeHover(),
        onExit: (_) => _changeHover(),
        child: GestureDetector(
          onTap: () => widget.goTo != null
              ? Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => widget.goTo))
              : null,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primario,
                ),
                width: isMedium(constraints) ? 300 : 470,
                height: isMedium(constraints) ? 300 : 470,
                child: Center(
                  child:
                      !hover ? widget.child : widget.childHover ?? widget.child,
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                width: isMedium(constraints) ? 290 : 460,
                height: isMedium(constraints) ? 290 : 460,
                decoration: BoxDecoration(
                    border: Border.all(width: 7, color: Colors.white),
                    shape: BoxShape.circle),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IgInfo extends StatelessWidget {
  const IgInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icona(
                img: 'profiloIG.jpg',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'pieradeglispiriti',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'ig2.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      Text(
                        'Content creator,',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        'Bookinfluencer',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IgInfoHover extends StatelessWidget {
  const IgInfoHover({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icona(img: 'profiloIG.jpg'),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'pieradeglispiriti',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Follower',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      '5123',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      'ER',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      '9,63 %',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Vedi il mio media kit',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Icona extends StatelessWidget {
  const Icona({Key key, this.img}) : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 3, color: Colors.blueGrey[100])),
      child: ClipOval(child: Image.asset(img)),
    );
  }
}

class Informatica extends StatelessWidget {
  const Informatica({Key key, this.hover = false}) : super(key: key);
  final bool hover;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icona(img: 'profiloCV.jpg'),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Text(
                  'Piera',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  padding: EdgeInsets.all(5),
                  child: Image.asset(
                    'unive.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      Text(
                        'Laureanda in',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        'Scienze Informatiche',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (hover)
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Leggi il mio curriculum',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
