import 'package:flutter/material.dart';
import 'package:sito_portfolio/Collaborazione.dart';
import 'package:sito_portfolio/IGPost.dart';
import 'package:sito_portfolio/homepage.dart';
import 'package:sito_portfolio/main.dart';
import 'package:universal_html/html.dart' as html;

class SocialPage extends StatefulWidget {
  const SocialPage({Key key}) : super(key: key);

  @override
  _SocialPageState createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  ScrollController _controller;
  OverlayEntry mouseHint = OverlayEntry(
      builder: (context) => Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'mouseHint.png',
                width: 75,
                height: 75,
              ),
            ),
          ));
  @override
  void initState() {
    _controller = ScrollController(initialScrollOffset: 0.0);
    _controller.addListener(() {
      if (_controller.offset > 10 && mouseHint != null) {
        mouseHint.remove();
        mouseHint = null;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .5;
    WidgetsBinding.instance
        .addPostFrameCallback((_) => Overlay.of(context).insert(mouseHint));

    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    color: primario,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'PIERADEGLISPIRITI',
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                letterSpacing: 30),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Bookinfluencer e content creator',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                letterSpacing: 5),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    //height: 400,
                    padding: EdgeInsets.symmetric(horizontal: width * .025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            child: ClipOval(
                              child: Image.asset('profiloIG.jpg'),
                            ),
                            minRadius: 50,
                            maxRadius: 170,
                          ),
                        ),
                        ChiSono()
                      ],
                    ),
                  ),
                  Container(
                    color: secondario.withOpacity(.7),
                    height: 170,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumberInfo(
                          value: '9,63 %',
                          description: 'engagement rate',
                        ),
                        NumberInfo(
                          value: '5100 +',
                          description: 'ig followers',
                        ),
                        NumberInfo(
                          value: '1100 +',
                          description: 'ig stories views',
                        ),
                        NumberInfo(
                          value: '18 - 34 anni',
                          description: '85% donne - 15% uomini',
                        )
                      ],
                    ),
                  ),
                  Collab(),
                  Contatti(),
                ],
              ),
            ),
            Positioned(
              top: 1,
              left: 1,
              child: IconButton(
                icon: Icon(Icons.home),
                onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                    (route) => true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChiSono extends StatelessWidget {
  const ChiSono({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'CHI SONO',
            style: TextStyle(color: primario, fontSize: 65),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200.0, top: 20),
            child: Text(
              'Mi chiamo Piera, in arte "piera degli spiriti", e sono una bookinfluencer e content creator. Mi è sempre piaciuto leggere e da tre anni condivido le mie letture su Instagram. Oltre ai libri condivido la mia passione per l\'uncinetto, per tematiche sociali e attualità.',
              softWrap: true,
              style: TextStyle(fontSize: 30),
            ),
          ),
          CosaFaccio(
            height: 150,
          )
        ],
      ),
    );
  }
}

class Demografica extends StatelessWidget {
  const Demografica({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 75),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '18 - 34 ANNI',
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '85% DONNE - 15% UOMINI',
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class Contatti extends StatelessWidget {
  const Contatti({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: secondario.withOpacity(.7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Contatti',
            style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                decoration: TextDecoration.underline),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'IG: ',
                    style: TextStyle(fontSize: 25),
                  ),
                  GestureDetector(
                    onTap: () => html.window.open(
                        'https://www.instagram.com/pieradeglispiriti/', ''),
                    child: Text(
                      '@pieradeglispiriti',
                      style: TextStyle(
                          decoration: TextDecoration.underline, fontSize: 30),
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () => html.window
                    .open('mailto:pieradeglispiriti.ig@gmail.com', ''),
                child: Text(
                  'pieradeglispirit.ig@gmail.com',
                  style: TextStyle(
                      decoration: TextDecoration.underline, fontSize: 30),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Collab extends StatelessWidget {
  const Collab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 200, vertical: 50),
      child: DefaultTextStyle(
        style: TextStyle(
          fontFamily: 'AmericanTypewriter',
          color: Colors.black,
          fontSize: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'COLLABORAZIONI',
              style: TextStyle(color: primario, fontSize: 65),
            ),
            Collaborazione(
              title: 'Bao Publishing',
              testo:
                  'Collaborazione in corso da diversi anni, coinvolta come partecipante in alcuni Blog Tour organizzati da Bao per promuovere alcuni titoli.\n\n In particolare: \n - Blog Tour di presentazione de “Il re bianco” di Davide Toffolo\n - Partecipazione all’iniziativa “Non sono libri (solo) per ragazze” con il libro “California Dreamin’” Pénélope Bagieu',
              contenuto: IGPost(
                image: 'assets/profile.jpg',
                text: 'testodiprova\nsdhalsdjh',
                url: 'https://www.instagram.com/tv/B4mrzSInVt4/',
              ),
            ),
            Container(
              height: 600,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: primario,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(10),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IGPost(
                    image: 'profile.jpg',
                    text: 'Feltrinelli Editore',
                    width: MediaQuery.of(context).size.width * .22,
                  ),
                  IGPost(
                    image: 'profile.jpg',
                    text: 'Add Editore',
                    width: MediaQuery.of(context).size.width * .22,
                  ),
                  IGPost(
                    image: 'profile.jpg',
                    text: 'Edizioni Clichy',
                    width: MediaQuery.of(context).size.width * .22,
                  ),
                ],
              ),
            ),
            /* Text(
              'Feltrinelli Editore, Add Editore, Bompiani, Edizioni Clichy, ...',
              style: TextStyle(inherit: true, fontSize: 24),
            ), */
            Text('e inoltre'),
            Collaborazione(
              title: 'DAME',
              testo:
                  'Collaborazione con il brand DAME per cui ho creato una video recensione del loro prodotto.',
              contenuto: GestureDetector(
                onTap: () => html.window
                    .open('https://www.instagram.com/tv/B4mrzSInVt4/', ''),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset('assets/dame.jpg'),
                    ),
                    Center(
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 90,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Collaborazione(
              title: 'LALALAB',
              testo:
                  'Collaborazione in corso con scambio di prodotti e con codice sconto affiliato.\nPromozione del brand con foto e storie sul mio profilo Instagram.',
              contenuto: Container(),
            ),
            Collaborazione(
              title: 'WE ARE KNITTERS',
              testo:
                  'Collaborazione in corso da un paio d’anni con scambio di prodotti.\nPromozione del brand attraverso un Giveaway di un kit per un maglia all’uncinetto.\nShowcase dei prodotti attraverso foto e dettagli condivisi sul profilo e nelle storie Instagram.',
              contenuto: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

class CosaFaccio extends StatelessWidget {
  const CosaFaccio({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: DefaultTextStyle(
        style: TextStyle(
          fontFamily: 'AmericanTypewriter',
          color: Colors.black,
          fontSize: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'COSA FACCIO',
              style: TextStyle(color: primario, fontSize: 65),
              /* style: TextStyle(
                  inherit: true,
                  decoration: TextDecoration.underline,
                  fontSize: 40,
                  color: primario), */
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 200),
              child: Text(
                'Creo contenuti originali (post, storie, video per IGTV o Youtube) per i miei canali social e per brand o case editrici con cui collaboro.',
                textAlign: TextAlign.left,
                style: TextStyle(height: 1.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberInfo extends StatelessWidget {
  const NumberInfo({Key key, this.value, this.description}) : super(key: key);
  final String value;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
                fontSize: 45,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            description.toUpperCase(),
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
