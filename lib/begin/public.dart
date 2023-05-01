// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Public extends StatelessWidget {
  const Public({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Public holidays and special days(Festivals)'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                publicIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              //lessonclass mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 10,
              ),
              Pub(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                'You can check the french name of the festivals you celebrate in your country by using  the translator in this app.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: ADDS(),
    );
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class Pub extends StatelessWidget {
  const Pub({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      textDirection: TextDirection.ltr,
      border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
      children: [
        TableRow(children: [
          SelectableText(
            'English',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SelectableText('French',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SelectableText('Pronunciation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center)
        ]),
        TableRow(children: [
          SelectableText('New Year\'s Day',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('Le jour de l\'an',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('luh zhoor duh ahn',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText(
            'Easter',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Pâques',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'pohk',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            "Labor Day ",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'La fête du travail',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'ah fet doo trav-eye',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Victory in Europe Day ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Le jour de la Victoire',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'luh zhoor duh lah veek-twahr',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Bastille Day',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '(Le 14 juillet',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'luh kah-tohrz jwee-yay',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'All Saints\' Day ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '(La Toussaint',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'lah too-san',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Christmas ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Noël',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' noh-EL',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Valentine\'s Day',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'La saint valentin',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'lah sahn vah-lahn-tan',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Boxing day',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Le lendemain de Noël ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'luh luhnduh-mahn duh noh-EL',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
      ],
    );
  }
}
//next number of the content mmmmmmmmmmmmmm

class ADDS extends StatefulWidget {
  const ADDS({super.key});

  @override
  State<ADDS> createState() => _ADDSState();
}

class _ADDSState extends State<ADDS> {
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    _initBannerAd();
  }

  _initBannerAd() {
    _bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: 'ca-app-pub-9379469464236253/2342859552',
        listener: BannerAdListener(
          onAdLoaded: (ad) {
            setState(() {
              _isAdLoaded = true;
            });
          },
          onAdFailedToLoad: (ad, error) {},
        ),
        request: AdRequest());
    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      child: _isAdLoaded
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(
              height: 50,
            ),
    );
  }
}
