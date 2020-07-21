import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sito_portfolio/main.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'homepage.dart';

class InformaticaCV extends StatelessWidget {
  const InformaticaCV({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double left = .2;
    double right = .8;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Esperienze e progetti formativi',
                        textScaleFactor: 2.5,
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.center,
                        isFirst: true,
                        topLineStyle: LineStyle(color: primario),
                        bottomLineStyle: LineStyle(color: primario),
                        indicatorStyle: IndicatorStyle(
                            indicator: Center(child: Text('30/7/1994')),
                            drawGap: true,
                            width: 100),
                      ),
                      TimelineDivider(
                        begin: left,
                        end: .5,
                        thickness: 4,
                        color: primario,
                      ),
                      TimelineTile(
                          alignment: TimelineAlign.manual,
                          topLineStyle: LineStyle(color: primario),
                          lineX: left,
                          bottomLineStyle: LineStyle(color: primario),
                          indicatorStyle:
                              IndicatorStyle(color: primario, width: 25),
                          leftChild: Center(child: Text('2008 - 2013')),
                          rightChild: ContentWidget(testi: [
                            'Istituto tecnico settore tecnologico "J. F. Kennedy"',
                            'Diploma di perito Informatico, 80/100\n• Informatica,\n• Sistemi,\n• Inglese Tecnico,\n• Elettronica e telecomunicazioni',
                          ])),
                      CustomTimeLineDivider(),
                      TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineX: right,
                          topLineStyle: LineStyle(color: primario),
                          bottomLineStyle: LineStyle(color: primario),
                          indicatorStyle:
                              IndicatorStyle(color: primario, width: 25),
                          rightChild: Center(child: Text('Marzo 2013')),
                          leftChild: ContentWidget(
                            testi: [
                              'Stage curricolare presso Applika srl (PN)',
                              '• Creazione di un programma per la lettura automatica di test di gradimento sui corsi di sicurezza svolti dall\'azienda per i clienti.',
                              '• Creazione di fogli di calcolo (con Excel) per la memorizzazione dei dati ottenuti dal programma per la lettura dei test.'
                            ],
                            right: true,
                          )),
                      CustomTimeLineDivider(),
                      TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineX: left,
                          indicatorStyle:
                              IndicatorStyle(color: primario, width: 25),
                          bottomLineStyle: LineStyle(color: primario),
                          topLineStyle: LineStyle(color: primario),
                          leftChild: Center(child: Text('Luglio 2013')),
                          rightChild: ContentWidget(
                            testi: [
                              'Apprendistato presso Applika srl (PN)',
                              '• Miglioramento del programma sviluppato durante lo stage per la lettura automatica di test di gradimento sui corsi di sicurezza svolti dall\'azienda per i clienti.',
                              '• Riorganizzazione dei fogli di calcolo (Excel) per il monitoraggio delle fatture.'
                            ],
                          )),
                      CustomTimeLineDivider(),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineX: right,
                        bottomLineStyle: LineStyle(color: primario),
                        topLineStyle: LineStyle(color: primario),
                        indicatorStyle:
                            IndicatorStyle(color: primario, width: 25),
                        rightChild: Center(
                          child: Text('2018 - oggi'),
                        ),
                        leftChild: ContentWidget(
                          testi: [
                            'Università Ca\' Foscari Venezia',
                            'Laurea triennale in Scienze e Tecnologie Informatiche'
                          ],
                          right: true,
                        ),
                      ),
                      CustomTimeLineDivider(),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineX: left,
                        bottomLineStyle: LineStyle(color: primario),
                        topLineStyle: LineStyle(color: primario),
                        indicatorStyle:
                            IndicatorStyle(color: primario, width: 25),
                        leftChild: Center(
                          child: Text('2018 - oggi'),
                        ),
                        rightChild: Padding(
                          padding: const EdgeInsets.all(8.0)
                              .add(EdgeInsets.symmetric(vertical: 30)),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 400,
                              constraints: BoxConstraints.tightForFinite(
                                width: .6 * MediaQuery.of(context).size.width,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Principali progetti svolti',
                                    textScaleFactor: 1.5,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Progettazione di un database di gestione di un istituto penitenziario',
                                        textScaleFactor: 1.2,
                                      ),
                                      Text(
                                          'Il progetto è stato svolto come verifica delle competenze per un esame universitario. Lo scopo era di pensare uno scenario reale dove fosse necessario un database, individuare le componenti fondamentali e da li sviluppare la struttura e proporre alcuni esempi di interazione col database.'),
                                      RaisedButton(
                                        onPressed: () {
                                          window.open(
                                              'https://github.com/pierabragaggia/progettobasi',
                                              '');
                                        },
                                        child: Text(
                                            'Premi qui per vederne i dettagli'),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Progettazione e sviluppo di un\'app Android per il controllo di una stampante realizzata con Lego Mindstorm®',
                                          textScaleFactor: 1.2,
                                        ),
                                        Text(
                                            'Il progetto è stato svolto come esame universitario. L\'obiettivo era di ideare, progettare e sviluppare un robot con Lego Mindstorm e un\'applicazione Android per il suo utilizzo.'),
                                        RaisedButton(
                                          onPressed: () {
                                            window.open(
                                                'https://github.com/pierabragaggia/progettoSWE',
                                                '');
                                          },
                                          child: Text(
                                              'Premi qui per vederne i dettagli'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sviluppo di una semplice macchina virtuale scritta in C',
                                          textScaleFactor: 1.2,
                                        ),
                                        Text(
                                            'Il progetto è stato svolto come esame universitario. L\'obiettivo era di ideare, progettare e sviluppare un robot con Lego Mindstorm e un\'applicazione Android per il suo utilizzo.'),
                                        RaisedButton(
                                          onPressed: () {
                                            window.open(
                                                'https://github.com/pierabragaggia/progettoC',
                                                '');
                                          },
                                          child: Text(
                                              'Premi qui per vederne i dettagli'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 1,
              left: 1,
              child: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () => Navigator.of(context).pop()),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({Key key, this.testi, this.right = false})
      : super(key: key);
  final List<String> testi;
  final bool right;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.all(8.0).add(EdgeInsets.symmetric(vertical: 30)),
      child: Align(
        alignment: right ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints.tightForFinite(
            width: .59 * MediaQuery.of(context).size.width,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:
                right ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: testi
                .asMap()
                .map((i, e) => MapEntry(
                    i,
                    i == 0
                        ? Text(
                            e,
                            textScaleFactor: 1.3,
                          )
                        : Expanded(
                            child: Text(
                            e,
                            textAlign: right ? TextAlign.right : TextAlign.left,
                          ))))
                .values
                .toList(),
          ),
        ),
      ),
    );
  }
}

class CustomTimeLineDivider extends TimelineDivider {
  @override
  Widget build(BuildContext context) {
    return TimelineDivider(
      color: primario,
      thickness: 4,
      begin: .2,
      end: .8,
    );
  }
}

class CustomTimelineTile extends TimelineTile {
  @override
  Widget build(BuildContext context) {
    return TimelineTile();
  }
}
